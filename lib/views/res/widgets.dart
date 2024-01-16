// import 'dart:async';
// import 'package:adaptive_theme/adaptive_theme.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:test_data_gen/views/pages/output_page.dart';

// customeDialogee(
//   BuildContext context, {
//   final GestureTapCallback? onTap,
//   final List<Widget>? actions,
// }) {
//   return showDialog(
//       context: context,
//       builder: (context) {
//         Timer(
//           const Duration(seconds: 3),
//           () {
//             Navigator.pop(context);
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => ),
//             );
//           },
//         );
//         final sizeW = MediaQuery.of(context).size.width;
//         return AlertDialog(
//           scrollable: true,
//           actions: actions,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(36),
//           ),
//           content: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
//             alignment: Alignment.topCenter,
//             width: sizeW / 18,
//             child: FittedBox(
//               child: Column(
//                 children: [
//                   Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.all(42),
//                         decoration: BoxDecoration(
//                             color: AdaptiveTheme.of(context).brightness ==
//                                     Brightness.light
//                             ? const Color(0xFF5FC092)
//                             : const Color(0xFF1b211d),
//                             shape: BoxShape.circle),
//                       ),
//                       Icon(
//                         Icons.person,
//                         size: 50,
//                         color: AdaptiveTheme.of(context).brightness ==
//                                 Brightness.light
//                             ? const Color(0xFF1b211d)
//                             : const Color(0xFF5FC092),
//                       )
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   const Text(
//                     'Calculating!',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//                   ),
//                   const SizedBox(height: 15),
//                   SpinKitRing(
//                     size: 45,
//                     color:
//                         AdaptiveTheme.of(context).brightness == Brightness.light
//                             ? const Color(0xFF1b211d)
//                             : const Color(0xFF5FC092),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         );
//       });
// }
