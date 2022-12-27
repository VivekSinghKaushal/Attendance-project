import 'dart:convert';

import 'package:get/get.dart';
import 'package:vivekfinaltest/core/modal/fetchup_model.dart';
import 'package:vivekfinaltest/core/modal/update_model.dart';
import 'package:vivekfinaltest/core/repositary/fetchuprepo/fetchup_repo.dart';
import 'package:vivekfinaltest/service/http_service.dart';
import 'package:vivekfinaltest/service/http_service_impl.dart';

class FetchupRepoImpl implements FetchupRepo {

  late HttpService _httpService;

  FetchupRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());

    _httpService.init();
  }


  @override
  Future<List<FetchupResponse>?> fetchupAPI(String phoneNumber) async {
    try {
      final response = await _httpService.fetchupAPIRequest(phoneNumber);
      if (response.statusCode == 200) {
        return FetchupResponseFromJson(response.toString());
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
    return null;
  }
  List<FetchupResponse> FetchupResponseFromJson(String str) => List<FetchupResponse>.from(json.decode(str).map((x) => FetchupResponse.fromJson(x)));

  @override
  Future<List<FetchupResponse>?> fetchupdateAPI(String id) async{
    // TODO: implement fetchupdateAPI
    final response = await _httpService.fetchupdateAPIRequest(id);
    if(response.statusCode==200){
      return fetchupdateResponseFromJson(response.toString());

    }
  }
  List<FetchupResponse> fetchupdateResponseFromJson(String str) => List<FetchupResponse>.from(json.decode(str).map((x) => FetchupResponse.fromJson(x)));

  @override
  Future <UpdateResponse>updateDataAPI(String id, String name, String email) async{
    // TODO: implement updateDataAPI
    final response = await _httpService.updateDataAPIRequest(id, name,email);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return UpdateResponse.fromJson(ResponseMap);
  }






}