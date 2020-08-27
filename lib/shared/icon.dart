import 'package:flutter/material.dart';
import 'package:cbook/screens/doc.dart';


class Econ extends StatelessWidget {
  
  String texxt = '';
  String assset = '';

  String econname;
  String econbookname;
  String econlocation;
  String econthumb;

  Econ({this.texxt, this.assset});


  @override
  Widget build(BuildContext context) {


    return FlatButton(
          onPressed: () async{
            changeLang(texxt);
              Navigator.pushNamed(context, '/doc');
          },
          padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset(assset),
                width: 150,
                height: 130,
              ),
              Text(
                texxt,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Geo",
                  fontSize: 20,
                ),
                ),
            ],
          ),
        );
  }
}