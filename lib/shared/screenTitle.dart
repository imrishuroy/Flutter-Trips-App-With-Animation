// import 'package:flutter/material.dart';

// class ScreenTitle extends StatelessWidget {
//   final String text;

//   const ScreenTitle({Key key, this.text}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TweenAnimationBuilder(
//       child: Text(
//         text,
//         style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
//       ),
//       tween: Tween(begin: 0.0, end: 1.0),
//       duration: Duration(seconds: 2),
//       builder: (context, value, child) {
//         return Opacity(
//           opacity: value,
//           child: Padding(
//             padding: EdgeInsets.only(top: value * 20),
//             child: child,
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      curve: Curves.easeIn,
      child: Text(
        text,
        style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      tween: Tween(begin: 0.0, end: 1.0),
      duration: Duration(milliseconds: 500),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Padding(
            padding: EdgeInsets.only(top: value * 20),
            child: child,
          ),
        );
      },
    );
  }
}
