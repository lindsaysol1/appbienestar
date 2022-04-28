import 'package:get/get.dart';
import '../paginas/horas.dart';
import '../paginas/inicio.dart';

class ControladorPagina extends GetxController{
var item = 1.obs;

  cambiar(posicion){
    if (posicion == 0) {
      Get.to(
          Horas(),
          transition: Transition.leftToRight,
          duration: const Duration(milliseconds: 250)
      );
    }
    if (posicion == 1) {
      Get.to(
          Inicio(),
          transition: Transition.leftToRight,
          duration: const Duration(milliseconds: 250)
      );
    }
    item(posicion);
  }
}