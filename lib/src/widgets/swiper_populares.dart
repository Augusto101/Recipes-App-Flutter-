import 'package:flutter/material.dart';

//Swiper
import 'package:flutter_swiper/flutter_swiper.dart';


class SwiperPopulares extends StatelessWidget {

  final controller = PageController(
    initialPage: 1,
    viewportFraction: 1
  );
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: Swiper(
        itemBuilder: ( BuildContext context, int index ) {
          return PageView(
            controller: controller,
            children: <Widget>[
              _tarjeta(),
              _tarjeta2(),
              _tarjeta3(),
              _tarjeta4()
            ],
          );
        },
        itemCount: 1,
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }

 Widget _tarjeta() {
   return Container(
      margin: EdgeInsets.only(right:50.0),
      alignment: AlignmentDirectional.centerEnd,
      child: Image(
        image: NetworkImage('https://gbprodstorage.blob.core.windows.net/files/editor/32f7603420fc8839f02af8cf6d7aa28c1541001989.jpg'),
        fit: BoxFit.fill,
      ),
   );
 }

 Widget _tarjeta2() {
   return Container(
      margin: EdgeInsets.only(right:50.0),
      alignment: AlignmentDirectional.centerEnd,
      child: Image(
        image: NetworkImage('https://i.pinimg.com/originals/02/2d/ad/022dad6093e6d2ca1b1fcb89682f5359.jpg'),
        fit: BoxFit.fill,
      ),
   );
 }

  Widget _tarjeta3() {
   return Container(
      margin: EdgeInsets.only(right:50.0),
      alignment: AlignmentDirectional.centerEnd,
      child: Image(
        image: NetworkImage('https://i.pinimg.com/originals/d4/a2/e3/d4a2e385bd0bbf572c69fd2554bde6c0.png'),
        fit: BoxFit.fill,
      ),
   );
 }

   Widget _tarjeta4() {
   return Container(
      margin: EdgeInsets.only(right:50.0),
      alignment: AlignmentDirectional.centerEnd,
      child: Image(
        image: NetworkImage('https://es.quotemaster.org/images/d7/d754a81bffee3cb5787a64712cdee6db.jpg'),
        fit: BoxFit.fill,
      ),
   );
 }

}//Clase