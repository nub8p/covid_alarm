
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class ConfirmedCase extends StatefulWidget {
  @override
  _ConfirmedCaseState createState() => _ConfirmedCaseState();
}

class _ConfirmedCaseState extends State<ConfirmedCase> {
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
                "전국 확진자 발생동향",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
              //SvgPicture.asset('assets/korea_1.svg')
              background: Container(
                padding: EdgeInsets.all(25),
                color: Colors.white70,
                child:SvgPicture.asset(
                "images/korea_2.svg",
                ),
            ),
          ),
          )
        ];
      },
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 100),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("사망 누적", style :TextStyle(fontSize: 16)),
                ),
                Container(
                  child: Row(
                    children: [
                      Text("5,838 ", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                      Text("명"),
                    ],
                  )
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("전일 대비 증감", style :TextStyle(fontSize: 14, color: Colors.blueAccent)),
                ),
                Container(
                    child: Row(
                      children: [
                        Text("+57", style :TextStyle(fontSize: 14, color: Colors.blueAccent)),
                      ],
                    )
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("재원 위중증", style :TextStyle(fontSize: 16)),
                ),
                Container(
                    child: Row(
                      children: [
                        Text("953 ", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        Text("명"),
                      ],
                    )
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("신규 입원", style :TextStyle(fontSize: 16)),
                ),
                Container(
                    child: Row(
                      children: [
                        Text("526 ", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        Text("명"),
                      ],
                    )
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("확진 누적", style :TextStyle(fontSize: 16)),
                ),
                Container(
                    child: Row(
                      children: [
                        Text("649,669 ", style :TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        Text("명"),
                      ],
                    )
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("전일 대비 증감", style :TextStyle(fontSize: 14, color: Colors.blueAccent)),
                ),
                Container(
                    child: Row(
                      children: [
                        Text("+4444", style :TextStyle(fontSize: 14, color: Colors.blueAccent)),
                      ],
                    )
                ),
              ],
            ),

          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nested(),
    );
  }
}