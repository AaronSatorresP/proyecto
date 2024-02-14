
import 'package:hive/hive.dart';

class BaseDeDadesCon{

  List _ListaUsuario =[];


 //Inicialitza la box
final _boxHive = Hive.box("Abrir");

void guardarUsuario(){

  
  _ListaUsuario.add("");


  //Guardar la lista de usuario
  _boxHive.put('usuaio', _ListaUsuario);
}
}

 

