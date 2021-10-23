import 'package:crud_firebase_flutter/constants.dart';
import 'package:crud_firebase_flutter/screens/login/login_screen.dart';
import 'package:crud_firebase_flutter/screens/site/components/contato.dart';
import 'package:crud_firebase_flutter/screens/site/components/home.dart';
import 'package:crud_firebase_flutter/screens/site/components/projetos.dart';
import 'package:crud_firebase_flutter/screens/site/components/sobre.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenuSite extends StatelessWidget {
  const SideMenuSite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: IconButton(
              icon: Image.asset("assets/images/logo_miniatura.png"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              iconSize: 120.0,
            ),
          ),
          DrawerListTileSite(
            title: "Home",
            svgSrc: "assets/icons/pdf_file.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeSite()),
              );
            },
          ),
          DrawerListTileSite(
            title: "Projetos",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProjetosSite()),
              );
            },
          ),
          DrawerListTileSite(
            title: "Sobre",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SobreSite()),
              );
            },
          ),
          DrawerListTileSite(
            title: "Contato",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContatoSite()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTileSite extends StatelessWidget {
  const DrawerListTileSite({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.black,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
