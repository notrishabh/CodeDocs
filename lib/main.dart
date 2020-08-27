import 'package:cbook/screens/doc.dart';
import 'package:cbook/screens/select.dart';
import 'package:flutter/material.dart';
import 'package:cbook/screens/home.dart';
import 'package:cbook/pdf/load_pdf.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Home(),
      '/select': (context) => Select(),
      '/doc': (context) => Doc(),
      '/pdff': (context) => LoadFirebaseStoragePdf(),
    },
  ));
}


