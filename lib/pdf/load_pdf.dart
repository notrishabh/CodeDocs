import 'dart:io';
import 'package:cbook/shared/loading.dart';
import 'package:flutter/material.dart';
import "package:cbook/pdf/plugins/launch_pdf.dart";

dynamic file = "";
dynamic fileName = "";

Future incr(dynamic put) {
  
  file = put;
 
}

Future oncr(String fil) {
  fileName = fil;
}

class LoadFirebaseStoragePdf extends StatefulWidget {
 
  
  @override
  _LoadFirebaseStoragePdfState createState() => _LoadFirebaseStoragePdfState();
}

class _LoadFirebaseStoragePdfState extends State<LoadFirebaseStoragePdf> {


  static String pathPdf = "";
  static String pdfUrl = "";
  bool asComplete = false;
  bool onComplete = false;

  @override
  void initState(){
    super.initState();
    
    LaunchFile.loadFromFirebase(context, file)
    .then((url) => LaunchFile.createFileFromPdfUrl(url, asComplete).then(
      (f) => setState(
        () {
          if (f is File) {
            pathPdf = f.path;
          }
          if(asComplete = true) {
            setState(() {
              onComplete = true;
              LaunchFile.launchPDF(
                      context, fileName, pathPdf, pdfUrl);
            });
          } else {
            Loading();
          }
        }
      )
    ));
  }
  
  Widget build(BuildContext context) {
    return onComplete ? Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Exit",
          style: TextStyle(
            fontSize: 35,
            fontFamily: "Geo",
            color: Color.fromRGBO(92, 245, 126, 1),
          ),
          ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 105, horizontal: 0),
        child: Column(
          children: <Widget>[
            Text(
              "Do you want to close the book ?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    padding: EdgeInsets.all(8),
                    color: Colors.grey[850],
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Yes",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                      ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(8),
                    onPressed: () {
                      setState(() {
                        LaunchFile.launchPDF(context, fileName, pathPdf, pdfUrl);
                      });
                    },
                    child: Text(
                      "No",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey[850],
                      ),
                      ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ) : Loading();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return onComplete ? Scaffold(          
  //     appBar: AppBar(
  //       title: Text(fileName),
  //     ),
  //     body: Stack(
  //       children: <Widget>[
  //         Container(
  //           margin: const EdgeInsets.only(top: 90),
  //           child: Column(
  //             children: <Widget>[
  //               openPDFButton(context),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   ) : Loading();
  // }

  // Widget openPDFButton(BuildContext context) {
  //   return Container(
  //     child: Stack(
  //       children: <Widget>[
  //         Container(
  //           padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
  //           margin: const EdgeInsets.only(top: 30, left: 20.0, right: 20.0, bottom: 20.0),
  //           decoration: BoxDecoration(
  //               color: Colors.red,
  //               borderRadius: BorderRadius.circular(30.0)),
  //           child: FlatButton(
  //             onPressed: () {
  //               setState(() {
  //                 LaunchFile.launchPDF(
  //                     context, fileName, pathPdf, pdfUrl);
  //               });
  //               print(pathPdf);
  //             },
  //             child: Text(
  //               fileName,
  //               style: TextStyle(fontSize: 20),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}