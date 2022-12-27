import 'dart:async';
import 'package:get/get.dart';
import 'package:vivekfinaltest/core/globle.dart' as globals;
import 'package:vivekfinaltest/core/route_constant.dart';


class SplashController extends GetxController{

  @override
  void onReady() {
    Timer(const Duration(seconds: 5),
            () =>
            globals.autologin.value==false ? Get.offAllNamed(RouteConstant.onboarding) : Get.offAllNamed(RouteConstant.onboarding)
    );
    super.onReady();
  }


}