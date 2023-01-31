import 'dart:async';
import 'package:flutter/material.dart';
import '../../routes/app_pages.dart';
import '../users.dart';
export 'package:get/get.dart';
import 'package:application/app/Nada/DB.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class EnterDataController extends GetxController {
  File? catfile;
  bool isTextEmpty = false;
  String? imageURL;
  List<Images> images = [];
  TextEditingController controller = TextEditingController();
  uploadImage() async { /// open camera
    XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
    catfile = File(file!.path);
    // this.controller.text = catfile!.path;
    update();
  }
  getAllImages() async {
    images = await FirestoreHelper.firestoreHelper.getAllImages();
    update();
  }
  creatData() async{     ///add photo
    imageURL = await FirestoreHelper.firestoreHelper.uploadImage(catfile!);
    Images images = Images(
      image: imageURL,
       name: controller.text
    );
    await  FirestoreHelper.firestoreHelper.creatData(images);
    getAllImages();
    imageURL=null;
    catfile=null;
    controller.clear();
   update();
  }

  Future<void> cameraImage() async{
    XFile? file = await ImagePicker().pickImage(source: ImageSource.camera);
    catfile = File(file!.path);
    update();
  }

  void empty() {
    if (controller.value.text.isEmpty) {
      isTextEmpty = true;
    } else {
      isTextEmpty = false;
    }
    update();
  }
}
