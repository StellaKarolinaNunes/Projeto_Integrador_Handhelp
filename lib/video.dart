import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(MaterialApp(
    home: CameraApp(camera: firstCamera),
  ));
}

class CameraApp extends StatefulWidget {
  final CameraDescription camera;

  const CameraApp({
    Key? key,
    required this.camera,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gravar Vídeo'),
      ),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            await _initializeControllerFuture;

// Substitua pelo caminho desejado
            // await _controller.startVideoRecording("/path/onde/salvar/video.mp4");

            // Aguarde alguns segundos (ou conforme necessário) antes de parar a gravação
            await Future.delayed(const Duration(seconds: 5));

            await _controller.stopVideoRecording();
            print('Vídeo gravado em: /path/onde/salvar/video.mp4');
          } catch (e) {
            print('Erro ao gravar o vídeo: $e');
          }
        },
        child: const Icon(Icons.camera),
      ),
    );
  }
}
