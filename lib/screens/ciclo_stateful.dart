import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CicloStateful extends StatefulWidget {
  final Color cor;
  const CicloStateful({super.key, required this.cor});


  @override
  State<CicloStateful> createState() => new _CicloStatefulState();
}

class _CicloStatefulState extends State<CicloStateful> {
  // chamo da class super o metodo initState
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState: Widget foi inserido na árvore");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies: Widget foi inserido na árvore");
  }

  @override
  void didUpdateWidget(CicloStateful oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget: Atributos mudaram");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose: Widget removido da árvore");
  }

  @override
  Widget build(BuildContext context) {
    print("build: Widget construido/reconstruido");
    return new Container(
      height: 200,
      width: 200,
      color: this.widget.cor,
      child: new Center(
        child: new Text(
          "Cor Atual",
          style: new TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
