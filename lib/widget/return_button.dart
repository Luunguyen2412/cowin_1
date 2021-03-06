import 'package:flutter/material.dart';

// class ReturnButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 1.h),
//         child: Ink(
//             decoration: ShapeDecoration(
//               color: cwColor9,
//               shape: CircleBorder(),
//             ),
//             child: IconButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 icon: Icon(Icons.arrow_back_sharp))),
//       ),
//     );
//   }
// }

class ReturnButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            size: 32,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
