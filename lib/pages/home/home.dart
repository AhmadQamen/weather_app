import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:weather/controller/HomeController.dart';
import 'package:weather/widget/myList.dart';
import 'package:weather/widget/my_background.dart';
import 'package:weather/widget/my_card.dart';
import 'package:weather/widget/my_chart.dart';
import 'package:weather/widget/my_search.dart';

class Home extends GetView<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                  gradient: SweepGradient(colors: [
                Color.fromARGB(243, 168, 206, 238),
                Color.fromARGB(241, 255, 255, 255),
                Color.fromARGB(223, 137, 195, 242),
              ])),
              child: Column(children: [
                const Stack(
                  clipBehavior: Clip.none,
                  children: [
                    MyBackground(),
                    Positioned(child: MySearch()),
                    Positioned(right: 10, left: 10, top: 200, child: MyCard()),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                        padding: const EdgeInsets.only(top: 120),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'other city'.toUpperCase(),
                                  ),
                                  MyList(),
                                  Container(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          'forcast next 5 days'.toUpperCase(),
                                        ),
                                        const Icon(
                                          Icons.next_plan_outlined,
                                          color: Colors.black45,
                                        ),
                                      ],
                                    ),
                                  ),
                                  MyChart(),
                                ]))))
              ]),
            ),
          );
        },
      ),
    );
  }
}
