import 'dart:convert';
import 'package:get/get.dart';
import 'package:vivekfinaltest/core/modal/login_model.dart';
import 'package:vivekfinaltest/core/repositary/deleterepo/delete_repo.dart';
import 'package:vivekfinaltest/service/http_service.dart';
import 'package:vivekfinaltest/service/http_service_impl.dart';




class DeleteRepoImpl implements DeleteRepo{

  late HttpService _httpService;

  DeleteRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());

    _httpService.init();
  }

  @override
  Future<LoginResponse> deleteAPI(String id) async{
    // TODO: implement mDeleteAPI
    final response = await _httpService.deleteAPIRequest(id);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return LoginResponse.fromJson(ResponseMap);
  }


  
  
}