import 'package:flutter/material.dart';
import 'package:covid_alarm/ordering.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
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
              'search page',
            ),
          ],
        ),
      ),
    );
  }
}