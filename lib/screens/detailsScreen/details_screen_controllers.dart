import 'dart:developer';

import 'package:get/get.dart';

class DetailsScreenController extends GetxController{


  //variable to store arguments
  var args;
  //variable to store value
  var selectedNum = "0".obs;

  //on init method
  @override
  void onInit() {
    super.onInit();

    //get data from previous screen
    args = Get.arguments;
    selectedNum.value = args['num'];

  }
}