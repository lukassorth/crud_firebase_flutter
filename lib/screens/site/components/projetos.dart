import 'package:crud_firebase_flutter/responsive.dart';
import 'package:crud_firebase_flutter/screens/site/components/floatingActionWhatsApp.dart';
import 'package:crud_firebase_flutter/screens/site/components/header_site.dart';
import 'package:crud_firebase_flutter/screens/site/components/listImages.dart';
import 'package:flutter/material.dart';

List<String> ImgUrl = [
  "https://images.unsplash.com/photo-1614631446501-abcf76949eca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
  "https://images.unsplash.com/photo-1521783593447-5702b9bfd267?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=904&q=80",
  "https://images.unsplash.com/photo-1583847268964-b28dc8f51f92?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80",
  "https://images.unsplash.com/photo-1565538810643-b5bdb714032a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80",
];

class ProjetosSite extends StatefulWidget {
  const ProjetosSite({
    Key? key,
  }) : super(key: key);

  @override
  State<ProjetosSite> createState() => _ProjetosSiteState();
}

class _ProjetosSiteState extends State<ProjetosSite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionWhatsApp(),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            /* decoration: BoxDecoration(
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
              // Center(
              //   child: Text(
              //     "",
              //     style: TextStyle(
              //       fontSize: 45.0,
              //     ),
              //   ),
              // ),
              if (!Responsive.isDesktop(context))
                Expanded(
                  child: Container(
                    width: double
                        .infinity, //esta linha fará com que o recipiente ocupe toda a largura do dispositivo
                    height:
                        750.0, //quando você deseja criar uma lista, você deve precisar a altura e largura de seu contêiner
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      //este faz com que o scroll seja horizontal
                      children: [
                        //Colocando os itens
                        ListImages(
                          name: 'Closet',
                          imgUrl: ImgUrl[0],
                        ),
                        ListImages(
                          name: 'Bathroom',
                          imgUrl: ImgUrl[1],
                        ),
                        ListImages(
                          name: 'Living Room',
                          imgUrl: ImgUrl[2],
                        ),
                        ListImages(
                          name: 'Kitchen',
                          imgUrl: ImgUrl[3],
                        ),
                      ],
                    ),
                  ),
                )
              else
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height:
                        750.0, //quando você deseja criar uma lista, você deve precisar a altura e largura de seu contêiner
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      //este faz com que o scroll seja horizontal
                      children: [
                        //Colocando os itens
                        ListImages(
                          name: 'Closet',
                          imgUrl: ImgUrl[0],
                        ),
                        ListImages(
                          name: 'Bathroom',
                          imgUrl: ImgUrl[1],
                        ),
                        ListImages(
                          name: 'Living Room',
                          imgUrl: ImgUrl[2],
                        ),
                        ListImages(
                          name: 'Kitchen',
                          imgUrl: ImgUrl[3],
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
