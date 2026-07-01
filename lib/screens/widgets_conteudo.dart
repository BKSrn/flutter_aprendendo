import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/title_section.dart';

class WidgetsConteudo extends StatelessWidget {
  const WidgetsConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Widget's de conteudo")
      ),
      body: new ListView(
        padding: new EdgeInsets.all(16),
        children: [
          new TitleSection(title: "Textos"),
          new Text(
              "Texto estilizado",
              style: new TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent
              )
          ),
          new Text(
              "Texto com estilo padrão",
              style: new TextStyle(
                fontSize: 18,
              )
          ),

          new Divider(),
          new TitleSection(title: "Imagem"),
          new Image.network(
            "https://picsum.photos/id/237/200/300",
            height: 240,
          ),

          new Divider(),
          new TitleSection(title: "Icone"),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              new Icon(Icons.favorite, color: Colors.red, size: 32),
              new Icon(Icons.star, color: Colors.amberAccent, size: 32),
              new Icon(Icons.settings, color: Colors.grey, size: 32)
            ],
          ),

          new Divider(),
          new TitleSection(title: "Elevated button"),
          new ElevatedButton(
            key: new Key("69"),
            onPressed: () {
              print("Botão foi clicado");
              Navigator.pop(context);
            },
            child: new Text("Clique aqui"),
          ),
        ]
      ),
    );

  }
}
