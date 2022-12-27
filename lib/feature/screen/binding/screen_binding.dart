
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:vivekfinaltest/feature/screen/controler/screen_controller.dart';



class ScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ScreenController());

  }
}
