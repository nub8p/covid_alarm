import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';
import 'package:covid_alarm/info.dart';

class Ordering extends StatefulWidget {
  const Ordering({Key? key}) : super(key: key);
  @override
  _OrderingState createState() => _OrderingState();
}

class _OrderingState extends State<Ordering> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('아이콘 정렬하기'),
      ),

      // TODO: Add a grid view (102)
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Center(
            child: ReorderableGridView.builder(
              itemBuilder: (context, index) => buildItem(index),
              itemCount: 23,
              onReorder: (oldIndex, newIndex) {
                if (kDebugMode) {
                  print("reorder: $oldIndex -> $newIndex");
                }
                setState(() {
                  final element = infoList.removeAt(oldIndex);
                  infoList.insert(newIndex, element);
                });
              },

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
            )
        ),
      ),
    ),
        onWillPop: () => _onBackPressed(context),
    );
  }
  Future<bool> _onBackPressed(BuildContext context) async {
    Navigator.pop(context, true);
    return true;
  }

  Widget buildItem(int index) {
    return Card(
        key: ValueKey(infoList[index]['title']),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 30),
            child: Column (
                crossAxisAlignment: CrossAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Icon(infoList[index]['iconURL']),
                  Text(infoList[index]['title']),
                  //Image.asset(imageUrl),
                  //Text(txt.toString())
                ]
            )

        )
    );
  }
}