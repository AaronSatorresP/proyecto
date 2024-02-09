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
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
              decoration: InputDecoration(
                labelText: 'Nombre',
              ),
                            ),
              SizedBox(height: 16),
              TextField(
                 decoration: InputDecoration(
                labelText: 'Contraseña'),
              ),
            ], 
            ),
        ),
      ),
      );
  }
}