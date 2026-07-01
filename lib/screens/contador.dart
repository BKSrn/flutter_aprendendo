import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contador = 0;

  void incrementaValor() {
    setState(() {
      this._contador++;
    });
  }

  void decrementarValor() {
    setState(() {
      this._contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Contador"),
      ),
      body: new Center(
        child: new Column(
          children: [
            new Text(
              "Voce clicou ${this._contador} vezes",
              style: new TextStyle(fontSize: 18),
            ),
            new SizedBox(height: 20),
            new ElevatedButton(
                onPressed: this.incrementaValor,
                child: new Text("Aumentar")
            ),
            new ElevatedButton(
                onPressed: () {
                  setState(() {
                    this._contador--;
                  });
                },
                child: new Text("Diminuir")
            )
          ],
        ),
      ),

    );
  }
}
