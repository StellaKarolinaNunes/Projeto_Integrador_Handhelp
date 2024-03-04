// import 'package:flutter/material.dart';
// import 'PaginaTerceira.dart';

// class PaginaSegundaria extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GestureDetector(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => PaginaTerceira(),
//             ),
//           );
//         },
//         child: Container(
//           width: 375,
//           height: 812,
//           clipBehavior: Clip.antiAlias,
//           decoration: ShapeDecoration(
//             color: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(40),
//             ),
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Stack(
//                 children: [
//                   Positioned(
//                     left: 63.50,
//                     top: 443.59,
//                     child: Text(
//                       'HandHelp',
//                       style: TextStyle(
//                         color: Color(0xFF309CFF),
//                         fontSize: 48,
//                         fontFamily: 'Autour One',
//                         fontWeight: FontWeight.w400,
//                         height: 0,
//                         letterSpacing: 0.23,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 141,
//                     top: 683,
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
//                     left: 148,
//                     top: 701,
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.arrow_forward,
//                           color: Colors.black, // Cor da seta
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
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
