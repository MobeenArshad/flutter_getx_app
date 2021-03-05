import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_getx_app/view/PdfViewer.dart';
import 'package:get/get.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_getx_app/controller/HomeController.dart';
class PdfControlller extends GetxController{

  final HomeController homeController = Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future  generateReport() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Center(
          child: pw.ListView(
            children: homeController.items.map((element) {
              return pw.Text('${element.name}');
            }).toList(),
          ),
        ),
      ),
    );

    final Directory directory =
    await getApplicationDocumentsDirectory();
    final String path = directory.path;

    final file = File('$path/example.pdf');
    await file.writeAsBytes(await pdf.save());
    //await OpenFile.open('$path/example.pdf');
    Get.to(PdfViewer('$path/example.pdf'));
  }

}
