//import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Search()
    );
  }
}
final List<String> spaceZero = <String>['식당/카페', '마트/백화점', '독서실/스터디카페', 'PC방', '노래연습장', '숙박시설', '학원', '오락실/멀티방', '파티룸', '목욕장업', '키즈카페', '마사지업소'];
final List<String> spaceOne = <String>['도서관', '영화관/공연장', '전시회/박람회', '박물관/미술관', '실내체육시설', '실외체육시설', '스포츠경기장'];
final List<String> spaceTwo = <String>['유흥시설', '경마장', '카지노'];
final List<String> spaceThree = <String>['놀이공원', '테마파크'];
/*
final List<String> spaceAll = <String>[
  '식당/카페', '마트/백화점', '독서실/스터디카페', 'PC방', '노래연습장', '숙박시설', '학원', '오락실/멀티방', '파티룸', '목욕장업', '키즈카페', '마사지업소',
  '도서관', '영화관/공연장', '전시회/박람회', '박물관/미술관', '실내체육시설', '실외체육시설', '스포츠경기장', '유흥시설', '경마장', '카지노', '놀이공원', '테마파크'];
*/

class Search extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          height: 500,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 1),
                  blurRadius: 4,
                  //color: kShadowcolor,
                )
              ]
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 20,
                width: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFE5E5E5),
                ),
              ),
                /*AutoCompleteTextField(
                controller: _suggestionTextFieldController,

                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.search, size: 11,),
                  hintText: "시설을 검색해보세요",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 8),
                ), optionsBuilder: (TextEditingValue textEditingValue) {  },
              ),*/
            SizedBox(height: 25), //search & spaceZero
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //padding: EdgeInsets.fromLTRB(10,0,0,0),
                  //alignment: Alignment.bottomLeft,
                  height: 25,
                  width: 60,
                  child: Center(child: Text('생활시설', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xff565656)), ),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFE5E5E5),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            new Row(
              children: <Widget>[
                Flexible(
                  child: SizedBox(
                    height: 20.0,
                    child: new ListView.separated(
                      //padding: const EdgeInsets.symmetric(horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      separatorBuilder: (BuildContext context, int index) =>
                      const Divider(thickness: 3),
                      itemCount: spaceZero.length,
                      itemBuilder: (BuildContext context, int index){
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            height: 18,
                            child: Center(child: Text('${spaceZero[index]}',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xff565656)
                              ),
                            ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFE5E5E5),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(height: 10),
          ],
        )
      ),
    );
  }
}

/*class _TextFieldAutoCompleteState extends State<TextFieldAuotoComplete>{
  var _suggestionTextFieldController = new TextEditingController();
  List spaceAll = [
    '식당/카페', '마트/백화점', '독서실/스터디카페', 'PC방', '노래연습장', '숙박시설', '학원', '오락실/멀티방', '파티룸', '목욕장업', '키즈카페', '마사지업소',
    '도서관', '영화관/공연장', '전시회/박람회', '박물관/미술관', '실내체육시설', '실외체육시설', '스포츠경기장', '유흥시설', '경마장', '카지노', '놀이공원', '테마파크'];

}*/
