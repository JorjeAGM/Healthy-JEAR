import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuLateral();
  }
}

class MenuLateral extends StatefulWidget {
  @override
  _MenuLateralState createState() => _MenuLateralState();
}

class _MenuLateralState extends State<MenuLateral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Healthy JEAR", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.greenAccent[100],
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("image/comida.jpg"),
            fit: BoxFit.cover,
          )),
        ),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.greenAccent[100]),
              accountName:
                  Text('Healthy-JEAR', style: TextStyle(color: Colors.black)),
              accountEmail: Text('17030159@itcelaya.edu.mx'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Far.pinterest.com%2Fpin%2F486529565982702140%2F&psig=AOvVaw3Lcz0NY0hQXnVTVrJwcNQ8&ust=1605925695202000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPCw8cuJkO0CFQAAAAAdAAAAABAF"),
              ),
            ),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.directions_walk),
              onTap: () {
                Navigator.pushNamed(context, '/Home');
              },
            ),
            ListTile(
                title: Text('Plan Alimenticio'),
                trailing: Icon(Icons.favorite)),
            ListTile(
                title: Text('Verduras'),
                trailing: Icon(Icons.spa),
                onTap: () {
                  Navigator.pushNamed(context, '/Verduras');
                }),
            ListTile(
                title: Text('Frutas'),
                trailing: Icon(Icons.spa),
                onTap: () {
                  Navigator.pushNamed(context, '/Frutas');
                }),
            ListTile(
                title: Text('Enfermedad'),
                trailing: Icon(Icons.track_changes),
                onTap: () {
                  Navigator.pushNamed(context, '/Enfermedad');
                }),
            ListTile(
                title: Text('Informacion'),
                trailing: Icon(Icons.info_outline),
                onTap: () {
                  Navigator.pushNamed(context, '/Info');
                }),
            ListTile(
                title: Text('Sing Out'),
                trailing: Icon(Icons.local_gas_station),
                onTap: () {
                  Navigator.pushNamed(context, '/Login');
                }),
          ],
        )));
  }
}
