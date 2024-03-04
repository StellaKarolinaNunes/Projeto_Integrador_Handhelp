// import 'package:flutter/material.dart';
// import 'package:handhelp/Widget/logo/PaginaSegundaria.dart';
// import '../EscolhaAtendimentoWidget.dart';

// class PaginaPrimaria extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//         width: 375,
//         height: 812,
//         clipBehavior: Clip.antiAlias,
//         decoration: ShapeDecoration(
//           color: Colors.white,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(40),
//           ),
//         ),
//         child: Stack(
//           alignment: Alignment.bottomRight, // Ajusta a posição do ícone
//           children: [
//             Positioned(
//               left: 16, // Define a posição horizontal do ícone
//               top: 16, // Define a posição vertical do ícone
//               child: Icon(
//                 Icons.arrow_forward,
//                 color: Colors.black,
//                 size: 18,
//               ),
//             ),
//             Column(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => PaginaSegundaria(),
//                       ),
//                     );
//                   },
//                 ),
//                 SizedBox(
//                   width: 93,
//                   child: Row(
//                     children: [
//                       Text(
//                         ' Created by',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 12,
//                           fontFamily: 'Autour One',
//                           fontWeight: FontWeight.w400,
//                           height: 0.12,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   width: 80,
//                   height: 20,
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => EscolhaAtendimentoWidget(),
//                         ),
//                       );
//                     },
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.arrow_forward,
//                           color: Color(0xFF309CFF),
//                           size: 18,
//                         ),
//                         Text(
//                           ' HandHelp',
//                           style: TextStyle(
//                             color: Color(0xFF309CFF),
//                             fontSize: 13,
//                             fontFamily: 'Autour One',
//                             fontWeight: FontWeight.w400,
//                             height: 0,
//                             letterSpacing: 0.23,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
