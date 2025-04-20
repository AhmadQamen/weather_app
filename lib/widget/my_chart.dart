import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:weather/controller/HomeController.dart';

import 'package:weather/model/five_day.dart';

class MyChart extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 240,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          decoration: const BoxDecoration(
              gradient: SweepGradient(colors: [
            Color.fromARGB(243, 168, 206, 238),
            Color.fromARGB(241, 255, 255, 255),
            Color.fromARGB(223, 137, 195, 242),
          ])),
          child: SfCartesianChart(
            primaryXAxis: const CategoryAxis(),
            series: [
              SplineSeries<FiveDayData, String>(
                dataSource: controller.fiveDaysData,
                xValueMapper: (FiveDayData f, _) => f.dateTime,
                yValueMapper: (FiveDayData f, _) => f.temp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
