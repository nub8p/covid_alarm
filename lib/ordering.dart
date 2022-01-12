import 'package:flutter/material.dart';

class Ordering extends StatefulWidget {
  @override
  _OrderingState createState() => _OrderingState();
}

class _OrderingState extends State<Ordering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('아이콘 정렬하기'),
      ),
      body: const Center(
        child: Text(
          'ordering icons',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}