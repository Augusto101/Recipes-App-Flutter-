import 'package:flutter/material.dart';
//Firebase
import 'package:firebase_core/firebase_core.dart';

//Pages
import 'package:recetas_app/src/pages/categorias.dart';
import 'package:recetas_app/src/pages/detalle_receta.dart';
import 'package:recetas_app/src/pages/home_page.dart';

//Estilos
import 'package:recetas_app/src/styles/styles.dart';
 
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp() );
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build( BuildContext context ) { 

    return MaterialApp(
      theme: ThemeData(
        primaryColorLight: colorTitle,
      ),
      debugShowCheckedModeBanner: false,
      routes: <String,WidgetBuilder> {
        '/' : ( BuildContext context ) => HomePage(),
        'categoria' : ( BuildContext context ) => CategoriaPage(),
        'detalle' : ( BuildContext context ) => DetallePage(),
      },
    );
  }
}

