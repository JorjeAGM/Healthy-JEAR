import 'package:flutter/material.dart';

class Frutas extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text("Frutas", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.greenAccent[100],
      ),
      body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("image/Frutas.jpg"),
        fit: BoxFit.cover,
        )
      ),
        
      ),
      );
  }

}
