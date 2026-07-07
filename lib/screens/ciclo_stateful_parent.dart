import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/screens/ciclo_stateful.dart';

class CicloStatefulParent extends StatefulWidget {
  const CicloStatefulParent({super.key});

  @override
  State<CicloStatefulParent> createState() => _CicloStatefulParentState();
}

class _CicloStatefulParentState extends State<CicloStatefulParent> {
  Color corAtual = Colors.blueAccent;

  void trocarCor() {
    setState(() {
      this.corAtual = corAtual == Colors.blueAccent ? Colors.purple
          : Colors.blueAccent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Ciclo de vida - stateFulWidget (Parent)"),
      ),
      body: new Column(
        children: [
          new Text(
            "Simulando os diferentes estágios do ciclo de vida de um StateFulWidget",
            textAlign: TextAlign.center
          ),
          new SizedBox(height: 20,),
          new CicloStateful(cor: this.corAtual),
          new SizedBox(height: 20,),
          new ElevatedButton(
            onPressed: this.trocarCor,
            child: new Text("Trocar cor")
          ),
        ],
      ),

    );
  }
}
