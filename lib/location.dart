import 'package:flutter/material.dart';
import 'package:covid_alarm/region_by/step_case.dart';
import 'package:covid_alarm/region_by/confirmed_case.dart';
class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
<<<<<<< HEAD

=======
  
>>>>>>> 310d53f2ba77a70f83cd74ea26bb66bb4d2c5bdc
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: '거리두기 단계',),
                Tab(text: '확진자 발생동향',),
              ],
            ),
            title: const Text('시도별 현황'),
          ),
          body: TabBarView(
              children: [
                new Container(
<<<<<<< HEAD
                    child: StepCase()
=======
                  child: StepCase()
>>>>>>> 310d53f2ba77a70f83cd74ea26bb66bb4d2c5bdc
                ),
                new Container(
                    child: ConfirmedCase()
                ),
              ]
          ),
        ),
      ),
    );
  }
}
