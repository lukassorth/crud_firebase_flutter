import 'package:crud_firebase_flutter/routes/app_routes.dart';
import 'package:crud_firebase_flutter/screens/login/login_screen.dart';
import 'package:crud_firebase_flutter/screens/main/main_screen.dart';
import 'package:crud_firebase_flutter/screens/site/site.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'controllers/MenuController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "D'Belle Haus - Móveis Sob Medida",
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: bgDBelle,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          canvasColor: secondaryColor,
        ),
        home: SiteScreen(),
        routes: {
          // AppRoutes.SITE: (_) => SiteScreen(),
          AppRoutes.LOGIN: (_) => LoginScreen(),
          AppRoutes.DASHBOARD: (_) => MainScreen(),
        },
      ),
    );
  }
}
