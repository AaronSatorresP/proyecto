import 'package:flutter/material.dart';
import 'package:proyecto/paginas/inici.dart';

class segona_registrarte extends StatelessWidget {

  TextEditingController controladorData = TextEditingController();
  
   segona_registrarte({super.key});

  @override
  Widget build(BuildContext context) {

    controladorData.text = _formatDate(DateTime.now());


    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Registrarte"),
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
                const TextField(
                   decoration: InputDecoration(
                  labelText: 'Nombre'
                  ),
                 ),
                SizedBox(width: 16),
                const TextField(
                   decoration: InputDecoration(
                  labelText: 'Apellido'),
                ),
                 SizedBox(width: 16),
                const TextField(
                   decoration: InputDecoration(
                  labelText: 'Contraseña'),
                ),
                SizedBox(width: 16),
                TextField(
                  controller: controladorData,
                 decoration: InputDecoration(
                labelText: 'Fecha_nacimineto'
                ),
               ),
              ],
            ),
          ),
         ),

    );
  }
  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}