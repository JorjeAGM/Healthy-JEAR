import 'package:flutter/material.dart';

class Peso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Container(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                EdadU(),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.blueAccent[300],
                  child: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Login');
                  },
                ),
              ],
            ),
          ))),
    );
  }
}

Widget EdadU() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    child: Column(
      children: [
        Center(
          child: Text(
            "Porfavor ingresa tu Peso",
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
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: "Peso",
                fillColor: Colors.white24,
                filled: true,
                prefixIcon: Icon(Icons.height_rounded),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(30)))),
          ),
        )
      ],
    ),
  );
}
