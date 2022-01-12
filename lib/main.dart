import 'package:flutter/material.dart';
import 'package:covid_alarm/home.dart';
import 'package:covid_alarm/search.dart';
import 'package:covid_alarm/location.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(title: '코로나 알리미'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key?key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [Home(), Search(), Location()];
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            new IconButton(onPressed: () => {}, icon: Icon(Icons.help_outline)),
            new IconButton(onPressed: () => {}, icon: Icon(Icons.settings)),
          ],
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: _onTap,
            currentIndex: _currentIndex,
            items: [
              new BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('search'),
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.location_city),
                title: Text('location'),
              )
            ]));
  }
}