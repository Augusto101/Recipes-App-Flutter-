import 'package:flutter/material.dart';
import 'package:recetas_app/src/styles/styles.dart';

Widget appBarCategoria( String title ) {
  return SliverAppBar(
    backgroundColor: colorBG,
    floating: false,
    pinned: true,
    elevation: 0.0,
    iconTheme: IconThemeData(
        color: colorIconosAppBar
    ) 
  );
}