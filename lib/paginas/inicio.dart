import 'dart:html';

import 'package:appbienestar/controladores/Controlador_pagina.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../controladores/Usuario.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'horas.dart';


class Inicio extends StatelessWidget {

  @override
  Widget build(context) {

    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final ControladorPagina c = Get.put(ControladorPagina());
    final Usuario u = Get.put(Usuario());

    return Scaffold(
      body:Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/Circulo.png'),
                  alignment: Alignment.topLeft
              )
            ),
          ),
          ListView(
            padding: EdgeInsets.all(15),
            children: [
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Image.asset('assets/images/usuario.png'),
                    Text('Hola',
                      style: GoogleFonts.quicksand(textStyle: TextStyle(color: Color(0xFF06ABC8),
                          fontSize: 30,
                          fontWeight: FontWeight.w800 )),
                    ),
                  ],
                ),

              ),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                      ),]
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10,),
                      alignment: Alignment.topLeft,
                      child: Text('Progreso de Horas',
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(color: Colors.blueGrey[900],
                              fontSize: 14, fontWeight: FontWeight.w800,)),
                      ),
                    ),

                    new LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 50,
                      animation: true,
                      barRadius: Radius.circular(10),
                      lineHeight: 20.0,
                      animationDuration: 2000,
                      percent: 0.8,
                      center: Text("80 horas", style: TextStyle(
                          fontWeight: FontWeight.w300)),
                      backgroundColor: Color(0xFFF6F6F6),
                      progressColor: Color(0xFFC9D400),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top:20)),
              Container(
                child: Text('Actividades que podrían gustarte',
                  style: GoogleFonts.quicksand(textStyle: TextStyle(color: Colors.blueGrey[900],
                      fontSize: 18,
                      fontWeight: FontWeight.w800 )),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:20)),
              CarouselSlider(items: [
                InkWell(
                  onTap: (){
                    Get.to(Horas());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*1.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset("assets/images/Imagen1.jpg"),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(Horas());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*1.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset("assets/images/Imagen2.jpg"),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(Horas());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*1.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset("assets/images/Imagen3.jpg"),
                      ),
                    ),
                  ),
                ),

                InkWell(
                  onTap: (){
                    Get.to(Horas());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*1.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset("assets/images/Imagen4.jpg"),
                      ),
                    ),
                  ),
                ),
              ], options: CarouselOptions(
                height: 140.0,
                aspectRatio: 16/9,
                viewportFraction: 0.5,
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              ),
              Padding(padding: EdgeInsets.only(top:20)),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Actividades Recientes',
                      style: GoogleFonts.quicksand(textStyle:
                      TextStyle(color: Colors.blueGrey[900], fontSize: 18, fontWeight: FontWeight.w800 )),),
                    Card(
                      child: ListTile(
                        title: Text('Acuarela básica', style: GoogleFonts.quicksand(textStyle:
                        TextStyle(color: Color(0xFFC9D400), fontSize: 16, fontWeight: FontWeight.w800 )),),

                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset('assets/images/Imagen3.jpg'),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Lunes 12:00m  - 2:00 pm', textAlign: TextAlign.left, style: GoogleFonts.quicksand(textStyle:
                            TextStyle(color: Color(0xFFC9D400), fontSize: 12, fontWeight: FontWeight.w800 )),),
                            Text('Cuelquier Nombre', style: GoogleFonts.quicksand(textStyle:
                            TextStyle(color: Color(0xFFC9D400), fontSize: 12, fontWeight: FontWeight.w800 )),)
                          ],),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          )
        ],
      )
      ,

      floatingActionButton: FloatingActionButton(
        child: const Icon (Icons.qr_code, color: Colors.black,),
        backgroundColor: Colors.white,
        onPressed: (){
          print('Hola Mundo');
        },
      ),

      bottomNavigationBar: Obx(()=> SalomonBottomBar(
        currentIndex: c.item.value.toInt(),
        onTap: (i) => c.cambiar(i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.schedule),
            title: Text("Horas"),
            selectedColor: Colors.lightBlue,
          ),
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Inicio"),
            selectedColor: Colors.lightBlue,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.format_list_bulleted),
            title: Text("Actividades"),
            selectedColor: Colors.lightBlue,
          ),
        ],
      ),
      ),
    );
  }



}