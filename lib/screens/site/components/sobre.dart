import 'package:flutter/material.dart';

import '../../../constants.dart';

class SobreSite extends StatelessWidget {
  const SobreSite({
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
            "Sobre",
            style: TextStyle(
              fontSize: 50.0,
            ),
          ),
        ],
      ),
    );
  }
}
