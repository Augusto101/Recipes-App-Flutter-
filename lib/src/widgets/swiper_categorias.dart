import 'package:flutter/material.dart';

//Swiper
import 'package:flutter_swiper/flutter_swiper.dart';

//Provider
import 'package:recetas_app/src/providers/recetas_providers.dart';

//ViewModels
import 'package:recetas_app/src/viewModels/categorias_listado.dart';

class SwiperCategorias extends StatelessWidget {
  
  final controller = PageController(initialPage: 1, viewportFraction: 0.3);

  @override
  Widget build( BuildContext context ) {
    return Container(
      height: 110.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return FutureBuilder(
            future: recetasProvider.cargarCategorias(),
            initialData: [],
            builder: (BuildContext context, AsyncSnapshot snapshot ) {
              return PageView(
                  controller: controller, children: categoriasListado( context ));
            },
          );
        },
        itemCount: 1,
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }

  
} //Clase
