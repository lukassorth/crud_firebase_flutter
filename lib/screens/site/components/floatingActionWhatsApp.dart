import 'package:crud_firebase_flutter/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class FloatingActionWhatsApp extends StatelessWidget {
  const FloatingActionWhatsApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        if (Responsive.isDesktop(context))
          abrirUrl(
              "https://api.whatsapp.com/send?phone=5551999098675&text=Ol%C3%A1%2C%20eu%20gostaria%20de%20um%20or%C3%A7amento%20de%20M%C3%B3veis%20Sob%20Medida!");
        if (Responsive.isMobile(context)) abrirWhatsApp();
      },
      child: Image.asset(
        "images/whats.png",
        color: Colors.white,
      ),
      backgroundColor: Colors.green,
      tooltip: "Chama no Whats",
    );
  }
}

abrirUrl(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

abrirWhatsApp() async {
  var whatsappUrl =
      "whatsapp://send?phone=+5551999098675&text=Ol%C3%A1%2C%20eu%20gostaria%20de%20um%20or%C3%A7amento%20de%20M%C3%B3veis%20Sob%20Medida!";

  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}
