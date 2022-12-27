import 'package:get/get.dart';
import 'package:vivekfinaltest/core/repositary/daterepo/date_repo_impl.dart';
import 'package:vivekfinaltest/core/repositary/deleterepo/delete_repo_impl.dart';
import 'package:vivekfinaltest/core/repositary/fetchuprepo/fetchup_repo_impl.dart';
import 'package:vivekfinaltest/feature/detail/controller/detail_controller.dart';
import 'package:vivekfinaltest/feature/home2/controller/home2_controller.dart';
import 'package:vivekfinaltest/feature/navbar/controller/fetchup_controller.dart';
import 'package:vivekfinaltest/feature/profile/controller/profile_controller.dart';



class FetchupBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => DateRepoImpl());
    Get.lazyPut(() => DeleteRepoImpl());
    Get.lazyPut(() => FetchupRepoImpl());
    Get.put(FetchupController());
    Get.put( Home2Controller());
    Get.put( DetailController());
    Get.put( ProfileController());

  }




}