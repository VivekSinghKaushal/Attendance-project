import 'package:get/get.dart';
import 'package:vivekfinaltest/core/repositary/loginrepo/login_repo_impl.dart';
import 'package:vivekfinaltest/feature/login/controller/login_controller.dart';


class Loginbinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(()=>LoginRepoImpl());
    Get.put(LoginController());

  }

}