import 'package:flutter/material.dart';
import 'package:covid_alarm/ordering.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 2;
  String startDate = '2021.10.01';
  String endDate = '2021.10.17';
  double today = 30;

  void _defultsetting() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    _defultsetting();

    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
          ),
        ),
        backgroundColor: Colors.indigo,
        title: MyDropDown(),
        titleSpacing: 30,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Container(
            padding: EdgeInsets.only(top: 0, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //MyDropDown(),
                Text(
                  '거리두기 $level단계',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '현행 거리두기 시행 기간 : $startDate ~ $endDate',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Slider(
                  value: today,
                  min: 0.0,
                  max: 100.0,
                  label: '${today.round()}',
                  onChanged: null,
                ),
              ],
            ),
          ),
        ),
        actions: <Widget>[
          new IconButton(onPressed: () => {}, icon: Icon(Icons.help_outline)),
          new IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ordering()));
              },
              icon: Icon(Icons.settings)),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        child: GridView.count(
          crossAxisCount: 2,
          //1 개의 행에 보여줄 item 개수
          childAspectRatio: 1 / 1,
          //item 의 가로 1, 세로 2 의 비율
          mainAxisSpacing: 10,
          //수평 Padding
          crossAxisSpacing: 10,
          //수직 Padding
          children: List.generate(25, (index) {
            //item 의 반목문 항목 형성
            return GestureDetector(
              child: Container(
                  color: Colors.lightGreen,
                  child: Text(' Item : $index')
              ),
              onTap:(){
                showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      title: Row(
                        children:[
                          Image(image: AssetImage("icons/식당카페.png"),
                            width: 50, height: 50, fit: BoxFit.contain,),
                          SizedBox(width: 10,),
                          Text("Item : $index"),
                        ]
                      ),
                      content: SingleChildScrollView(
                        child: Container(
                            child: Text("거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침 거리두기 지침"),
                        )
                      )
                    );
                  }
                );
              }
            );
          }),
        ),
      )
    );
  }
}

class MyDropDown extends StatefulWidget {
  const MyDropDown({Key? key}) : super(key: key);

  @override
  State<MyDropDown> createState() => _MyDrop();
}

class _MyDrop extends State<MyDropDown> {
  List<String> options = <String>['서울특별시', '대전광역시', '의정부시', '공주시', '아산시', '부산광역시'];
  String dropdownValue = '대전광역시';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownValue,
      underline: SizedBox(),
      icon: Icon(Icons.expand_more, color: Colors.white),
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      dropdownColor: Colors.indigoAccent,
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

