import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class FireStorageService extends ChangeNotifier {
  FireStorageService._();
  FireStorageService();

  static Future<dynamic> loadFromStorage(
    BuildContext context, String image) async {
      return await FirebaseStorage.instance.ref().child(image).getDownloadURL();
    }

    static Future<dynamic> getName(
    BuildContext context, String image) async {
      return await FirebaseStorage.instance.ref().child(image).getName();
    }

    static Future<dynamic> listList(
    BuildContext context) async {
      return FirebaseStorage.instance.ref().child('pdfs');
    }

}