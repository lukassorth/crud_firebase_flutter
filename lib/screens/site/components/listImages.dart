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
      onTap: () {},
      child: Container(
        width: 350.0,
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
