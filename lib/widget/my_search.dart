// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'package:weather/controller/HomeController.dart';

class MySearch extends GetView<HomeController> {
  const MySearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Container(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: TextField(
          onChanged: (value) => controller.city = value,
          style: const TextStyle(
            color: Colors.white,
          ),
          textInputAction: TextInputAction.search,
          onSubmitted: (value) {
            controller.update();
          },
          decoration: InputDecoration(
            suffix: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            hintStyle: const TextStyle(color: Colors.white),
            hintText: 'Search'.toUpperCase(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
