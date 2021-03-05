import 'package:flutter/material.dart';
import 'package:flutter_getx_app/model/Home.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class HomeController extends GetxController{
  TextEditingController nameController;
  var data = ''.obs;
  FirebaseFirestore databaseRef;
  var items =  List<Home>().obs;

  //var btnCheck = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    nameController = TextEditingController();
    databaseRef = FirebaseFirestore.instance;
    fetchdata();

  }

  saveBtn()async{
    DocumentReference ref = await databaseRef.collection('data').add({
      'name': nameController.text,
    });

    ref.update({
      'id': ref.id,
    });

    nameController.clear();
    //btnCheck.value = false;
  }

  fetchdata()async{
    Stream<QuerySnapshot> stream = databaseRef
        .collection("data")
        .snapshots();
    stream.forEach((QuerySnapshot element) {
      if (element != null)
      {
        items.value = element.docs.map((e) => Home.fromjson(e.data())).toList();
        print(items.value);
      }
    });
  }

  deleteBtn(String id)async{
    await databaseRef.collection('data').doc(id).delete();
  }

  updateBtn(String id)async{
    await databaseRef.collection('data').doc(id).update({
      'name': nameController.text,
    });
    nameController.clear();
  }




}