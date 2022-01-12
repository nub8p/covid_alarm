import 'package:flutter/material.dart';

class Tutorial extends StatefulWidget {
  @override
  _Tutorial createState() => _Tutorial();
}

class _Tutorial extends State<Tutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('튜토리얼'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TutorialBox(
              title: "파란색 테두리는 무엇을 의미하나요?",
              content: "영업제한시간을 의미해요\n ->영업제한시간 : 오후 9시",
            ),
            TutorialBox(
              title: "아이콘 눌러서 상세정보 확인하기",
              content: "영업제한시간: 오후 9시\n이용가능대상: (미접종자 -1인\n단독허용)",
            ),
          ],
        ),
      ),
    );
  }
}

class TutorialBox extends StatelessWidget {
  final String title;
  final String content;
  const TutorialBox({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all( Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(Icons.help_outline),
              SizedBox(width: 10,),
              Text(title, style: TextStyle(fontWeight: FontWeight.bold,),),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Image(image: AssetImage("icons/식당카페.png")),
              SizedBox(width: 20),
              Text(content, softWrap: true,),
            ],
          ),
        ],
      ),
    );
  }
}
