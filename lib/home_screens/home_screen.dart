// import 'package:flutter/material.dart';
//
// import '../size_config.dart';
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context); // get screen size from devices
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             // when we provide size width or height we need to provide as percent(%)
//             height: setHeightSize(40), // %
//             width: setWidthSize(100), // %
//             color: Colors.orange,
//           ),
//           Container(
//             height: setHeightSize(7), // %
//             width: setWidthSize(100), // %
//             // find font size as pixels take SizeConfig.blockSizeHorizontal * value (5) example = 18
//             child: FlatButton(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Text(
//                 'Click Me!',
//                 style: TextStyle(fontSize: setWidthSize(5)),
//               ),
//               onPressed: () {},
//               color: Colors.blue,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
