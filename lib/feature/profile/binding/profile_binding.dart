import 'package:get/get.dart';
import 'package:vivekfinaltest/core/repositary/fetchuprepo/fetchup_repo_impl.dart';
import 'package:vivekfinaltest/feature/profile/controller/profile_controller.dart';


class ProfileBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => FetchupRepoImpl());
    Get.put(ProfileController());
  }





}