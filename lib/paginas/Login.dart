import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../controladores/usuario.dart';

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
                      controller: u.username,
                     style: TextStyle(color: Colors.black, fontSize: 16,),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7.0)),
                          prefix: Container(
                            width: 10,
                            height: 23,
                          ),
                          hintText:'Nombre/Correo Institucional',
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top:20)),
                    TextFormField(
                      controller: u.correo,
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
                    Padding(padding: EdgeInsets.only(top:30)),
                    InkWell(
                      onTap: () => u.guardarUsuario(),
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.07,
                        decoration: BoxDecoration(
                          color: Color(0xff06a0c7),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Text('Iniciar Sesión', style: TextStyle(color: Colors.white, fontSize: 18,)),
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