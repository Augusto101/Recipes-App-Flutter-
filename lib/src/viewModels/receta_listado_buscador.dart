import 'package:flutter/material.dart';

//Estilos
import 'package:recetas_app/src/styles/styles.dart';

List<Widget> recetasListadoBuscador( BuildContext context, List<dynamic> recetas, String recetaBuscada ) {
          final List<Widget> listadoRecetasEncontradas = [];

          recetas.forEach(( receta ) {
            var titulo = receta['titulo'].toString().toLowerCase();
            if ( titulo.contains( recetaBuscada )) {
              final Widget recetaEncontrada = _receta( context, titlesRecipeStyle, receta  );
              listadoRecetasEncontradas.add(recetaEncontrada);           
            } 
          });

          return listadoRecetasEncontradas;
}

Widget _receta( BuildContext context, TextStyle estilos,  Map<String,dynamic> receta ) {
      return Column(
          children: <Widget>[
             GestureDetector(
                onTap: () {
                  Navigator.pushNamed( context, 'detalle', arguments: receta );
                },
                child: Container(
                  margin: EdgeInsets.only( top: 10.0, bottom: 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image: NetworkImage( receta['foto'] ),
                      fit: BoxFit.fill,
                      width: 350.0,
                      height: 200.0,
                    ),
                  ),
                ),
             ),
             Container(
               margin: EdgeInsets.only( left: 30.0, right: 30.0, bottom: 20.0 ),
               child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                       receta['titulo'],
                       textAlign: TextAlign.left,
                       style: estilos,
                    ),
                    Container(
                      margin: EdgeInsets.only(top:10.0),
                      child: Text( receta['descripcion'],
                       textAlign: TextAlign.left,
                       style: descripcionRecipeStyle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:10.0),
                      child: 
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.alarm, color: colorIconos),
                                Container(
                                  margin: EdgeInsets.only(left:5.0),
                                  child: Text(receta['duracion'],
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.bold,
                                    color: colorTitle,
                                    fontSize: 14.0
                                  ),
                                  ),
                                )
                              ],
                            )
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: <Widget>[
                                Icon( Icons.fastfood, color: colorIconos),
                                Container(
                                   margin: EdgeInsets.only(left:5.0),
                                  child: Text(receta['dificultad'],
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.bold,
                                    color: colorTitle,
                                    fontSize: 14.0
                                  ),
                                  ),
                                )
                              ],
                            )
                          )
                        ],
                      ) ,
                    )
                  ],
               ),
             )
          ],
      );
}
