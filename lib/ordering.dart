import 'package:flutter/material.dart';
import 'package:covid_alarm/model/GridItem.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';

final gridItem = {
  "list" : [
    {"image": "icons/경마장.png"},
    {"image": "icons/노래연습장.png"},
    {"image": "icons/놀이공원.png"},
    {"image": "icons/도서관.png"},
    {"image": "icons/독서실.png"},
    {"image": "icons/마사지업소.png"},
    {"image": "icons/마트백화점.png"},
    {"image": "icons/목욕장업.png"},
    {"image": "icons/박람회.png"},
    {"image": "icons/박물관.png"},
    {"image": "icons/숙박시설.png"},
    {"image": "icons/스포츠경기장.png"},
    {"image": "icons/식당카페.png"},
    {"image": "icons/실내체육시설.png"},
    {"image": "icons/실외체육시설.png"},
    {"image": "icons/영화관.png"},
    {"image": "icons/워터파크.png"},
    {"image": "icons/유흥시설.png"},
    {"image": "icons/카지노.png"},
    {"image": "icons/키즈카페.png"},
    {"image": "icons/파티룸.png"},
    {"image": "icons/피시방.png"},
    {"image": "icons/학원.png"},
  ]
};

class Ordering extends StatefulWidget {
  const Ordering({Key? key}) : super(key: key);
  @override
  _OrderingState createState() => _OrderingState();
}

List<String> gridList = [
  "icons/경마장.png",
  "icons/노래연습장o.png",
  "icons/놀이공원.png",
  "icons/도서관.png",
  "icons/독서실.png",
  "icons/마사지업소.png",
  "icons/마트백화점.png",
  "icons/목욕장업.png",
  "icons/박람회.png",
  "icons/박물관.png",
  "icons/숙박시설.png",
  "icons/스포츠경기장.png",
  "icons/식당카페.png",
  "icons/실내체육시설.png",
  "icons/실외체육시설.png",
  "icons/영화관.png",
  "icons/워터파크.png",
  "icons/유흥시설.png",
  "icons/카지노.png",
  "icons/키즈카페.png",
  "icons/파티룸.png",
  "icons/피시방.png",
  "icons/학원.png",
];

class _OrderingState extends State<Ordering> {
  //final data = List<int>.generate(50, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('아이콘 정렬하기'),
      ),

      // TODO: Add a grid view (102)
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Center(
            child: ReorderableGridView.builder(
              itemBuilder: (context, index) => buildItem(index),
              itemCount: 12,
              onReorder: (oldIndex, newIndex) {
                print("reorder: $oldIndex -> $newIndex");
                setState(() {
                  final element = gridList.removeAt(oldIndex);
                  gridList.insert(newIndex, element);
                });
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
            )
        ),
      ),
    );
  }

  Widget buildItem(int index) {
    // print(gridList.list!.elementAt(index).image!);
    final String imageUrl = gridList[index];
    return Card(
      key: ValueKey(imageUrl),
      child: Image.asset(imageUrl),
    );
  } //Text(data[index].toString()), Image(image:AssetImage('assets/images/1_cafe.png')),
}