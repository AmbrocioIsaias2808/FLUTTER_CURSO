
import "package:flutter/material.dart";

void main(){
  return runApp(Raiz());
}



class Raiz extends StatelessWidget {
  Raiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green
      ),
      title: "Mi primera app",
      home: DetallesScreen(),
    );
  }
}

class DetallesScreen extends StatelessWidget {
  const DetallesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Widget fila =  Padding(
      padding: EdgeInsets.all(20),
      child:  Row(
        children: [
          Column(
              children:[
                Text("Lago de Chapala", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text("Jalisco y Michoacán", style: TextStyle(fontSize: 15),),
              ]
          ),
          Expanded(child: SizedBox()),
          Column(
            children: [
              Icon(Icons.star, color: Colors.red,),
              Text("4.5", style: TextStyle(fontSize: 20),),
            ],
          )






        ],
      ),
    );


    return Scaffold(
      body: Column(
          children: [
            Image.network("https://www.ceajalisco.gob.mx/img/chapala/chapala-sep2010.jpg"),
            fila,
            Row(
              children: [
                Expanded(
                  child: Column(
                    children:[
                      Icon(Icons.call, color: Colors.blue),
                      Text("Llamar", style: TextStyle(fontSize: 15, color: Colors.blue))
                    ]
                  ),
                ),

                Expanded(
                  child: Column(
                      children:[
                        Icon(Icons.send_outlined, color: Colors.blue),
                        Text("Ruta", style: TextStyle(fontSize: 15, color: Colors.blue))
                      ]
                  ),
                ),

                Expanded(
                  child: Column(
                      children:[
                        Icon(Icons.share, color: Colors.blue),
                        Text("Share", style: TextStyle(fontSize: 15, color: Colors.blue))
                      ]
                  ),
                ),



              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                textAlign: TextAlign.justify,
              ),
            )



          ]
      ),
    );
  }
}





