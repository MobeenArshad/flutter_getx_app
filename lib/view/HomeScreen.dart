import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_app/controller/HomeController.dart';
import 'package:flutter_getx_app/controller/PdfController.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'Login.dart';

class HomeScreen extends StatelessWidget {
  String wadiId;

  final HomeController homeController = Get.find();
  final PdfControlller pdfControlller = Get.find();

  final GlobalKey<FormState> fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter GetX'),

        ),
        //resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.black12,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child: Form(
            key: fromkey,
            child: Column(
              children: [
                TextFormField(
                  controller: homeController.nameController,
                  validator: (val) {
                    if (val.isEmpty) return 'required';
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        if (fromkey.currentState.validate()) {
                          homeController.saveBtn();
                          //Get.to(Login());
                        }
                      },
                      child: Text('Save'),
                      color: Theme.of(context).primaryColor,
                    ),
                    MaterialButton(
                      onPressed: () {
                        homeController.updateBtn(wadiId);
                      },
                      child: Text('Update'),
                      color: Theme.of(context).primaryColor,
                    ),
                    MaterialButton(
                        onPressed: (){
                          pdfControlller.generateReport();
                        },
                    child: Text('Pdf'),
                      color: Colors.orange,
                    ),
                  ],
                ),
                GetX<HomeController>(
                    builder: (ctx) {
                  return Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: ctx.items.length,
                        itemBuilder: (BuildContext context, index) {
                          return ListTile(
                            title: Text(ctx.items[index].name),
                            trailing: IconButton(
                              icon: Icon(Icons.delete_forever),
                              onPressed: (){
                                homeController.deleteBtn(ctx.items[index].id);
                              },
                            ),
                            onTap: (){
                              //homeController.btnCheck.value = false;
                              wadiId = ctx.items[index].id;
                              homeController.nameController.text =  ctx.items[index].name;
                            },
                          );
                        }),
                  );
                }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
