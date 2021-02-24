import 'package:flutter/material.dart';
import 'package:flutter_getx_app/controller/HomeController.dart';
import 'package:flutter_getx_app/view/ReceiptScreen.dart';
import 'package:get/get.dart';
import 'view/HomeScreen.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Getx Try',
      home: ReceiptScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         primarySwatch: Colors.red,
        accentColor: Colors.redAccent,
      ),
    );
  }
}
