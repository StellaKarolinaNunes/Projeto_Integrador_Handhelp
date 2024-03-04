// import 'package:flutter/material.dart';
// import '../EscolhaAtendimentoWidget.dart';

// class PaginaTerceira extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
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
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.end,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => EscolhaAtendimentoWidget(),
//                   ),
//                 );
//               },
//               child: Stack(
//                 children: [
//                   Positioned(
//                     left: 84,
//                     top: 285,
//                     child: Container(
//                       width: 212,
//                       height: 280,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage("assets/images/logo_transpa.png"),
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 160,
//                     top: 678,
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.arrow_forward,
//                           color: Colors.black, // Cor da seta
//                           size: 18, // Tamanho da seta
//                         ),
//                         SizedBox(
//                           width: 93,
//                           child: Text(
//                             ' Created by',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 12,
//                               fontFamily: 'Autour One',
//                               fontWeight: FontWeight.w400,
//                               height: 0.12,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                     left: 167,
//                     top: 696,
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.arrow_forward,
//                           color: Color(0xFF309CFF), // Cor da seta
//                           size: 18, // Tamanho da seta
//                         ),
//                         SizedBox(
//                           width: 80,
//                           height: 20,
//                           child: Text(
//                             ' HandHelp',
//                             style: TextStyle(
//                               color: Color(0xFF309CFF),
//                               fontSize: 13,
//                               fontFamily: 'Autour One',
//                               fontWeight: FontWeight.w400,
//                               height: 0,
//                               letterSpacing: 0.23,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
