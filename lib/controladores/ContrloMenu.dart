import 'package:get/get.dart';

class ControlMenu extends GetxController{

  var indice = 0.obs;
  cambiar(posicion) => indice = posicion.RxnInt;

  obtenerIndice(){
    return indice.toInt();

  }
}