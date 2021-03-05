import 'package:flutter/material.dart';
import 'package:flutter_getx_app/controller/HomeController.dart';
import 'package:flutter_getx_app/controller/PdfController.dart';

import 'package:get/get.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
import 'view/HomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  PdfView.platform = SurfaceAndroidPdfViewer();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  final homeController = Get.put(HomeController());
  final pdfController = Get..put(PdfControlller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Getx Try',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         primarySwatch: Colors.red,
        accentColor: Colors.redAccent,
      ),
    );
  }
}
