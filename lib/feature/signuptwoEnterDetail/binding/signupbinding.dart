import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:vivekfinaltest/feature/signuptwoEnterDetail/controller/signupcontroller.dart';


class SignupTwoBinding extends Bindings {



  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SignupTwoController());
  }

}