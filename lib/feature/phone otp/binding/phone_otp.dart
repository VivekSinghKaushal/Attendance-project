import 'package:get/get.dart';
import 'package:vivekfinaltest/feature/phone%20otp/controller/phoneoto_controller.dart';

class phoneotpBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(phoneotpController());
  }


}