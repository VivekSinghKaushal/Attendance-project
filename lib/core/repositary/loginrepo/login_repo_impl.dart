import 'dart:convert';
import 'package:get/get.dart';
import 'package:vivekfinaltest/core/modal/login_model.dart';
import 'package:vivekfinaltest/core/repositary/loginrepo/login_repo.dart';
import 'package:vivekfinaltest/service/http_service.dart';
import 'package:vivekfinaltest/service/http_service_impl.dart';


class LoginRepoImpl implements LoginRepo{

  late HttpService _httpService;

  LoginRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());


    _httpService.init();
  }




  @override
  Future<List<LoginResponse>?> loginAPI(String userName, String password) async {
    try{
      final response = await _httpService.loginAPIRequest(userName,password);
      if (response.statusCode == 200) {
        return loginResponseFromJson(response.toString());
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
    return null;
  }
  List<LoginResponse> loginResponseFromJson(String str) => List<LoginResponse>.from(json.decode(str).map((x) => LoginResponse.fromJson(x)));




}