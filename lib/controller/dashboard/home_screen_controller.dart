import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  RxBool showActualValue = true.obs;

  void toggleVisibility() {
    showActualValue.value = !showActualValue.value;
  }


  TextEditingController startDateController = TextEditingController();
  var startSelectedDate = DateTime.now().obs;

  startChooseDate(BuildContext context) async {
    log("choose date");
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day),
      lastDate: DateTime(2050),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(),
          child: child ?? Container(),
        );
      },
    );

    if (pickedDate != null) {
      startSelectedDate.value = pickedDate;

      startDateController.text =
          startSelectedDate.value.toString().split(" ")[0];
      log('--------->>>>>>>>>>>>${startDateController.text.toString()}');
    }
  }

}
