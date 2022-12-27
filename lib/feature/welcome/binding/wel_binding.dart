import 'package:get/get.dart';
import 'package:vivekfinaltest/feature/welcome/controller/wel_controller.dart';

class welcomebinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(WelcomeController());
  }

}