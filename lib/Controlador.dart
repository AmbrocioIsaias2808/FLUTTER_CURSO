
import 'package:flutter/material.dart';

class Controlador extends ChangeNotifier{


  bool modoOscuro = false;

  void cambiarTema(){
    if(modoOscuro==true){
      modoOscuro=false;
    }else{
      modoOscuro=true;
    }

    notifyListeners();
  }

}