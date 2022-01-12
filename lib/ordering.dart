import 'package:flutter/material.dart';
import 'package:covid_alarm/model/GridItem.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';

final gridItem = {
  "list" : [
    {"image": "assets/images/1_restaurant.svg"},
    {"image": "assets/images/2_local_grocery_store.svg"},
    {"image": "assets/images/3_museum.svg"},
    {"image": "assets/images/4_attractions.svg"},
    {"image": "assets/images/5_movie.svg"},
    {"image": "assets/images/6_pcroom.png"},
    {"image": "assets/images/7_waterpark.png"},
    {"image": "assets/images/8_outsidesport.png"},
    {"image": "assets/images/9_library.png"},
    {"image": "assets/images/10_beer.png"},
    {"image": "assets/images/11_card.png"},
    {"image": "assets/images/12_horse.png"},
    {"image": "assets/images/13_insidesport.png"},
    {"image": "assets/images/14_hotel.png"},
    {"image": "assets/images/15_shower.png"},
    {"image": "assets/images/16_kidscafe.png"},
    {"image": "assets/images/17_sing.png"},
    {"image": "assets/images/18_sports.png"},
    {"image": "assets/images/19_massage.png"},
    {"image": "assets/images/20_teaching.png"},
    {"image": "assets/images/21_partyroom.png"},
    {"image": "assets/images/22_exhibition.png"},
    {"image": "assets/images/23_reading room.png"},
  ]
};
GridList? gridList;

class Ordering extends StatefulWidget {
  const Ordering({Key? key}) : super(key: key);

  @override
  _OrderingState createState() => _OrderingState();
}

class _OrderingState extends State<Ordering> {
  final data = List<int>.generate(50, (index) => index);

  @override
  Widget build(BuildContext context) {

    gridList = GridList.fromJson(gridItem);

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
            itemCount: 5,
            onReorder: (oldIndex, newIndex) {
              print("reorder: $oldIndex -> $newIndex");
              setState(() {
                print("reorder: $oldIndex -> $newIndex");
                setState(() {
                  final element = data.removeAt(oldIndex);
                  data.insert(newIndex, element);
                });
              });
            },
            dragWidgetBuilder: (index, child) {
              return Card(
                color: Colors.blue,
                child: Text(index.toString()),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              childAspectRatio: 1,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildItem(int index) {
    return Card(
      key: ValueKey(index),
      child: Image.asset(gridList!.list!.elementAt(index).image!,),
    );
  } //Text(data[index].toString()), Image(image:AssetImage('assets/images/1_cafe.png')),
}