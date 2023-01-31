import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../modules/users.dart';

class FirestoreHelper {
  FirestoreHelper._();

  static FirestoreHelper firestoreHelper = FirestoreHelper._();
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  FirebaseStorage firebaseStorage = FirebaseStorage.instance;


   Future<List<Users>> getAllUsers() async
  {
    QuerySnapshot<Map<String, dynamic>> allUsersSnapshot = await _firebaseFirestore
        .collection('users')
        .get();


    List<Users> alluser= allUsersSnapshot.docs.map((e) {
      Users users = Users.fromMap(e.data());
      return users;
    }).toList();
    return alluser;
  }

  creatData(Images image)async{
    String id = _firebaseFirestore.collection('users').doc().id;
    image.id = id;
    await   _firebaseFirestore
        .collection('users')
        .doc("00001")
        .collection('Images')
        .doc(image.id)
        .set(image.toMap());
  }

  Future<String> uploadImage(File file) async {
    String filePath = file.path;
    String fileName = filePath.split('/').last;
    Reference reference = firebaseStorage.ref('images/$fileName');
    await reference.putFile(file);
    String imageUrl = await reference.getDownloadURL();
    return imageUrl;
  }
  Future<List<Images>> getAllImages() async
  {
    QuerySnapshot<Map<String, dynamic>> allProductsSnapshot = await _firebaseFirestore
        .collection('users')
        .doc("00001")
        .collection('Images')
        .get();



    List<Images> allImages= allProductsSnapshot.docs.map((e) {
      Images products = Images.fromMap(e.data());
      return products;

    }).toList();
    return allImages;
  }
}