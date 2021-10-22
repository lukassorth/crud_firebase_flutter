import 'package:crud_firebase_flutter/controllers/MenuController.dart';
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
            padding: const EdgeInsets.all(15.0),
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: context.read<MenuController>().controlMenu,
            ),
          ),
        if (Responsive.isDesktop(context))
          Padding(
            padding: const EdgeInsets.only(left: 200.0),
            child: Image.asset("assets/images/logo_miniatura.png"),
          ),
        Spacer(),
        if (!Responsive.isMobile(context))
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Home',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Projetos',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sobre',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200.0),
                child: TextButton(
                  onPressed: () {},
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
