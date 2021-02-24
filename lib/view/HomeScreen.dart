import 'package:flutter/material.dart';
import 'package:flutter_getx_app/controller/HomeController.dart';
import 'package:get/get.dart';

import 'Login.dart';


class HomeScreen extends StatelessWidget {
  final HomeController homeController = Get.find();
  final GlobalKey<FormState> fromkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter GetX'),

      ),
      body: Container(
        color: Colors.black12,
       height: Get.height*0.5,
       padding: EdgeInsets.all(10),
       margin: EdgeInsets.all(10),
       child: Form(
         key: fromkey,
         child: Column(
           children: [
             TextFormField(
               controller: homeController.textController,
               validator: (val){
                 if(val.isEmpty)
                   return 'required';
                 return null;
               },
               keyboardType: TextInputType.text,
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                     borderSide: BorderSide(
                         color: Theme.of(context).primaryColor
                     ),
                 ),
               ),
             ),
             MaterialButton(
               onPressed: (){
                 if(fromkey.currentState.validate()){
                   homeController.clickbtn();
                   Get.to(Login());
                 }
               },
             child: Text('Click'),
             color: Theme.of(context).primaryColor,
             ),
             GetX<HomeController>(
               builder: (ctx) {
                 return Text(ctx.data.value);
               }
             ),

           ],
         ),
       ),
      ),
    );
  }
}
