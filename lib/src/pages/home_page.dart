import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/share_prefs/preferencias_usuario.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class HommePage extends StatelessWidget {

  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
  
  prefs.ultimaPagina = HommePage.routeName;

    return Scaffold(
      appBar: AppBar(
        title:Text('Preferencias de Usuario'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario: ${ prefs.colorSecundario }'),
          Divider(),
          Text('Género: ${prefs.genero}'),
          Divider(),
          Text('Nombre Usuario: ${ prefs.nombreUsuario }'),
          Divider(),
        ]
      )
    );
  }

  /* Drawer _crearMenu(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage( 
                  image: AssetImage('assets/menu-img.jpg'),
                  fit: BoxFit.cover
                  )
            ),
            ),
             ListTile(
              leading: Icon(Icons.pages, color: Colors.blue),
              title: Text('Home'),
              onTap: ()=>Navigator.pushReplacementNamed(context, HommePage.routeName),
            ),
            ListTile(
              leading: Icon(Icons.party_mode, color: Colors.blue),
              title: Text('Party Mode'),
              onTap: (){},
            ),
             ListTile(
              leading: Icon(Icons.people, color: Colors.blue),
              title: Text('People'),
              onTap: (){},
            ),
             ListTile(
              leading: Icon(Icons.settings, color: Colors.blue),
              title: Text('Settings'),
              onTap: (){
                //Navigator.pop(context);
                Navigator.pushReplacementNamed(context, SettingsPage.routeName);
                },
            )
        ],
      ),
    );
  } */


}