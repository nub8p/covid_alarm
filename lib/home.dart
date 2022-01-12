import 'package:flutter/material.dart';
import 'package:covid_alarm/ordering.dart';

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
      appBar: AppBar(
        title: Text('코로나 알리미'),
        actions: <Widget>[
          new IconButton(
              onPressed: () => {},
              icon: Icon(Icons.help_outline)
          ),
          new IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Ordering()
                ));
              },
              icon: Icon(Icons.settings)
          ),
        ],
      ),
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