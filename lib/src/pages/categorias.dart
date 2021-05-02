import 'package:flutter/material.dart';
//Providers
import 'package:recetas_app/src/providers/recetas_providers.dart';

//Estilos
import 'package:recetas_app/src/styles/styles.dart';

//ViewModels
import 'package:recetas_app/src/viewModels/receta_listado.dart';

//Widgets
import 'package:recetas_app/src/widgets/app_bar_categoria.dart';
import 'package:recetas_app/src/widgets/titles.dart';

class CategoriaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Map<String,dynamic> categoria =  ModalRoute.of(context).settings.arguments;
  
    return Scaffold(
      backgroundColor: colorBG,
      body: CustomScrollView(
        slivers: <Widget>[
          appBarCategoria( 'Pizza' ),
          SliverList(
              delegate: SliverChildListDelegate([
            titles( categoria['nombre'], titlesStyleCategoria ),
            //swiperPopulares(),
            FutureBuilder(
                    future: recetasProvider.cargarRecetaCategorias( categoria['nombre']),
                    initialData: [],
                    builder: ( BuildContext context, AsyncSnapshot snapshot ) {
                        return Column(
                            children: recetasListado( context, snapshot.data )
                        );
                    }
            )
          ]))
        ],
      ),
    );
  }

}//Clase
