import 'package:get/get.dart';
import 'package:vivekfinaltest/feature/otpScreen/controller/otp_screen_controller.dart';



class otpScreenBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(OtpScreenController());
  }


}