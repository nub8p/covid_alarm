import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ClockIcon extends StatelessWidget {
  final String icon;
  final String title;
  final double time;
  const ClockIcon({
    Key? key,
    required this.icon,
    required this.title,
    required this.time
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      enableLoadingAnimation: true,
      animationDuration: 1000,
      axes: <RadialAxis>[
        RadialAxis(
            showFirstLabel: false,
            startAngle: 270,
            endAngle: 270,
            radiusFactor: 0.95, //반지름
            minimum: 0,
            maximum: 12,
            interval: 3,
            tickOffset: 0.04,
            labelOffset: 0.1,
            offsetUnit: GaugeSizeUnit.factor,
            minorTicksPerInterval: 20,
            minorTickStyle: const MinorTickStyle(
                length: 0.05, lengthUnit: GaugeSizeUnit.factor),
            majorTickStyle: const MajorTickStyle(
                length: 0.1, lengthUnit: GaugeSizeUnit.factor),
            pointers: <GaugePointer>[
              RangePointer(
                  color:  Colors.blueAccent,//const Color.fromRGBO(128, 94, 246, 1),
                  value: time,
                  cornerStyle: CornerStyle.bothCurve,
                  width: 0.075,
                  sizeUnit: GaugeSizeUnit.factor),
            ], ranges: <GaugeRange>[
          GaugeRange( startValue: 0, endValue: 50, color: Colors.grey),],
            annotations: <GaugeAnnotation>[

              GaugeAnnotation(
                  widget: Column(
                      mainAxisSize: MainAxisSize.min,
                      children :[
                        Image(image: AssetImage(icon), width: 38),
                        Text(title, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                      ]
                  ),
                  angle: 90)
            ]
        )
      ],
    );
  }
}



