import 'package:flutter/material.dart';
import 'package:flutter_getx_app/controller/HomeController.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  final HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hekefk'),
      ),
      body: Container(
        child: MaterialButton(
          onPressed: (){
            homeController.data.value = 'hello';
          },
          child: Text('clk'),
        ),
      ),
    );
  }
}
