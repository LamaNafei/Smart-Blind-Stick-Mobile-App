import 'dart:async';
import 'package:flutter/material.dart';
import '../../routes/app_pages.dart';
import '../users.dart';
export 'package:get/get.dart';
import 'package:application/app/Nada/DB.dart';

class SignInController extends GetxController {
  TextEditingController controller = TextEditingController();
  bool isTextEmpty = false;
  bool isUserExisit = false;
  List<Users> user = [];
  getAllUsers() async {
    user = await FirestoreHelper.firestoreHelper.getAllUsers();
    update();
    print(user[0].usersId);
  }

  void empty() {
    if (controller.value.text.isEmpty) {
      isTextEmpty = true;
    } else {
      isTextEmpty = false;
    }
    update();
  }
  void exisit(String text){
    final int index1 = user.indexWhere(((book) => book.usersId == text));
    if(index1 != -1){
      print(index1);
      isUserExisit = true;
    }
    else
      isUserExisit = false;
    update();
    print(isUserExisit);
  }
}
