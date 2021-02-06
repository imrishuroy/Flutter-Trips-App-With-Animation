import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  @override
  _SandBoxState createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        width: _width,
        color: _color,
        margin: EdgeInsets.all(_margin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  _margin = 60.0;
                });
              },
              child: Text('Animate Margin'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _color = Colors.yellow;
                });
              },
              child: Text('Animate Color'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _width = 400.0;
                });
              },
              child: Text('Animate Color'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _opacity = 0;
                });
              },
              child: Text('Animate Opacity'),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 2),
              child: Text('Hide Me'),
            )
          ],
        ),
      ),
    );
  }
}
