import 'package:crud_firebase_flutter/controllers/MenuController.dart';
import 'package:crud_firebase_flutter/screens/site/components/header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../responsive.dart';

class SiteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            // if (!Responsive.isDesktop(context))
            Expanded(
              // default flex = 1
              // and it takes 1/6 part of the screen
              child: Header(),
            ),
            // Expanded(
            //   // It takes 5/6 part of the screen
            //   flex: 5,
            //   child: DashboardScreen(),
            // ),
          ],
        ),
      ),
    );
  }
}
