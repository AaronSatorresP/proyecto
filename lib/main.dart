import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:proyecto/paginas/inici.dart';

void main() async{

  await Hive.initFlutter();

  var box = await Hive.openBox("Abrir");


  runApp(const Proyecto());

}



class Proyecto extends StatelessWidget {
  const Proyecto({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:inici(),
    );
    
  }

  
  }

