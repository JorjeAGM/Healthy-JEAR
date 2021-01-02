import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("image/Crril/INICIO.jpg"),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  width: 720,
                  height: 720,
                ),
                RaisedButton(
                  elevation: 0,
                  color: Colors.blue,
                  child: Text(
                    "Ya lo conozco",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Login');
                  },
                  shape: StadiumBorder(),
                ),
                RaisedButton(
                  elevation: 0,
                  color: Colors.blue,
                  child: Text(
                    "No lo conozco",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Alimentos');
                  },
                  shape: StadiumBorder(),
                ),
              ],
            ),
          )),
    );
  }
}
