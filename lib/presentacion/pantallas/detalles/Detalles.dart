import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class Detalles extends StatelessWidget {
  const Detalles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget imagen2 = Image.asset("assets/img1.jpg");
    Widget imagen = Image.network("https://www.ceajalisco.gob.mx/img/chapala/chapala-sep2010.jpg");
    Widget titular = Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Lago de Chapala", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text("Jalisco y Michoacán", style: TextStyle(fontSize: 15),),
              ],
            ),
            Expanded(child: SizedBox()),
            Column(
              children: [
                Icon(Icons.star, color: Colors.red,),
                Text("4.5", style: TextStyle(fontSize: 20),),
              ],
            )

          ],
        )
    );
    Widget acciones =Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
            children:[
              IconButton(onPressed: (){
                final Uri emailLaunchUri = Uri(
                  scheme: 'tel',
                  path: '8683019942',
                );

                launchUrl(emailLaunchUri);
              }, icon: Icon(Icons.call, color: Colors.blue,)),
              Text("Llamar", style: TextStyle(fontSize: 15, color: Colors.blue),),
            ]
        ),
        Column(
            children:[
              IconButton(onPressed: (){
                final Uri emailLaunchUri = Uri(
                  scheme: 'https',
                  path: 'pub.dev/packages/url_launcher',
                );

                launchUrl(emailLaunchUri);
              }, icon: Icon(Icons.send_outlined, color: Colors.blue,)),
              Text("Ruta", style: TextStyle(fontSize: 15, color: Colors.blue),),
            ]
        ),
        Column(
            children:[
              IconButton(onPressed: (){
                Share.share('check out my website https://example.com');
              }, icon: Icon(Icons.share, color: Colors.blue,)),
              Text("Compartir", style: TextStyle(fontSize: 15, color: Colors.blue),),
            ]
        ),
      ],
    );
    dynamic  texto = Padding(
      padding: EdgeInsets.all(20),
      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", textAlign: TextAlign.justify,),

    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imagen2,
            titular,
            acciones,
            texto
          ],),
      ),
    );
  }
}