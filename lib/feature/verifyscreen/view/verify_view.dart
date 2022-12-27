import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'package:pinput/pinput.dart';
import 'package:vivekfinaltest/core/route_constant.dart';
import 'package:vivekfinaltest/feature/verifyscreen/controller/verify_controller.dart';

class VerifyView extends GetView<VerifyController> {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
return Scaffold(
// final defaultPinTheme = PinTheme(
// width: 56,
// height: 56,
// textStyle: TextStyle(
// fontSize: 20,
// color: Color.fromRGBO(30, 60, 87, 1),
//     fontWeight: FontWeight.w600),
//     decoration: BoxDecoration(
//     border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
//     borderRadius: BorderRadius.circular(20),
//     ),
//     );
//
//     final focusedPinTheme = defaultPinTheme.copyDecorationWith(
//     border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
//     borderRadius: BorderRadius.circular(8),
//     );
//
//     final submittedPinTheme = defaultPinTheme.copyWith(
//     decoration: defaultPinTheme.decoration?.copyWith(
//     color: Color.fromRGBO(234, 239, 243, 1),
//     ),
//     );
//
//
    extendBodyBehindAppBar: true,
  appBar: AppBar(
    backgroundColor: Colors.transparent,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios_rounded,
        color: Colors.black,
      ),
    ),
    elevation: 0,
  ),
  body: Container(
    margin: EdgeInsets.only(left: 25, right: 25),
    alignment: Alignment.centerLeft,
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 25,
          ),
          Text(
            "Phone Verification",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "WE HAVE SENT A VERIFICATION CODE TO ENTERE",
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 90,
          ),
          Pinput(
            length: 6,
            // defaultPinTheme: defaultPinTheme,
            // focusedPinTheme: focusedPinTheme,
            // submittedPinTheme: submittedPinTheme,

            showCursor: true,
            onCompleted: (pin) => print(pin),
          ),
          SizedBox(
            height:150,
          ),
          SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green.shade600,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {

                  Get.toNamed(RouteConstant.signup2);

                },
                child: Text("Verify OTP")),
          ),

        ],
      ),
    ),
  ),

);  }
}