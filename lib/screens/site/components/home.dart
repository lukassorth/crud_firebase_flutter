import 'package:crud_firebase_flutter/screens/site/components/floatingActionWhatsApp.dart';
import 'package:crud_firebase_flutter/screens/site/components/header_site.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSite extends StatelessWidget {
  const HomeSite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionWhatsApp(),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/cozinha_laranja.jpeg"),
                fit: BoxFit.cover,
                repeat: ImageRepeat.noRepeat,
                opacity: 0.5,
              ),
            ),
          ),
          Column(
            children: [
              HeaderSite(),
              SizedBox(
                height: 250.0,
              ),
              Text(
                "O melhor em cada detalhe!",
                style: TextStyle(
                    fontSize: 62.0,
                    decorationStyle: TextDecorationStyle.double),
              ),
              Column(
                children: [
                  Text("Móveis sob Medida", style: TextStyle(fontSize: 32.0)),
                  Text("Design de interiores", style: TextStyle(fontSize: 25.0))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
