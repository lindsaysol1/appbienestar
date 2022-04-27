import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';



class Carrusel extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView(
    children: [
      Text('Actividades para tí'),
      CarouselSlider(items: [
        Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [BoxShadow(color: Colors.black,
            offset: Offset( 2.0,2.0),
            blurRadius: 3.0,
            spreadRadius: 2.0,
          ),],
          image:DecorationImage(image: AssetImage("assets/images/Imagen1.jpg"))
        ),
      ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: [BoxShadow(color: Colors.black,
                offset: Offset( 2.0,2.0),
                blurRadius: 3.0,
                spreadRadius: 2.0,
              ),],
              image:DecorationImage(image: AssetImage("assets/images/Imagen2.jpg"))
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: [BoxShadow(color: Colors.black,
                offset: Offset( 2.0,2.0),
                blurRadius: 3.0,
                spreadRadius: 2.0,
              ),],
              image:DecorationImage(image: AssetImage("assets/images/Imagen3.jpg"))
          ),
        ),
      ], options: CarouselOptions(
        height: 190.0,
        autoPlayCurve: Curves.easeInOut,
        enlargeCenterPage: true,
        autoPlayInterval: Duration(seconds: 3),
        scrollDirection: Axis.horizontal,

      ),
      ),
    ],
    ),
    );
  }
  }