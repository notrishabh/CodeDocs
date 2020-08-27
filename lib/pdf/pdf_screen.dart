import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';

class PDFScreen extends StatelessWidget {
  String title = "";
  String pdfPath;
  String pdfUrl;
  PDFScreen(this.title, this.pdfPath, this.pdfUrl);

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
        appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontFamily: "Geo",
            color: Color.fromRGBO(92, 245, 126, 1),
          ),
          ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
        path: pdfPath);
  }
}