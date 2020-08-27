import 'package:cbook/shared/icon.dart';
import 'package:flutter/material.dart';

class Select extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Select a Language",
          style: TextStyle(
            fontSize: 35,
            fontFamily: "Geo",
            color: Color.fromRGBO(92, 245, 126, 1),
          ),
          ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Econ(texxt: "JavaScript", assset: "assets/icons/js.png",),
              Econ(texxt: "C++", assset: "assets/icons/c++.png",),
              Econ(texxt: "Data Structures", assset: "assets/icons/ds.png",),
              Econ(texxt: "Python", assset: "assets/icons/python.png",),
              Econ(texxt: "Ruby", assset: "assets/icons/ruby.png",),
              Econ(texxt: "Machine Learning", assset: "assets/icons/ml.png",)
            ],
          ),
        ),
        
      ),

      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: <Widget>[
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: <Widget>[
      //         Econ(texxt: "JavaScript", assset: "assets/icons/js.png",),
      //         Econ(texxt: "C++", assset: "assets/icons/c++.png",),
      //         Econ(texxt: "Data Structures", assset: "assets/icons/ds.png",)
      //       ],
      //     ),
      //      Column(
      //        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //        children: <Widget>[
      //          Econ(texxt: "Python", assset: "assets/icons/python.png",),
      //          Econ(texxt: "Ruby", assset: "assets/icons/ruby.png",),
      //          Econ(texxt: "Machine Learning", assset: "assets/icons/ml.png",)
      //        ],
      //      ),
      //   ],
      // ),
    );
  }
}