import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro/utils/constants/colors.dart';

import '../widgets/customshapes/myclipper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: Text(
          "pomodoro",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: secondaryColor,
              border: Border.all(
                  width: 0, color: secondaryColor), // Set border to invisible
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: secondaryColor,
                border: Border.all(
                    width: 0, color: secondaryColor), // Set border to invisible
              ),
              child: ClipPath(
                clipper: MyClipper(),
                child: Container(
                  color: darkBackground,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      // Add more children widgets here as needed
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings), label: "Settings"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chart_bar), label: "Stats")
        ],
      ),
    );
  }
}

// class AppBarPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint_1 = Paint()
//       ..color = const Color(0xffF57752)
//       ..style = PaintingStyle.fill;
//
//     Path path_1 = Path()
//       ..moveTo(0, 0)
//       ..lineTo(size.width * .08, 0.0)
//       ..cubicTo(
//           size.width * 0.04,
//           0.0, //x1,y1
//           0.0,
//           0.04, //x2,y2
//           0.0,
//           0.1 * size.width //x3,y3
//           );
//
//     Path path_2 = Path()
//       ..moveTo(size.width, 0)
//       ..lineTo(size.width * .92, 0.0)
//       ..cubicTo(
//           size.width * .96,
//           0.0, //x1,y1
//           size.width,
//           0.96, //x2,y2
//           size.width,
//           0.1 * size.width //x3,y3
//           );
//
//     Paint paint_2 = Paint()
//       ..color = const Color(0xffF57752)
//       ..strokeWidth = 1
//       ..style = PaintingStyle.stroke;
//
//     Path path_3 = Path()
//       ..moveTo(0, 0)
//       ..lineTo(size.width, 0);
//
//     canvas.drawPath(path_1, paint_1);
//     canvas.drawPath(path_2, paint_1);
//     canvas.drawPath(path_3, paint_2);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }

// ClipRect

// Stack(
//   children: [
//     Container(
//       color: Color(0xffF57752),
//       height: 400,
//     ),
//     ClipRRect(
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(50),
//         topRight: Radius.circular(50),
//       ),
//       child: Container(
//         color: Colors.white,
//         alignment: Alignment.center,
//         height: 400,
//         child: Text("Text Here"),
//       ),
//     ),
//   ],
// )

// Container(
//   color: const Color(0xffF57752),
//   height: 200,
// ),
// Expanded(
//   child: Container(
//     color: const Color(0xffF57752),
//     height: 400,
//     child: ClipPath(
//       clipper: MyClipper(),
//       child: Container(
//         color: Colors.white,
//         alignment: Alignment.center,
//         child: const Text("Text Here"),
//       ),
//     ),
//   ),
// ),
