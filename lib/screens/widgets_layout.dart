import 'package:flutter/material.dart';
import 'package:new_project/widgets/title_section.dart';

class WidgetsLayout extends StatelessWidget {
  const WidgetsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Widgets de Layout"),
      ),
      body: new ListView(
        padding: new EdgeInsets.all(16),
        children: [
          new TitleSection(title: "Padding"),
          new Container(
            color: Colors.blueAccent,
            child: new Padding(
              padding: EdgeInsets.all(50),
              child: new Text("Texto com padding interno de 20 px"),
            )
          ),

          new Divider(),
          new TitleSection(title: "Align"),
          new Container(
            height: 80,
            color: Colors.blue,
            child: new Align(
              alignment: Alignment.center,
              child: new Text("Alinhamento de texto"),
            ),
          ),

          new Divider(),
          new TitleSection(title: "Center"),
          new Container(
            height: 80,
            color: Colors.blue,
            child: new Center(
              child: new Text("Alinhamento de texto"),
            ),
          ),

          new Divider(),
          new TitleSection(title: "Sized Boxd"),
          new Column(
            children: [
              new Text("Texto acima"),
              new SizedBox(height: 20),
              new Text("Texto abaixo")
            ],
          ),

          new Divider(),
          new TitleSection(title: "Expanded and Flexible (em Column) "),
          new Container(
            height: 150,
            color: Colors.blue,
            child: new Column(
              children: [
                new Expanded(
                    child: new Container(
                      color: Colors.red,
                      child: new Center(child: new Text("Expanded")),
                    )
                ),
                new Flexible(
                  flex: 1,
                  child: new Container(
                    color: Colors.amberAccent,
                    child: new Center(child: new Text("Flexible (flex: 1)")),
                  ),
                )
              ],
            ),
          ),
          new TitleSection(title: "Expanded e Flexible (Row)"),
          new Row(
            children: [
              new Expanded(
                  child: new Container(
                    height: 50,
                    color: Colors.red,
                    child: new Center(
                      child: new Text("Expanded")
                    ),
                  )
              ),
              new Flexible(
                flex: 2,
                child: new Container(
                  height: 50,
                  color: Colors.amberAccent,
                  child: new Center(
                      child: new Text("Flexibe (flex: 2)")
                  ),
                )
              ),
            ],
          ),

        ]
      ),
    );

  }

}
