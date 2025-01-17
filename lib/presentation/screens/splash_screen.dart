import 'package:app_movil_web_config/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SplashScreen extends StatelessWidget {
  Map<String, dynamic>? datos = {};
  SplashScreen({super.key, this.datos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Alinea el texto a la izquierda
          children: [
          SizedBox(height: 100,),
            Text(
        "Autores: ${datos!["config"]["autores"]}",
        style:Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 20,color: Theme.of(context).primaryColor)
            ),
            SizedBox(height: 8), // Espaciado entre textos
            Text(
        "Año: ${datos!["config"]["anio"]}",
        style:Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 20,color: Theme.of(context).primaryColor)
            ),
            SizedBox(height: 8), // Espaciado entre textos
            Text(
        "Curso: ${datos!["config"]["curso"]}",
        style:Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 20,color: Theme.of(context).primaryColor)
            ),
            
          ],
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen(datos: datos,)));
              },
              child: Icon(Icons.arrow_back_ios,),),
    );
  }
}
