import 'package:crud_firebase_flutter/controllers/MenuController.dart';
import 'package:crud_firebase_flutter/screens/site/components/header_site.dart';
import 'package:crud_firebase_flutter/screens/site/components/home.dart';
import 'package:crud_firebase_flutter/screens/site/components/side_menu_site.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../responsive.dart';

class SiteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenuSite(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // We want this side menu only for large screen
                  /* if (Responsive.isDesktop(context))
                    Expanded(
                      // default flex = 1
                      // and it takes 1/6 part of the screen
                      child: SideMenuSite(),
                    ), */
                  Expanded(
                    // It takes 5/6 part of the screen
                    // flex: 5,
                    child: HeaderSite(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  right: 12.0,
                  bottom: 8.0,
                ),
                child: Container(
                  height: 850.0,
                  child: HomeSite(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  right: 12.0,
                  bottom: 8.0,
                ),
                child: Container(
                  height: 650.0,
                  child: HomeSite(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
