import 'package:appbienestar/controladores/Controlador_pagina.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Inicio extends StatelessWidget {

  @override
  Widget build(context) {

    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final ControladorPagina c = Get.put(ControladorPagina());

    return Scaffold(
        body: Column(
            children: [
              Stack(
                children: [
                  Container(
                  width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height *0.3,
                decoration: BoxDecoration(
                  color: Color(0xff067fc7),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100), bottomRight: Radius.circular(100)),
                ),
              ),
            ],
          ),
                ],
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