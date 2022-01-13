import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MainIcon extends StatelessWidget {
  final String title;
  final Widget icon;
  final double time;
  final Color color;

  const MainIcon({Key ? key, required this.title, required this.icon, required this.time, required this.color}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SfRadialGauge(
        enableLoadingAnimation: true,
        animationDuration: 1500,
        axes: <RadialAxis>[
          RadialAxis(
              showFirstLabel: false,
              startAngle: 270,
              endAngle: 270,
              radiusFactor: 1,
              maximum: 12,
              interval: 3,
              tickOffset: 0.1,
              labelOffset: 0.1,
              offsetUnit: GaugeSizeUnit.factor,
              minorTicksPerInterval: 20,
              //minorTickStyle: const MinorTickStyle(length: 0.05, lengthUnit: GaugeSizeUnit.factor),
              majorTickStyle: const MajorTickStyle(length: 0.1, lengthUnit: GaugeSizeUnit.factor),
              pointers: <GaugePointer>[
                RangePointer(
                    color:  color,//const Color.fromRGBO(128, 94, 246, 1),
                    value: time,
                    width: 0.15,
                    sizeUnit: GaugeSizeUnit.factor),
              ], ranges: <GaugeRange>[
            GaugeRange( startValue: 0, endValue: 50, color: Colors.white38),],
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                    widget: Column(
                        mainAxisSize: MainAxisSize.min,
                        children :[
                          Container(
                            margin: EdgeInsets.only(top:12),
                            child: icon,
                          ),
                          Text(title, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)),
                        ]
                    ),
                    angle: 90)
              ]
          )
        ],
      ),
    );
  }
}
