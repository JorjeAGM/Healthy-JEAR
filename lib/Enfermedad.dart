import 'package:flutter/material.dart';

class Enfermedad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enfermedad", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.greenAccent[100],
      ),
      body: Container(
          height: 100.0,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("image/Virus.png"),
            fit: BoxFit.cover,
          )),
          child: ListView(children: <Widget>[
            Card(
              child: In,
            )
          ])),
    );
  }
}
