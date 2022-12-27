
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ScreenController extends GetxController {

  late TextEditingController name, phone, email, password;


  final GlobalKey<FormState> googleFormKey = GlobalKey<FormState>();

  var fname = '';
  var pnumber = '';
  var lemail = '';
  var Epassword = '';

  @override
  void onInit() {
    super.onInit();
    name = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
  }


  @override
  void onClose() {
    name.dispose();
    phone.dispose();
    email.dispose();
    password.dispose();
  }

  String? validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }


  String? ValidatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 8 characters";
    }
    return null;
  }

  String? validateName(String value) {
    if (value.length < 3)
      return 'Name must be more than 2 charater';
    else
      return null;
  }

  String? validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }


  googleAPI() {
    final isvalide = googleFormKey.currentState?.validate();
    if (isvalide!) {
      return;
    }
    googleFormKey.currentState!.save();
  }


}