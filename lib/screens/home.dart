import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/matrix.webp'),
                fit: BoxFit.cover
              ),
            ),
          ),
          Column(
            children: <Widget>[
            // Center(
            //   child: Image.asset('assets/images/js.jpg'),
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 246, 0, 0),
              child: Text(
                "CodeDocs",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 64,
                  fontFamily: "Geo",
                  ),
                ),
            ),
            ]
          ),
        Container(
          margin: EdgeInsets.fromLTRB(158, 475, 0, 0),
          child: Transform(
            transform: Matrix4.skewX(-0.3),
            origin: Offset(0.0, 200.0),
              child: RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/select');
                },
                padding: EdgeInsets.symmetric(vertical: 9, horizontal: 20),
                color: Color.fromRGBO(183, 236, 178, 0.50),
                child: Text(
                  "Explore",
                  style: TextStyle(
                    fontFamily: "Geo",
                    fontSize: 36,
                    color: Colors.white,
                  ),
                  ),
              ),
            ),
        ),
        
            ]
          
      ),
    );
  }
}