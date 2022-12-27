import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:vivekfinaltest/core/modal/fetchup_model.dart';
import 'package:vivekfinaltest/core/repositary/fetchuprepo/fetchup_repo.dart';
import 'package:vivekfinaltest/core/repositary/fetchuprepo/fetchup_repo_impl.dart';

class ProfileController extends GetxController{



  late FetchupRepo _fetchupRepo;

  ProfileController() {
  _fetchupRepo = Get.find<FetchupRepoImpl>();

  }
  //var phoneNumber='8109520402';
  RxString phoneNumber=''.obs;
  RxString name = ''.obs;
  RxString emailId = ''.obs;
  RxString password = ''.obs;
  RxBool loader = true.obs;
  RxString id = ''.obs;

  RxList<FetchupResponse> fetchDataList = <FetchupResponse>[].obs;

  @override
  void onInit() {
  // TODO: implement onInit
    fetchData();
  super.onInit();
  }



  fetchData()async{
    //loader.value=true;
    final response = await SharedPreferences.getInstance();

    SharedPreferences prefs = await SharedPreferences.getInstance();

    password.value = prefs.getString("password")!;
    name.value= prefs.getString("name")!;
    emailId.value= prefs.getString("email")!;
    phoneNumber.value= prefs.getString("phone")!;
    id.value= prefs.getString("id")!;
    //loader.value=false;

    print("line numer 56");
    print(emailId);
    print(name);
    print(phoneNumber);

  }




  }



