import 'package:flutter/material.dart';

class Verduras extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text("Verduras", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.greenAccent[100],
      ),
      body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("image/verduras.jpg"),
        fit: BoxFit.cover,
        )
      ),
        
      ),
      );
  }

}
