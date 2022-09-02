import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_wakke/widgets/dropdown_default.dart';

import '../../widgets/drawer.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Ajuda',
          style: TextStyle(fontSize: size.width * 0.072, color: Colors.black),
        ),
        centerTitle: true,
        leading: Builder(builder: (context) {
          return Padding(
            padding: EdgeInsets.all(size.width * 0.04),
            child: GestureDetector(
              onTap: () {
                Modular.to.pop();
              },
              child: Image.asset(
                'assets/images/icon_header_back.png',
                width: size.width * 0.3,
              ),
            ),
          );
        }),
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.04),
        child: Column(
          children: [
            Text(
              'Mande sua mensagem de dúvida, elogios ou sugestões.',
              style: TextStyle(fontSize: size.width * 0.06),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.width * 0.03),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.deepPurpleAccent),
                    borderRadius: BorderRadius.all(
                      Radius.circular(size.width * 0.04),
                    ),
                  ),
                  hintText: 'Telefone',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.width * 0.03),
              child: const DropdownDefault(),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.width * 0.03),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.deepPurpleAccent),
                    borderRadius: BorderRadius.all(
                      Radius.circular(size.width * 0.04),
                    ),
                  ),
                  hintText: 'Descrição',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.width * 0.04),
              child: SizedBox(
                height: size.width * 0.1,
                width: size.width * 0.98,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(size.width * 0.02),
                    ),
                    primary: Colors.deepPurpleAccent,
                  ),
                  onPressed: () {},
                  child: const Text('Enviar'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
