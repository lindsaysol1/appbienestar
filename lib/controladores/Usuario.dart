import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../paginas/inicio.dart';

class Usuario extends GetxController {
  var username = new TextEditingController();
  var correo = new TextEditingController();
  var datoUsuario = '';

  guardarUsuario() {
    datoUsuario = username.text;
    if (datoUsuario.toUpperCase() == 'DIEGO') {
      if (GetUtils.isEmail(correo.text)) {
        Get.to(Inicio());
      } else {
        Get.snackbar('Error', 'Email invalido');
      }
    }
    else {
      Get.snackbar('Error', 'Usted no es diego');
      Get.defaultDialog(title: 'Error', middleText: 'Usted no es diego');
    }
  }
}