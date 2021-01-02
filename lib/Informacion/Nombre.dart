import 'package:flutter/material.dart';

class Nombre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NameU(),
            FloatingActionButton(
              elevation: 0,
              backgroundColor: Colors.blueAccent[300],
              child: Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.pushNamed(context, '/Edad');
              },
            ),
          ],
        ),
      )),
    );
  }
}

Widget NameU() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    child: Column(
      children: [
        Center(
          child: Text(
            "Porfavor ingresa tu nombre de usuario",
            style: TextStyle(fontSize: 26, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
        ),
        Center(
          child: TextField(
            decoration: InputDecoration(
                hintText: "Usuairio",
                fillColor: Colors.white24,
                filled: true,
                prefixIcon: Icon(Icons.supervised_user_circle),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(30)))),
          ),
        )
      ],
    ),
  );
}
