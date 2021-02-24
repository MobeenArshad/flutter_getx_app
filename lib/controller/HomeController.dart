import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  TextEditingController textController;
  var data = ''.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    textController = TextEditingController();


  }

  clickbtn(){
    data.value  = textController.text;

  }



}