import 'package:flutter/material.dart';

import '../../../constants.dart';

class ContatoSite extends StatelessWidget {
  const ContatoSite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contato",
            style: TextStyle(
              fontSize: 50.0,
            ),
          ),
        ],
      ),
    );
  }
}
