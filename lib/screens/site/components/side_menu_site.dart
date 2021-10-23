import 'package:crud_firebase_flutter/constants.dart';
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
            child: Image.asset("assets/images/logo_miniatura.png"),
          ),
          DrawerListTileSite(
            title: "Home",
            svgSrc: "assets/icons/pdf_file.svg",
            press: () {},
          ),
          DrawerListTileSite(
            title: "Projetos",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {},
          ),
          DrawerListTileSite(
            title: "Sobre",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {},
          ),
          DrawerListTileSite(
            title: "Contato",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {},
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
