import 'package:flutter/material.dart';
import 'package:proyecto/paginas/inici.dart';

void main() {
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

