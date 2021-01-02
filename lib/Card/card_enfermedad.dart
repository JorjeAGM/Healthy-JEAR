import 'package:flutter/material.dart';
import 'package:healthyjear/models/ModEnfermedad.dart';

class CardEnfermedad extends StatelessWidget {
  const CardEnfermedad({Key key, @required this.enfermedad}) : super(key: key);
  final ModEnfermedad enfermedad;
  @override
  Widget build(BuildContext context) {
    return Card(
      //obesidad
      clipBehavior: Clip.antiAlias,
      elevation: 16,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Ink.image(
                  height: 200,
                  image: AssetImage(enfermedad.imgEnf),
                  fit: BoxFit.fitWidth,
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      enfermedad.nombreEnf,
                      style: TextStyle(color: Colors.black54),
                    ),
                    Text("Diagnostico"),
                    Text(enfermedad.descripcionEnf)
                  ],
                )),
            ButtonBar(
              children: [
                FlatButton(
                  child: Text(
                    "Detalles",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/pag1', arguments: {
                      'url': enfermedad.url,
                      'titulo': enfermedad.nombreEnf
                    });
                  },
                  shape: StadiumBorder(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
