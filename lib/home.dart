import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 3;
  String startDate = '2021.10.01';
  String endDate = '2021.10.17';
  double today = 30;

  void _defultsetting() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {

    _defultsetting();

    return Scaffold(
      body: ClipPath(
        child: Container(
          padding: EdgeInsets.only(top: 10, left: 20),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.indigo
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MyDropDown(),
              Text(
                '거리두기 $level단계',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '현행 거리두기 시행 기간 : $startDate ~ $endDate',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              Slider(

                value: today,
                min: 0.0,
                max: 100.0,
                //divisions: divisions,
                //label: '${controller.sliderValue.round()}',
                onChanged: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDropDown extends StatefulWidget {
  const MyDropDown({Key? key}) : super(key: key);

  @override
  State<MyDropDown> createState() => _MyDrop();
}

class _MyDrop extends State<MyDropDown> {
  List<String> options = <String>['서울특별시', '대전광역시', '부산광역시'];
  String dropdownValue = '대전광역시';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownValue,
      underline: SizedBox(),
      icon: Icon(Icons.expand_more, color: Colors.white),
      style: const TextStyle(
          fontSize: 20,
          color: Colors.indigo
      ),
      selectedItemBuilder: (BuildContext context) {
        return options.map((String value) {
          return Text(
            dropdownValue,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),
          );
        }).toList();
      },
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
    );
  }
}
