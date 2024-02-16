import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:proyecto/paginas/inici.dart';
import 'package:proyecto/paginas/segona.dart';

class primera_Iniciarsesion extends StatelessWidget {
   primera_Iniciarsesion({super.key});

 TextEditingController usuariopuesto = TextEditingController();
  TextEditingController contrasenapuesta=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: _imagen(context, 'assets/images.png'),
        ),
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
          icon: Icon(Icons.start),
           ),
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
                controller: usuariopuesto,
              decoration: InputDecoration(
                labelText: 'Nombre',
              ),
               ),
              SizedBox(height: 16),
              TextField(
                controller: contrasenapuesta,
                obscureText: true,
                 decoration: InputDecoration(
                labelText: 'Contraseña'),
              ),
              ElevatedButton(
                onPressed: (){
                   if (usuariopuesto.text.isEmpty || contrasenapuesta.text.isEmpty) {
                  
                  return;
                }
                
                 Navigator.push(context, MaterialPageRoute(builder: (context) => inici(),));
                }, 
                child: Text('Iniciar')
                ),
                TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => segona_registrarte(),));
                  },
                   child: Text('Registrarse'),
                   ),
            ], 
            ),
        ),
      ),
      );
  }
  Widget _imagen(BuildContext context, String item) {
    return GestureDetector(
      child: Image.asset(
        item,
        width: 100, 
        height: 100, 
      ),
    );
  }
}