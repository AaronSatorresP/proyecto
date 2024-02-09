import 'package:flutter/material.dart';
import 'package:proyecto/paginas/primera.dart';
import 'package:proyecto/paginas/segona.dart';

class inici extends StatelessWidget {
  const inici({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Center(
          child: Text("Inicio"),
        ), 
        actions: [
          IconButton(
            
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
               MaterialPageRoute(builder: (context) => primera_Iniciarsesion(),));

            },
           icon: Icon(Icons.login)
           ),
           IconButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
               MaterialPageRoute(builder: (context) => segona_registrarte(),));

            },
            icon: Icon(Icons.receipt)
            ),
            
        ], 
      ), 
      
    );
  }
}