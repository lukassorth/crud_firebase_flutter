import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProjetosSite extends StatelessWidget {
  const ProjetosSite({
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
            "Projetos",
            style: TextStyle(
              fontSize: 50.0,
            ),
          ),
        ],
      ),
    );
  }
}
