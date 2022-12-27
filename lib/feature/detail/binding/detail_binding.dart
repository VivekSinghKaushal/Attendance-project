import 'package:get/get.dart';
import 'package:vivekfinaltest/core/repositary/deleterepo/delete_repo_impl.dart';
import 'package:vivekfinaltest/core/repositary/fetchuprepo/fetchup_repo_impl.dart';
import 'package:vivekfinaltest/feature/detail/controller/detail_controller.dart';




class DetailBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(()=> FetchupRepoImpl());
    Get.lazyPut(()=>DeleteRepoImpl());
     Get.put( DetailController());


  }




}