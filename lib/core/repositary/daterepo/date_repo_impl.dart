import 'dart:convert';

import 'package:get/get.dart';
import 'package:vivekfinaltest/core/modal/date_model.dart';
import 'package:vivekfinaltest/core/modal/timeout_model.dart';
import 'package:vivekfinaltest/core/repositary/daterepo/date_repo.dart';
import 'package:vivekfinaltest/service/http_service.dart';
import 'package:vivekfinaltest/service/http_service_impl.dart';

class DateRepoImpl implements DateRepo {

  late HttpService _httpService;

  DateRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());

    _httpService.init();
  }

  @override
  Future<DateResponse> dateAPI(String id, String currentDate, String currentTime, String currentLocation) async{
    // TODO: implement signupAPI
    final response = await _httpService.dateAPIRequest(id,currentDate,currentTime,currentLocation);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return DateResponse.fromJson(ResponseMap);
  }

  @override
  Future<TimeoutResponse> TimeoutAPI(String id, String currentDate, String currentTime, String currentLocation) async {
    // TODO: implement TimeoutAPI
    final response = await _httpService.TimeoutAPIRequest(id,currentDate,currentTime,currentLocation);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return TimeoutResponse.fromJson(ResponseMap);
  }
}