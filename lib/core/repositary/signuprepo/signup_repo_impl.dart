import 'dart:convert';

import 'package:get/get.dart';
import 'package:vivekfinaltest/core/modal/signup_model.dart';
import 'package:vivekfinaltest/core/repositary/signuprepo/signup_repo.dart';
import 'package:vivekfinaltest/service/http_service.dart';
import 'package:vivekfinaltest/service/http_service_impl.dart';





class SignupRepoImpl implements SignupRepo{

  late HttpService _httpService;

  SignupRepoImpl(){
    _httpService = Get.put(HttpServiceImpl());

    _httpService.init();
  }


  @override
  Future<SignupResponse> signupAPI(String name, String emailId, String password, String phoneNumber) async{
    // TODO: implement loginAPI
    final response = await _httpService.signupAPIRequest(name,emailId,password,phoneNumber);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return SignupResponse.fromJson(ResponseMap);
  }






}