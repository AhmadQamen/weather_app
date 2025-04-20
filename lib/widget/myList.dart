import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/controller/HomeController.dart';
import 'package:weather/model/new.dart';

import '../constants/images.dart';

class MyList extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const VerticalDivider(
          color: Colors.transparent,
          width: 5,
        ),
        itemCount: controller.dataList.length,
        itemBuilder: (context, index) {
          WeatherData? data;
          (controller.dataList.length > 0)
              ? data = controller.dataList[index] as WeatherData?
              : data = null;
          return SizedBox(
            width: 140,
            height: 150,
            child: Card(
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      (data != null) ? '${data.name}' : '',
                    ),
                    Text(
                      (data != null)
                          ? '${(data.main!.temp! - 273.15).round().toString()}\u2103'
                          : '',
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: LottieBuilder.asset(Images.cloudyAnim),
                    ),
                    Text(
                      (data != null) ? '${data.weather![0].description}' : '',
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
