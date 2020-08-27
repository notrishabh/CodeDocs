import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cbook/pdf/load_pdf.dart';


  dynamic lang="";


  void changeLang(String llang) {
    lang = llang;
  }

    List<Widget> makeList(context, AsyncSnapshot snapshot) {
    return snapshot.data.documents.map<Widget>((document) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: ListTile(
          leading: Image.network(document["thumb"],height: 100,),
          title: Text(document["bookname"],style: TextStyle(color: Colors.white),),
          onTap: () {
            incr(document["location"]);
            oncr(document["bookname"]);
            Navigator.pushNamed(context, '/pdff');
          },
          
        ),
      );
    
    }).toList();
  }


class Doc extends StatefulWidget {


  @override
  _DocState createState() => _DocState();
}

class _DocState extends State<Doc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Select A Book",
          style: TextStyle(
            fontSize: 35,
            fontFamily: "Geo",
            color: Color.fromRGBO(92, 245, 126, 1),
          ),
          ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),

      body: StreamBuilder(
        stream: Firestore.instance.collection("books").where("name", isEqualTo: lang).snapshots(),
        builder: (context, snapshot) {
          return ListView(
            children: makeList(context, snapshot),
          );
        },
      ),      
    );
  }
}