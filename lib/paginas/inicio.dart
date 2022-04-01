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
      // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: Obx(() => Text("Clicks:${c.item}"))),

        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Text('Categoria1'),
                  Container(
                    child: Row(
                      children:[
                        Image.asset('assets/images/imagen1.png'),
                        Image.asset('assets/images/imagen2.png'),

                      ],
                    ),
                  ),
                ],
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
                icon: Icon(Icons.home),
                title: Text("Inicio"),
                selectedColor: Colors.purple,
              ),
              /// Home
              SalomonBottomBarItem(
                icon: Icon(Icons.home),
                title: Text("Inicio"),
                selectedColor: Colors.purple,
              ),

              /// Likes
              SalomonBottomBarItem(
                icon: Icon(Icons.favorite_border),
                title: Text("Likes"),
                selectedColor: Colors.pink,
              ),

              /// Search
              SalomonBottomBarItem(
                icon: Icon(Icons.search),
                title: Text("Search"),
                selectedColor: Colors.orange,
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: Icon(Icons.person),
                title: Text("Profile"),
                selectedColor: Colors.teal,
              ),
            ],
          ),
          ),
    );
  }
}