import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _defultsetting() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {

    _defultsetting();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'main page',
            ),
          ],
        ),
      ),
    );
  }
}