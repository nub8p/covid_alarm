import 'package:flutter/material.dart';

class ConfirmedCase extends StatefulWidget {
  @override
  _ConfirmedCaseState createState() => _ConfirmedCaseState();
}

class _ConfirmedCaseState extends State<ConfirmedCase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [

            const SliverAppBar(
              backgroundColor: Colors.amber,
              title: Text('^^'),
              pinned: true,
              expandedHeight: 500,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('SliverAppBar'),
                background: FlutterLogo(),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Card(
                    margin: const EdgeInsets.all(15),
                    child: Container(
                      color: Colors.blue,
                      height: 500,
                      alignment: Alignment.center,
                      child: Text(
                        "전국 거리두기",
                        style: const TextStyle(fontSize: 16),

                      ),
                    ),
                  );
                },
                childCount: 1, // 1000 list items
              ),
            ),
          ],
        ));
  }
}