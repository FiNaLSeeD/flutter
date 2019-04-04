import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  Widget mytext = Text(
    'Hello BSRU',
    style: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.red),
  );
  Widget showLogo = Image.asset('images/logo.png');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.android),
          title: Text('This is AppBar'),
          actions: <Widget>[Icon(Icons.cloud_upload), Icon(Icons.exit_to_app)],
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.red[700],
            Colors.red[100],
          ])),
          padding: EdgeInsets.only(top: 50.0),
          alignment: Alignment.topCenter,
          child: showLogo,
        ),
      ),
    );
  }
}
