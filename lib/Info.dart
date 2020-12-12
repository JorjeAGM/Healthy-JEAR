import 'package:flutter/material.dart';

class Info extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text("Informacion"),
        backgroundColor: Colors.greenAccent[100],
      ),
      body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("image/Informacion.jpg"),
        fit: BoxFit.cover,
        )
      ),
        
      ),
      );
  }

}
