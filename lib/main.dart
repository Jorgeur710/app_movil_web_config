import 'package:app_movil_web_config/presentation/screens/home_screen.dart';
import 'package:app_movil_web_config/presentation/screens/splash_screen.dart';
import 'package:app_movil_web_config/presentation/widgets/no_data_widgets.dart';
import 'package:app_movil_web_config/services/config_service.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ConfigService cs = ConfigService();
    return FutureBuilder(
        future: cs.getAllConfig(),
        builder: (BuildContext context,
            AsyncSnapshot<Map<String, dynamic>> snapshot) {
          return (snapshot.hasData)
              ? MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Material App',
                  theme: ThemeData(
                      primaryColor: Color(
                          int.parse("0x${snapshot.data!["theme"]["color"]}")),
                          useMaterial3: true,
                      brightness: (snapshot.data!["theme"]["temaOscuro"]
                          ? Brightness.dark
                          : Brightness.light),
                      textTheme: TextTheme(
                          titleMedium: TextStyle(
                              fontSize: double.parse(snapshot.data!["theme"]
                                      ["tamanio"]
                                  .toString())))),
                  home: Scaffold(
                      appBar: AppBar(
                        centerTitle: true,
                        title: Text(snapshot.data!["appbar"]["title"]),
                      ),
                      body: snapshot.data!['config']['splashscreen'] ?
                       SplashScreen(datos: snapshot.data)
                      : 
                      HomeScreen(
                        datos: snapshot.data,
                      )),
                )
              : MaterialApp(
                  title: 'Material App',
                  debugShowCheckedModeBanner: false,
                  home: Scaffold(
                    appBar: AppBar(
                      title: const Text(''),
                    ),
                    body: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [],
                      ),
                    ),
                  ),
                );
        });
  }
}
