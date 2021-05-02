import 'package:flutter/material.dart';
import 'package:recetas_app/src/delegates/recetas_search_delegate.dart';

Widget appBar( BuildContext context, GlobalKey<ScaffoldState> key ) {
     return SliverAppBar(
        backgroundColor: Color.fromRGBO(244, 252, 255, 1.0),
        floating: false,
        leading: GestureDetector(
          onTap:() {
            key.currentState.openDrawer();
          },
          child: Container(
             padding: EdgeInsets.all(15.0),
             child: Image(
               image: AssetImage('assets/menu.png'),
               width: 10.0,
               height: 10.0,
             ),
          ),
        ),
        actions: <Widget>[
           Container(
              padding: EdgeInsets.all(15.0),
              child: IconButton(
                    onPressed: () {
                      showSearch(
                        context: context, 
                        delegate: RecetasSearchDelegate()
                      );
                    },
                    icon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(183, 195, 206, 1.0),
                      size: 25.0,
                    ), 
              ),
           )
        ],
     );
}

