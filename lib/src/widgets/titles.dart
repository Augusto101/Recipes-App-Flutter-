import 'package:flutter/material.dart';

Widget titles( String texto, TextStyle estilos ) {
  return Container(
    alignment: AlignmentDirectional.topStart,
    margin: EdgeInsets.only(left:30.0),
    child: Text(texto, style: estilos,)
  );
}