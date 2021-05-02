import 'package:flutter/material.dart';
import 'package:recetas_app/src/providers/recetas_providers.dart';

List<Widget> categoriasListado( BuildContext context ) {
    final List<Widget> listadoCategoria = [];
    final List<dynamic> categorias = recetasProvider.categorias;

    categorias.forEach(( categoria ) {
      final Widget listadoCategoriaTemp = _imagenCategoria( context, categoria );
      listadoCategoria.add(listadoCategoriaTemp);
    });

    return listadoCategoria;
}

  Widget _imagenCategoria( BuildContext context, Map<String, dynamic> categoria) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed( context, 'categoria', arguments: categoria );
      },
      child: Stack(
        children: [
          Container(
              width: 130.0,
              height: 100.0,
              margin: EdgeInsets.only(right: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  image: NetworkImage(categoria['foto']),
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(20.0),
            child: Text(categoria['nombre'],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    decorationColor: Colors.black,
                    decorationStyle: TextDecorationStyle.wavy)),
          )
        ],
      ),
    );
  }