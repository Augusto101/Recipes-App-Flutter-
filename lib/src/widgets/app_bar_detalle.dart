import 'package:flutter/material.dart';
import 'package:recetas_app/src/styles/styles.dart';

Widget appBarDetalle( String imagen ) {
  return SliverAppBar(
    backgroundColor: colorBG,
    expandedHeight: 200.0,
    floating: false,
    pinned: true,
    elevation: 0.0,
    iconTheme: IconThemeData(
        color: colorIconosAppBar
    ),
    flexibleSpace: FlexibleSpaceBar(
      background: FadeInImage(
        placeholder: NetworkImage(imagen), 
        image: NetworkImage(imagen),
        fadeInDuration: Duration( milliseconds:150 ),
        fit: BoxFit.cover  
      ),
    ), 
  );
}