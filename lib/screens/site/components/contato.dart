import 'package:crud_firebase_flutter/screens/site/components/floatingActionWhatsApp.dart';
import 'package:crud_firebase_flutter/screens/site/components/header_site.dart';
import 'package:flutter/material.dart';

class ContatoSite extends StatelessWidget {
  const ContatoSite({
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
            /*  decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/cozinha_laranja.jpeg"),
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
            ),
          ), */
          ),
          Column(
            children: [
              HeaderSite(),
              Center(
                child: Text(
                  "Contato",
                  style: TextStyle(
                    fontSize: 85.0,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
