import 'package:flutter/material.dart';
import 'package:proyecto/paginas/inici.dart';

class primera_Iniciarsesion extends StatelessWidget {
  const primera_Iniciarsesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Center(
          child: Text("Iniciar Session"),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
              Navigator.push(
                context,
               MaterialPageRoute(builder: (context) => inici(),));
          }, 
          icon: Icon(Icons.start), )
        ],
      ),
      body: Center(
        child: Padding(
          padding:   EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: TextField(
                 decoration: InputDecoration(
                labelText: 'nombre',
                ),
              ),
              ),
              SizedBox(width: 16),
              Expanded(child: TextField(
                 decoration: InputDecoration(
                labelText: 'contraseña'),
              ),
              ),
            ], 
            ),
          ),
        ),
      );
  }
}