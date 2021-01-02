import 'package:flutter/material.dart';
import 'package:healthyjear/Card/card_enfermedad.dart';
import 'package:healthyjear/Informacion/enfermedades.dart';
import 'package:healthyjear/models/ModEnfermedad.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Enfermedad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Enferemdades',
          ),
          actions: [
            FloatingActionButton.extended(
              elevation: 0,
              label: Text('Obesidad'),
              onPressed: () {
                Navigator.pushNamed(context, '/Obesidad');
              },
            ),
            FloatingActionButton.extended(
              elevation: 0,
              label: Text('Desnutrcion'),
              onPressed: () {
                Navigator.pushNamed(context, '/Desnutricion');
              },
            )
          ],
        ),
        body: FutureBuilder(
            future: getenfermedades(),
            builder: (BuildContext context,
                AsyncSnapshot<List<ModEnfermedad>> snap) {
              if (snap.hasError) {
                return Center(
                  child: Text("Error detectado al cargar las enfermedades"),
                );
              } else {
                if (snap.connectionState != ConnectionState.done) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  if (snap.data == null) {
                    return Center(
                      child: Text("No hay Enfermedades"),
                    );
                  } else {
                    return listaCardEnfermedades(snap.data);
                  }
                }
              }
            }));
  }

  Widget listaCardEnfermedades(List<ModEnfermedad> enfermedades) {
    return ListView.builder(
      itemCount: enfermedades.length,
      itemBuilder: (context, index) {
        ModEnfermedad enfermedad = enfermedades[index];
        if (enfermedad.peso == 'true') {
          return CardEnfermedad(enfermedad: enfermedad);
        } else {
          return null;
        }
      },
    );
  }

  Widget build2(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Desnuricion',
          ),
        ),
        body: FutureBuilder(
            future: getenfermedades2(),
            builder: (BuildContext context,
                AsyncSnapshot<List<ModEnfermedad>> snap) {
              if (snap.hasError) {
                return Center(
                  child: Text("Error detectado al cargar las enfermedades"),
                );
              } else {
                if (snap.connectionState != ConnectionState.done) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  if (snap.data == null) {
                    return Center(
                      child: Text("No hay Enfermedades"),
                    );
                  } else {
                    return listaCardEnfermedadesDes(snap.data);
                  }
                }
              }
            }));
  }

  Widget listaCardEnfermedadesDes(List<ModEnfermedad> enfermedades) {
    return ListView.builder(
      itemCount: enfermedades.length,
      itemBuilder: (context, index) {
        ModEnfermedad enfermedad = enfermedades[index];
        if (enfermedad.peso == 'false') {
          return CardEnfermedad(enfermedad: enfermedad);
        } else {
          return null;
        }
      },
    );
  }

  Future<List<ModEnfermedad>> getenfermedades() async {
    List<ModEnfermedad> listaEnfermedad = List<ModEnfermedad>();
    listaEnfermedad.add(ModEnfermedad(
        imgEnf: 'image/ImageE/obesidad.jpg',
        nombreEnf: 'Anorexia nerviosa',
        descripcionEnf:
            'La anorexia nerviosa, a menudo simplemente denominada «anorexia», es un trastorno de la alimentación que se caracteriza por el peso corporal anormalmente bajo, el temor intenso a aumentar de peso y la percepción distorsionada del peso. Para las personas con anorexia, es muy importante controlar su peso y su figura corporal, y hacen todo tipo de sacrificios que suelen interferir en su vida de forma significativa.',
        url:
            'https://www.mayoclinic.org/es-es/diseases-conditions/anorexia-nervosa/symptoms-causes/syc-20353591',
        peso: 'true'));
    return await listaEnfermedad;
  }

  Future<List<ModEnfermedad>> getenfermedades2() async {
    List<ModEnfermedad> listaEnfermedad = List<ModEnfermedad>();
    listaEnfermedad.add(ModEnfermedad(
        imgEnf: 'image/ImageE/img1.jpg',
        nombreEnf: 'Anorexia nerviosa',
        descripcionEnf:
            'La anorexia nerviosa, a menudo simplemente denominada «anorexia», es un trastorno de la alimentación que se caracteriza por el peso corporal anormalmente bajo, el temor intenso a aumentar de peso y la percepción distorsionada del peso. Para las personas con anorexia, es muy importante controlar su peso y su figura corporal, y hacen todo tipo de sacrificios que suelen interferir en su vida de forma significativa.',
        url:
            'https://www.mayoclinic.org/es-es/diseases-conditions/anorexia-nervosa/symptoms-causes/syc-20353591',
        peso: 'false'));
    return await listaEnfermedad;
  }

  Widget websides(BuildContext context) {
    final url =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text(url['titulo'].toString()),
      ),
      body: SafeArea(
          child: Center(
        child: WebView(
          initialUrl: url['url'].toString(),
        ),
      )),
    );
  }

/*Widget websides() {
  return Scaffold(
    body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        //floating: true,
        pinned: true,
        title: Text("Enfermedad", style: TextStyle(color: Colors.black)),
        expandedHeight: 200,
        flexibleSpace: Image.asset(
          "image/Virus.png",
          fit: BoxFit.cover,
        ),
      ),
      SliverList(
          delegate: SliverChildListDelegate(<Widget>[
        SafeArea(
            child: Center(
          child: WebView(
            initialUrl:
                'https://www.mayoclinic.org/es-es/diseases-conditions/anorexia-nervosa/symptoms-causes/syc-20353591',
          ),
        ))
      ]))
    ]),
  );
}*/
}
