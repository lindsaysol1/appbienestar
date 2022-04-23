import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {

  @override
  Widget build(context) {

    return Scaffold(
        body:
        Container(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/images/bienestar.png'),
                 ),
                
                Container(
                  child: Text('Bienvendios',
                    style: TextStyle(color: Colors.blueGrey[900], fontSize: 30,),
                  ),
                ),

            Container(
              margin: EdgeInsets.only(left: 40, right: 40, top: 0,bottom: 10),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top:30)),
                    TextFormField(
                     style: TextStyle(color: Colors.black, fontSize: 16,),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7.0)),
                          prefix: Container(
                            width: 10,
                            height: 23,
                          ),
                          hintText:'Nombre/correo Institucional',
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top:20)),
                    TextFormField(
                      obscureText:true,
                      style: TextStyle( fontSize: 16,),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(7.0)),
                        prefix: Container(
                          width: 10,
                          height: 23,
                        ),
                        hintText:'Contraseña',
                      ),
                    ),
                  ],

                ),
            ),
              ],
            ),
            ),
        
    );
  }
}