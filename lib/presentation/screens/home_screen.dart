import 'package:app_movil_web_config/presentation/widgets/no_data_widgets.dart';
import 'package:app_movil_web_config/services/config_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Map<String, dynamic>? datos = {};

  HomeScreen({super.key, this.datos});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> valores = datos!["rutas"];
    List<dynamic> values = datos!["rutas"].values.toList();
    List<dynamic> keys = datos!["rutas"].keys.toList();
    List<dynamic> valoresAMostrar = [];
    for (var i = 0; i < values.length; i++) {
      if(values[i]) valoresAMostrar.add(keys[i]);
    }
    return Scaffold(
      body: ListView.builder(
        itemCount: valoresAMostrar.length,
        itemBuilder: (context, index) {
          return Card(
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child:  Text(valoresAMostrar[index],style:Theme.of(context).textTheme.titleMedium)
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
