import 'package:flutter/material.dart';
import 'package:covid_alarm/ordering.dart';
import 'package:covid_alarm/tutorial.dart';
import 'package:covid_alarm/main_icon.dart';
import 'package:covid_alarm/info.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _defultsetting() {
    setState(() {

    });
  }

  List _info = infoList;

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
            child: HomeAppBarInfo(
                distancingLevel: 3,
                startDate: "2021.10.01",
                endDate: "2021.10.17",
                today: 30.0
            ),
          ),
        ),
        actions: <Widget>[
          new IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tutorial()));
              },
              icon: Icon(Icons.help_outline)),
          new IconButton(
              onPressed: () async {
                bool isBack = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ordering()));
                if(isBack){
                  _update();
                }
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
            if(index == 0){ //사적모임
              return MainIconBox(index: 23);
            }
            else if(index == 1){ //행사집회
              return MainIconBox(index: 24);
            }
            else{
              return MainIconBox(index: index-2);
            }
          }),
        ),
      )
    );
  }
  void _update(){
    setState((){
      _info = infoList;
    });
  }



}
class MainIconBox extends StatelessWidget {
  final int index;
  const MainIconBox({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          //color: Colors.black26,
          child: SafeArea(
            child: MainIcon(
              title: infoList[index]['title'],
              icon: Icon(infoList[index]['iconURL']),
              time: infoList[index]['time'],
              color: Color(infoList[index]['color']),
            ),
          ),
        ),
        onTap:(){
          showDialog(
              context: context,
              builder: (BuildContext context){
                return DistancingInfoModal(
                  icon: infoList[index]['iconURL'],
                  title: infoList[index]['title'],
                  content: infoList[index]['info'],
                );
              }
          );
        }
    );
  }
}

class HomeAppBarInfo extends StatelessWidget {
  final int distancingLevel;
  final String startDate;
  final String endDate;
  final double today;

  const HomeAppBarInfo({
    Key? key,
    required this.distancingLevel,
    required this.startDate,
    required this.endDate,
    required this.today
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '거리두기 $distancingLevel단계',
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
        SizedBox(height: 5),
        Slider(
          value: today,
          min: 0.0,
          max: 100.0,
          label: '${today.round()}',
          onChanged: null,
        ),
      ],
    );
  }
}


class DistancingInfoModal extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;

  const DistancingInfoModal({
    Key? key,
    required this.icon,
    required this.title,
    required this.content
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        insetPadding: EdgeInsets.all(50),
        contentPadding: EdgeInsets.fromLTRB(30, 10, 30, 30),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
        ),
        title: Row(
            children:[
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xff14279b),
                    shape: BoxShape.circle
                ),
                child: Icon(icon, color: Colors.white, size: 20,),
              ),
              SizedBox(width: 10,),
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            ]
        ),
        content: SingleChildScrollView(
            child: Container(
              child: Text(content,
                style: TextStyle(letterSpacing: -1.0),
              ),
            )
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
