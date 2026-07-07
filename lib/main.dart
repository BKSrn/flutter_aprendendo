import 'package:flutter/material.dart';
import 'package:new_project/screens/ciclo_stateful_parent.dart';
import 'package:new_project/screens/ciclo_stateful.dart';
import 'package:new_project/screens/contador.dart';
import 'package:new_project/screens/widgets_conteudo.dart';
import 'package:new_project/screens/widgets_layout.dart';
import 'package:new_project/widgets/title_section.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blueAccent),
      ),
      home: new ListContents(),
    );

  }

}

class ListContents extends StatelessWidget {
  final List<CatalogoItem> secoes = [
    new CatalogoItem(
      titulo: 'Widgets Conteúdo',
      icone: Icons.text_fields,
      descricao: 'Exemplos de widgets básicos como Text, Image, Icon...',
      destino: new WidgetsConteudo(),
    ),
    new CatalogoItem(
      titulo: 'Widgets Layout',
      icone: Icons.view_agenda,
      descricao: 'Exemplos / demonstrações de padding, column, flexible, card',
      destino: new WidgetsLayout(),
    ),
    new CatalogoItem(
        titulo: "Ciclo de vida StateFul",
        icone: Icons.sync,
        descricao: "Entendendo o ciclo de vida de um StateFulWidget",
        destino: new CicloStatefulParent()
    ),
    new CatalogoItem(
        titulo: "Contador - setSate",
        icone: Icons.refresh,
        descricao: "Exemplo de contador utilizando setState e gerenciamento de estado",
        destino: new Contador()
    )
  ];

  ListContents({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        elevation: 2,
        title: new Text(
          "Catalog de Widgets",
          style: new TextStyle(color: Colors.blue),
        ),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        padding: new EdgeInsets.all(16),
        crossAxisSpacing: 16.5,
        childAspectRatio: 0.9, // valores < 1 == retangular valores > 1 == quadrado
        children: secoes.map(
            (ele) =>
            new GestureDetector(
              onTap: () => Navigator.push( // metodo statico
                  context,
                  new MaterialPageRoute(builder: (_) => ele.destino)
              ),
              child: new Card(
                elevation: 5,
                child: new Padding(
                  padding: EdgeInsets.all(16),
                  child: new Column(
                    children: [
                      new Icon(
                        ele.icone,
                        size: 48,
                        color: Colors.blue, // enum
                      ),
                      new Text(
                        ele.titulo,
                        textAlign: TextAlign.center, // enum
                        style: new TextStyle(
                          fontWeight: FontWeight.bold, // enum
                          fontSize: 16,
                          color: Colors.blue
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis, // enum
                      ),
                      new Text(
                        ele.descricao,
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              )
            ),
        ).toList(),

      ),

    );

  }

}

class CatalogoItem {
  final String titulo;
  final IconData icone;
  final String descricao;
  final Widget destino;

  const CatalogoItem({
    required this.titulo,
    required this.icone,
    required this.descricao,
    required this.destino
  });
}

