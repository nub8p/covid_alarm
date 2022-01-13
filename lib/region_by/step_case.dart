import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class StepCase extends StatefulWidget {
  @override
  _StepCaseState createState() => _StepCaseState();
}

class _StepCaseState extends State<StepCase> {
  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 600,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "전국 거리두기",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
              background: Container(
                padding: EdgeInsets.all(40),
                color: Colors.white70,
                child:SvgPicture.asset(
                  "images/korea_1.svg",
                ),
              ),
            ),
          )
        ];
      },
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 5.0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.circle, color: Colors.redAccent,),
              minLeadingWidth: 5,
              title: Text('4단계', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              subtitle: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("수도권 3개 (서울, 인천, 경기)", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                    Text("강원 1개 (강릉시)", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  ],
                ),
              )
            ),
            ListTile(
                leading: Icon(Icons.circle, color: Colors.orange,),
                minLeadingWidth: 5,
                title: Text('3단계', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                subtitle: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("충청권 1개 (대전)", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      Text("호남권 1개 (여수시)", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      Text("경남권 7개 (부산, 김해시, 거제시, 함안군, 진주시, 창원시, 통영시)", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      Text("제주 1개 (제주)", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                    ],
                  ),
                )
            ),
            ListTile(
                leading: Icon(Icons.circle, color: Colors.amber,),
                minLeadingWidth: 5,
                title: Text('2단계', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                subtitle: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("수도권 2개 (강화군, 옹진군)", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      Text("충청권 3개 (세종, 충북, 충남)", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      Text("호남권 6개 (광주, 전남, 전주시, 군산시, 익산시, 완주군 혁신도시)", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      Text("경북권 1개 (대구)", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      Text("경남권 2개 (울산, 경남)", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      Text("강원 1개 (강원)", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                    ],
                  ),
                )
            ),
            ListTile(
                leading: Icon(Icons.circle, color: Colors.indigoAccent,),
                minLeadingWidth: 5,
                title: Text('1단계', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                subtitle: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("호남권 1개 (전북)", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      Text("경북권 1개 (경북)", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                    ],
                  ),
                )
            ),
          ],
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nested(),
    );
  }
}