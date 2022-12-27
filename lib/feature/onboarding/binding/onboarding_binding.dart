import 'package:get/get.dart';
import 'package:vivekfinaltest/feature/onboarding/controller/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => OnboardingController());
  }
}