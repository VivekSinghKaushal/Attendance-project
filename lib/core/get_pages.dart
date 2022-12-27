import 'package:get/get.dart';
import 'package:vivekfinaltest/core/route_constant.dart';

import 'package:vivekfinaltest/feature/login/binding/login_binding.dart';
import 'package:vivekfinaltest/feature/login/view/login_view.dart';
import 'package:vivekfinaltest/feature/onboarding/binding/onboarding_binding.dart';
import 'package:vivekfinaltest/feature/onboarding/view/onboarding_view.dart';
import 'package:vivekfinaltest/feature/otpScreen/binding/otp_screen_binding.dart';
import 'package:vivekfinaltest/feature/otpScreen/view/otp_screen_view.dart';
import 'package:vivekfinaltest/feature/phone%20otp/binding/phone_otp.dart';
import 'package:vivekfinaltest/feature/phone%20otp/veiw/phone_otp.dart';
import 'package:vivekfinaltest/feature/screen/binding/screen_binding.dart';
import 'package:vivekfinaltest/feature/screen/view/screenview.dart';
import 'package:vivekfinaltest/feature/signuptwoEnterDetail/binding/signupbinding.dart';
import 'package:vivekfinaltest/feature/signuptwoEnterDetail/view/signup.dart';

import 'package:vivekfinaltest/feature/slpash/binding/splash_binding.dart';
import 'package:vivekfinaltest/feature/slpash/view/splash_view.dart';
import 'package:vivekfinaltest/feature/verifyscreen/binding/verify_binding.dart';
import 'package:vivekfinaltest/feature/verifyscreen/view/verify_view.dart';
import 'package:vivekfinaltest/feature/welcome/binding/wel_binding.dart';

import 'package:vivekfinaltest/feature/welcome/view/wel_view.dart';

List<GetPage> getPages = [
  GetPage(name: RouteConstant.splash,
    page:()=>SplashScreen(),
    binding:SplashBinding(),
  ),

  GetPage(name: RouteConstant.onboarding,
    page:()=>OnboardingPage(),
    binding:OnboardingBinding(),
  ),

  GetPage(name: RouteConstant.login,
    page:()=>loginPage(),
    binding:Loginbinding(),
  ),


  GetPage(name: RouteConstant.welcome,
    page:()=>welcomePage(),
   binding:welcomebinding(),
  ),


  GetPage(name: RouteConstant.phoneotp,
    page:()=>Phoneotp(),
    binding:phoneotpBinding(),
  ),

  GetPage(name: RouteConstant.screen,
    page:()=>ScreenView(),
    binding:ScreenBinding(),
  ),

  // GetPage(
  //     name:RouteConstant.signup,
  //     page:()=>SignupView(),
  //     binding: SignUpBinding()),
  GetPage(
      name:RouteConstant.signup2,
      page:()=>SignUpTwoView(),
      binding: SignupTwoBinding()),
  GetPage(
      name:RouteConstant.OtpScreen,
      page:()=>OtpScreenView(),
      binding: otpScreenBinding()),
];