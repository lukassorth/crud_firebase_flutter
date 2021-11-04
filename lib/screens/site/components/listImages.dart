import 'package:crud_firebase_flutter/responsive.dart';
import 'package:flutter/material.dart';

class ListImages extends StatelessWidget {
  const ListImages({
    Key? key,
    required this.name,
    required this.imgUrl,
  }) : super(key: key);

  final String name;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //este widget tornará seu contêiner clicável
      onTap: () {
        print(name);
        showModalBottomSheet(
          context: context,
          builder: (ctx) => _buildBottomSheet(ctx),
        );
      },
      child: Container(
        width: ((Responsive.isMobile(context))
            ? 320.0
            : MediaQuery.of(context).size.width / 4.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imgUrl),
            fit: BoxFit.cover,
            repeat: ImageRepeat.noRepeat,
            opacity: 0.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 22.0),
            ),
          ],
        ),
      ),
    );
  }
}

Container _buildBottomSheet(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.9,
    child: ListView(
      children: [
        ListTile(
          title: Text(
            "Imagens",
          ),
        )
      ],
    ),
  );
}
