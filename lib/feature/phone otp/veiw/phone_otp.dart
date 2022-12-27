import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:vivekfinaltest/core/route_constant.dart';

import 'package:vivekfinaltest/feature/phone%20otp/controller/phoneoto_controller.dart';

class Phoneotp extends GetView<phoneotpController> {
  @override
  Widget build(BuildContext context) {
    var phone='';


    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Get.toNamed(RouteConstant.welcome);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Form(
        key: controller.formKey,

        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                onInputValidated: (bool value) {
                  print(value);
                },
                selectorConfig: const SelectorConfig(
                  selectorType: PhoneInputSelectorType.DROPDOWN,
                ),
                ignoreBlank: false,
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle: TextStyle(color: Colors.black),
                initialValue: controller.number,
                textFieldController: controller.controlling,
                formatInput: false,
                keyboardType:
                TextInputType.numberWithOptions(signed: true, decimal: true),
                inputBorder: OutlineInputBorder(),
                onSaved: (PhoneNumber number) {
                  print('On Saved: $number');
                },
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteConstant.OtpScreen);

                },
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStatePropertyAll(Colors.blue),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Colors.cyan,
                            width: 1.5,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0,20, 0, 20),
                      child: Text(
                        'Send OTP',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height:20
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 12, 30, 10),
                child: Text('OR',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                  height:20
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteConstant.signup2);

                },
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStatePropertyAll(Colors.white),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Colors.cyan,
                            width: 1.5,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0,20, 0, 20),
                      child: Text(
                        'SIGNUP',
                        style: TextStyle(
                          color: Colors.cyan,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );  }
}