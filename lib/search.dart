//import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:covid_alarm/home.dart';

// void main() {
//   runApp(SearchPage());
// }
//
// class SearchPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(70),
//           ),
//         ),
//         backgroundColor: Colors.indigo,
//         title: MyDropDown(),
//         titleSpacing: 30,
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(120),
//           child: Text(
//             '거리두기 3단계',
//             style: TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       //  backgroundColor: Colors.indigo,),
//       ),
//         body: Search()
//     );
//   }
// }
final List<String> spaceZero = <String>['식당/카페', '마트/백화점', '독서실/스터디카페', 'PC방', '노래연습장', '숙박시설', '학원', '오락실/멀티방', '파티룸', '목욕장업', '키즈카페', '마사지업소'];
final List<String> spaceOne = <String>['도서관', '영화관/공연장', '전시회/박람회', '박물관/미술관', '실내체육시설', '실외체육시설', '스포츠경기장'];
final List<String> spaceTwo = <String>['유흥시설', '경마장', '카지노'];
final List<String> spaceThree = <String>['놀이공원', '테마파크'];
final List<String> list = ['식당/카페', '마트/백화점', '독서실/스터디카페', 'PC방', '노래연습장', '숙박시설', '학원', '오락실/멀티방', '파티룸', '목욕장업', '키즈카페', '마사지업소',
  '도서관', '영화관/공연장', '전시회/박람회', '박물관/미술관', '실내체육시설', '실외체육시설', '스포츠경기장', '유흥시설', '경마장', '카지노', '놀이공원', '테마파크'];
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
          preferredSize: Size.fromHeight(40),
          child: Container(
            padding: EdgeInsets.only(top: 10, right: 110, bottom: 25),
            child: Text(
              '거리두기 3단계',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        //  backgroundColor: Colors.indigo,),
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          height: 500,
          width: double.infinity,
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
                /* padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 20,
                width: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFE5E5E5),
                ),*/
              ),
              ListTile(trailing:
              IconButton(
                padding: EdgeInsets.only(right: 220, bottom: 10),
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate:SearchFor(list));
                },
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
              //SizedBox(height: 25), //search & spaceZero
              Facilities(facility: '생활시설'),
              SizedBox(height: 8),
              VariousPlaces(spaceNumber: spaceZero),
              SizedBox(height: 25),
              Facilities(facility: '문화시설 / 체육시설'),
              SizedBox(height: 8),
              VariousPlaces(spaceNumber: spaceOne),
              SizedBox(height: 25),
              Facilities(facility: '위락시설'),
              SizedBox(height: 8),
              VariousPlaces(spaceNumber: spaceTwo),
              SizedBox(height: 25),
              Facilities(facility: '테마파크'),
              SizedBox(height: 8),
              VariousPlaces(spaceNumber: spaceThree),
              // SizedBox(height: 25),
              // SizedBox(height: 10),
            ],
          )),
    );
  }
}
class Facilities extends StatelessWidget {
  final String facility;
  const Facilities({
    Key? key,
    required this.facility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 25,
          child: Center(
            child: Text(
              facility,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff565656)),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFFE5E5E5),
          ),
        ),
      ],
    );
  }
}

class VariousPlaces extends StatelessWidget{
  final List<String> spaceNumber;
  const VariousPlaces({
    Key? key,
    required this.spaceNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
              itemCount: spaceNumber.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 18,
                    child: Center(
                      child: Text(
                        '${spaceNumber[index]}',
                        style:
                        TextStyle(fontSize: 10, color: Color(0xff565656)),
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
    );
  }
}

class SearchFor extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return
      IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      );
  }
  String selectedResult = "";

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Text(selectedResult),
      ),
    );
  }

  final List<String> listExample;
  SearchFor(this.listExample);
  //List<String> recentList = ["Text 4", "Text 3"];

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestionList = [];
    query.isEmpty
        ? suggestionList.addAll(listExample) //In the true case
        : suggestionList.addAll(listExample.where(// In the false case
          (element) => element.contains(query),
    ));

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            suggestionList[index],
          ),
          leading: query.isEmpty ? Icon(Icons.search) : SizedBox(),
          onTap: (){
            selectedResult = suggestionList[index];
            showResults(context);
          },
        );
      },
    );
  }
}