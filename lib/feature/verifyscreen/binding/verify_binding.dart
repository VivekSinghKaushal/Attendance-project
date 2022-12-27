import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';


import '../controller/verify_controller.dart';

class VerifyBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(VerifyController());
  }


}