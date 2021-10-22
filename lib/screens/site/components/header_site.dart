import 'package:crud_firebase_flutter/controllers/MenuController.dart';
import 'package:crud_firebase_flutter/screens/dashboard/components/header.dart';
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
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: context.read<MenuController>().controlMenu,
        ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        Expanded(
          child: SearchField(),
        ),
        ProfileCard()
      ],
    );
  }
}
