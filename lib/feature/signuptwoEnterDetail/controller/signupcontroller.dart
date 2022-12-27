import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SignupTwoController extends GetxController {

  late TextEditingController NameController = new TextEditingController();
  late TextEditingController EmailController = new TextEditingController();
  late TextEditingController PasswordController = new TextEditingController();
  late TextEditingController PhoneController = new TextEditingController();

  GlobalKey<FormState> signupFormKey = new GlobalKey<FormState>();
  signupAPI()async {
//    Get.toNamed(RouteConstant.signupTwo);
    var isValide = signupFormKey.currentState?.validate();
  }


  }