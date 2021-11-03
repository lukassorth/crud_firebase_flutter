import 'package:crud_firebase_flutter/controllers/MenuController.dart';
import 'package:crud_firebase_flutter/screens/site/components/home.dart';
import 'package:crud_firebase_flutter/screens/site/components/side_menu_site.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import '../../responsive.dart';

class SiteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenuSite(),
      body: Column(
        children: [
          Expanded(
            child: HomeSite(),
          ),
        ],
      ),
    );
  }
}
