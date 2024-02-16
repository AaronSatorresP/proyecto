import 'package:flutter/material.dart';
import 'package:proyecto/database/guardardatos.dart';
import 'package:proyecto/paginas/inici.dart';
import 'package:proyecto/paginas/primera.dart';

class segona_registrarte extends StatelessWidget {

  TextEditingController controladorData = TextEditingController();
  TextEditingController contrasena = TextEditingController();
  TextEditingController apellido = TextEditingController();
  TextEditingController nom = TextEditingController();
  
   segona_registrarte({super.key});

  @override
  Widget build(BuildContext context) {

    controladorData.text = _formatDate(DateTime.now());
    BaseDeDadesCon bd= BaseDeDadesCon();

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: _imagen(context, 'assets/images.png'),
        ),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _ColorTextos('Nombre', nom),
                 
                SizedBox(width: 16),
                _ColorTextos('Apellido', apellido),
               
                 SizedBox(width: 16),
                 _ColorTextos(
                  'Contraseña',
                  contrasena
                 ),
                SizedBox(width: 16),
                TextField(
                  controller: controladorData,
                 decoration: InputDecoration(
                labelText: 'Fecha_nacimineto'
                ), 
               ),
               SizedBox(width: 16),
               ElevatedButton(
                onPressed: (){
                  
                  bd.ListaUsuario.add(["nom usu", "psw"]);
                  Navigator.pop(context);
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => primera_Iniciarsesion(),));
                },
                child: Text('Registrarte')
                ),
              ],
            ),
          ),
         

    );
  }
  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }


  Widget _ColorTextos(String labelText, TextEditingController controladorCamp) {

    return TextField(
      controller: controladorCamp,
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.white, 
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