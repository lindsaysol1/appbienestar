import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../controladores/Controlador_pagina.dart';
import 'inicio.dart';

class Horas extends StatelessWidget {

  @override
  Widget build(context) {
    final ControladorPagina c = Get.put(ControladorPagina());
    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: Text("Inicio")),

        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: ListView(
          children: [
            Card(
              child: ListTile(
                onTap: (){
                  Get.to(Inicio());
                },
                title: Text('Acuerela básica'),
                leading: Image.asset('assets/images/Imagen1.jpg'),
                subtitle: Column(children: [
                  Text('Lunes 12:00m  - 2:00 pm'),
                  Text('Cuelquier Nombre')
                ],)
                ,
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            )
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