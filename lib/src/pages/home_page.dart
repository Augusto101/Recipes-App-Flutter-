import 'package:flutter/material.dart';

//Provider
import 'package:recetas_app/src/providers/recetas_providers.dart';

//Estilos
import 'package:recetas_app/src/styles/styles.dart';

//ViewModels
import 'package:recetas_app/src/viewModels/receta_listado.dart';

//Widgets
import 'package:recetas_app/src/widgets/app_bar.dart';
import 'package:recetas_app/src/widgets/swiper_categorias.dart';
import 'package:recetas_app/src/widgets/swiper_populares.dart';
import 'package:recetas_app/src/widgets/titles.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  
  @override
  Widget build(BuildContext context) {

    recetasProvider.cargarRecetas();

    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: colorBG,
        body: CustomScrollView(
          slivers: <Widget>[
            appBar( context, _scaffoldKey ),
            SliverList(
                delegate: SliverChildListDelegate([
              Column(
                children: <Widget>[
                  SwiperPopulares(),
                  titles('Categorías', titlesStyle ),
                  SwiperCategorias(),
                  titles('Recetas Populares', titlesStyle ),
                  FutureBuilder(
                    future: recetasProvider.cargarRecetas(),
                    initialData: [],
                    builder: ( BuildContext context, snapshot ) {
                      
                      return Column(
                        children: recetasListado( context, snapshot.data ),
                      );
                    }
                  )
                  
                ],
              )
            ]))
          ],
        ));
  }
}
