import 'package:flutter/material.dart';

class FloatingActionWhatsApp extends StatelessWidget {
  const FloatingActionWhatsApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.message),
      backgroundColor: Colors.green,
      tooltip: "Chama no Whats",
    );
  }
}
