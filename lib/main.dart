import "package:contador/Controlador.dart";
import "package:contador/presentacion/pantallas/contador/ContadorScreen.dart";
import "package:contador/presentacion/pantallas/detalles/Detalles.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

void main(){
  return runApp(Suelo());
}


class Suelo extends StatelessWidget {
  const Suelo({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context)=> Controlador()),
        ],
      child: Raiz(),
    );
  }
}



class Raiz extends StatelessWidget {
  Raiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: context.watch<Controlador>().modoOscuro ? Brightness.dark :  Brightness.light
      ),
      title: "Mi primera app",
      home: HomeScreen(),
      routes: {
        "/home" : (context)=> HomeScreen(),
        "/contador" : (context)=> ContadorScreen(),
        "/detalles" : (context) => DetallesScreen()
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: MenuLateral(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: (){
            context.read<Controlador>().cambiarTema();
        },
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Card(
              elevation: 6,
              color: Colors.green,
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text("Bienvenido!!!", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Text("C"),
                  ),
                  title: Text("Contador"),
                  subtitle: Text("Una app de contar"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: (){
                      Navigator.pushNamed(context, "/contador");
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text("D"),
                    backgroundColor: Colors.brown,
                  ),
                  title: Text("Detalles"),
                  subtitle: Text("Lago de Chapala"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: (){
                      Navigator.pushNamed(context, "/detalles");
                  }
                  
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Text("C"),
                    backgroundColor: Colors.red,
                  ),
                  title: Text("Configuracion"),
                  subtitle: Text("Configuracion"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: (){},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.dzoom.org.es/wp-content/uploads/2020/02/portada-foto-perfil-redes-sociales-consejos.jpg"),
                  ),
                ),
                Text("AMBROCIO LAUREANO", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Expanded(child: ListView(
            children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: (){

                  },
                ),
              ListTile(
                leading: Icon(Icons.watch),
                title: Text("Contador"),
                onTap: (){
                  Navigator.pushNamed(context, "/contador");
                },
              ),
              ListTile(
                leading: Icon(Icons.file_copy),
                title: Text("Detalles"),
                onTap: (){
                  Navigator.pushNamed(context, "/detalles");
                },
              ),
              ListTile(
                leading: Icon(Icons.handyman),
                title: Text("Configuracion"),
                onTap: (){},
              ),
            ],
          ))
          
        ]
      ),
    );
  }
}










