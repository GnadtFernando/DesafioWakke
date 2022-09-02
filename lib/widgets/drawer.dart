import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topLeft,
      child: Drawer(
        backgroundColor: Colors.deepPurpleAccent.withOpacity(0.9),
        width: size.width * 0.78,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.06, top: size.width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.width * 0.04),
            child: GestureDetector(
              onTap: () {
                Modular.to.pushReplacementNamed('/feed-page/');
              },
              child: Text(
                'Feed Fun',
                style:
                    TextStyle(color: Colors.white, fontSize: size.width * 0.06),
              ),
            ),
          ),
          SizedBox(height: size.width * 0.02),
          Text(
            'Times',
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.06),
          ),
          SizedBox(height: size.width * 0.02),
          Text(
            'Notificações',
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.06),
          ),
          SizedBox(height: size.width * 0.02),
          Text(
            'Conexões',
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.06),
          ),
          SizedBox(height: size.width * 0.02),
          Text(
            'Minha Conta',
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.06),
          ),
          SizedBox(height: size.width * 0.02),
          Text(
            'Plano',
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.06),
          ),
          SizedBox(height: size.width * 0.02),
          GestureDetector(
            onTap: () {
              Modular.to.pushNamed('/help-page/');
            },
            child: Text(
              'Ajuda',
              style:
                  TextStyle(color: Colors.white, fontSize: size.width * 0.06),
            ),
          ),
          SizedBox(height: size.width * 0.4),
          Text(
            'Sair',
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.06),
          ),
          SizedBox(height: size.width * 0.03),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Termos de Uso e Politica de Privacidade',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontSize: size.width * 0.03),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.width * 0.12),
      child: Column(
        children: [
          SizedBox(
            width: size.width * 0.4,
            child: Image.asset('assets/images/logo_wakke_branco800.png'),
          ),
          Padding(
              padding: EdgeInsets.only(top: size.width * 0.08),
              child: Container(
                height: size.width * 0.3,
                width: size.width * 0.3,
                margin: EdgeInsets.all(size.width * 0.02),
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/perfil_photo.png'),
                        fit: BoxFit.cover),
                    border: Border.all(
                        color: Colors.white, width: size.width * 0.02),
                    borderRadius: BorderRadius.circular(size.width * 0.04)),
              )),
        ],
      ),
    );
  }
}
