import 'package:flutter/material.dart';

class analisis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("image/Crril/analisis.jpg"),
          fit: BoxFit.cover,
        )),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.blueAccent[300],
        child: Icon(Icons.navigate_next),
        onPressed: () {
          Navigator.pushNamed(context, '/paquetes');
        },
      ),
    );
  }
}
