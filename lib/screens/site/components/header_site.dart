import 'package:crud_firebase_flutter/controllers/MenuController.dart';
import 'package:crud_firebase_flutter/screens/login/login_screen.dart';
import 'package:crud_firebase_flutter/screens/site/components/contato.dart';
import 'package:crud_firebase_flutter/screens/site/components/home.dart';
import 'package:crud_firebase_flutter/screens/site/components/projetos.dart';
import 'package:crud_firebase_flutter/screens/site/components/sobre.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import '../../../responsive.dart';

class HeaderSite extends StatefulWidget {
  HeaderSite({Key? key}) : super(key: key);

  @override
  _HeaderSiteState createState() => _HeaderSiteState();
}

class _HeaderSiteState extends State<HeaderSite> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: context.read<MenuController>().controlMenu,
            ),
          ),
        if (Responsive.isDesktop(context))
          Padding(
            padding: const EdgeInsets.only(left: 200.0),
            child: IconButton(
              icon: Image.asset("assets/images/logo_miniatura.png"),
              iconSize: 100.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ),
        Spacer(),
        if (Responsive.isDesktop(context))
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeSite()),
                    );
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProjetosSite()),
                    );
                  },
                  child: Text(
                    'Projetos',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SobreSite()),
                    );
                  },
                  child: Text(
                    'Sobre',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContatoSite()),
                    );
                  },
                  child: Text(
                    'Contato',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
      ],
    );
  }
}
