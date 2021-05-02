import 'package:flutter/material.dart';

//Estilos
import 'package:recetas_app/src/styles/styles.dart';

//Widgets
import 'package:recetas_app/src/widgets/app_bar_detalle.dart';
import 'package:recetas_app/src/widgets/swiper_ingredientes.dart';
import 'package:recetas_app/src/widgets/titles.dart';

class DetallePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> receta =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: colorBG,
      body: CustomScrollView(
        slivers: <Widget>[
          appBarDetalle(receta['foto']),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, right: 8.0, bottom: 8.0),
              child: _cuerpoReceta(receta, titlesRecipeStyleDetalle),
            ),
            titles('Ingredientes', titlesStyle),
            SizedBox(
              height: 20.0,
            ),
            sliderIngredientes(receta['ingredientes']),
            SizedBox(
              height: 15.0,
            ),
            titles('Preparación', titlesStyle),
            _textoDescripcion(receta['preparacion']),
            SizedBox(
              height: 35.0,
            ),
          ]))
        ],
      ),
    );
  }
} //Clase

Widget _cuerpoReceta(Map<String, dynamic> receta, TextStyle estilos) {
  return Container(
    margin: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          receta['titulo'],
          textAlign: TextAlign.left,
          style: estilos,
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Text(
            receta['descripcion'],
            textAlign: TextAlign.left,
            style: descripcionRecipeStyle,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.alarm, color: colorIconos),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Text(
                          receta['duracion'],
                          style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                              color: colorTitle,
                              fontSize: 14.0),
                        ),
                      )
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.fastfood, color: colorIconos),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Text(
                          receta['dificultad'],
                          style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                              color: colorTitle,
                              fontSize: 14.0),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        )
      ],
    ),
  );
}

Widget _textoDescripcion(String texto) {
  return Container(
    margin: EdgeInsets.only(top: 5.0, left: 30.0, right: 30.0),
    child: Text(
      texto,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontFamily: 'Avenir',
          fontWeight: FontWeight.normal,
          color: Color.fromRGBO(15, 55, 91, 1),
          fontSize: 13.0),
    ),
  );
}
