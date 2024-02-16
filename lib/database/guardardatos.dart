
import 'package:hive/hive.dart';

class BaseDeDadesCon{

  List ListaUsuario =[];


 //Inicialitza la box
final _boxHive = Hive.box("Abrir");

void guardarUsuario(){


  //Guardar la lista de usuario
  _boxHive.put('usuaio', ListaUsuario);
}
}

 

