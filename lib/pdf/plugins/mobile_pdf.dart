import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "package:cbook/pdf/load_pdf.dart";
import "package:cbook/pdf/pdf_screen.dart";
import 'package:path_provider/path_provider.dart';
import "package:cbook/pdf/plugins/mobile_storage.dart";

class LaunchFile {
  static void launchPDF(
      BuildContext context, String title, String pdfPath, String pdfUrl) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PDFScreen(title, pdfPath, pdfUrl),
      ),
    );
  }


  static Future<dynamic> loadFromFirebase(
      BuildContext context, String url) async {
    return FireStorageService.loadFromStorage(context, file);
  }

  static Future<dynamic> createFileFromPdfUrl(dynamic url, bool isComplete) async {
    isComplete = false;
    final filename ='Test.pdf'; 
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes).whenComplete(() {
      isComplete = true;
    });
    return file;
  }
}