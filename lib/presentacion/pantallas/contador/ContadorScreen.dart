import "package:flutter/material.dart";

class ContadorScreen extends StatefulWidget {
  ContadorScreen({super.key});
  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {

  int contador = 0;

  @override
  Widget build(BuildContext context) {

    Widget BotonIncremental= FloatingActionButton(
      onPressed: (){
        contador++;
        setState(() {});
      },
      child: Icon(Icons.add),
    );

    dynamic BotonDecremental= FloatingActionButton(
      onPressed: (){
        contador--;
        setState(() {});
      },
      child: Icon(Icons.remove),
    );


    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Mi primera app"),
      ), //aqui se cerro el appbar
      body: Center(
        child: Text("$contador", style: TextStyle(fontSize: 40),),
      ), //aqui se cerro el center
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BotonIncremental,
          SizedBox(height: 20,),
          BotonDecremental,
        ],
      ), //Aqui se cerro la columna
    ); //Aqui se cerro el scaffold
  }
}