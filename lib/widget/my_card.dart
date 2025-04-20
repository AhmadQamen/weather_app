import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/constants/images.dart';
import 'package:weather/controller/HomeController.dart';

class MyCard extends GetView<HomeController> {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => SizedBox(
        width: MediaQuery.sizeOf(context).width - 10.sp,
        height: 200.h,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const SweepGradient(colors: [
                  Color.fromARGB(243, 168, 206, 238),
                  Color.fromARGB(241, 255, 255, 255),
                  Color.fromARGB(223, 137, 195, 242),
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Text(
                          controller.weatherData.name?.toUpperCase() ??
                              'Unknown',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                color: Colors.black45,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'flutterfonts',
                              ),
                        ),
                      ),
                      Center(
                        child: Text(
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                color: Colors.black45,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'flutterfonts',
                              ),
                          DateFormat().add_MMMMEEEEd().format(
                                DateTime.now(),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 50),
                      child: Column(
                        children: <Widget>[
                          Text(
                            controller.weatherData.weather?[0].description ??
                                'No data',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  color: Colors.black45,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'flutterfonts',
                                ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '${(controller.weatherData.main?.temp ?? 273.15).round()}°C',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  color: Colors.black45,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'flutterfonts',
                                ),
                          ),
                          Text(
                            'min: ${(controller.weatherData.main?.tempMin ?? 273.15 - 273.15).round()}°C / max: ${(controller.weatherData.main?.tempMax ?? 273.15 - 273.15).round()}°C',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  color: Colors.black45,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'flutterfonts',
                                ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 100.sp,
                            height: 100.sp,
                            child: LottieBuilder.asset(Images.cloudyAnim),
                          ),
                          Text(
                            'wind ${controller.weatherData.wind?.speed ?? 0} m/s',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  color: Colors.black45,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'flutterfonts',
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
