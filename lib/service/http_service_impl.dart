import 'package:dio/dio.dart';
import 'package:vivekfinaltest/core/url_constant.dart';
import 'package:vivekfinaltest/service/http_service.dart';


class HttpServiceImpl implements HttpService{

  late Dio _dio;


  @override
  void init() {
    // TODO: implement init
    _dio = Dio(BaseOptions(baseUrl: URLConstant.baseUrl));
  }

  @override
  Future<Response> signupAPIRequest(String name, String emailId, String password, String phoneNumber) async {
    Response response;
    try {
      print(URLConstant.baseUrl+URLConstant.signup+'name=$name&emailId=$emailId&password=$password&phone=$phoneNumber');
      response = await _dio.post(URLConstant.baseUrl+URLConstant.signup+'name=$name&emailId=$emailId&password=$password&phone=$phoneNumber');
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);

    }
    return response;
  }

  @override
  Future<Response> fetchupAPIRequest(String phoneNumber)async {
    Response response;
    try {
      response = await _dio.get("${URLConstant.fetchup}number=$phoneNumber");
    } on DioError catch (e) {
      // print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> loginAPIRequest(String userName, String password) async {
    Response response;
    try {
      print(URLConstant.baseUrl+URLConstant.loginup+'userName=$userName&password=$password');
      response = await _dio.get('${URLConstant.loginup}userName=$userName&password=$password');
    } on DioError catch (e) {
      throw Exception(e.message);
    }
    return response;


  }

  @override
  Future<Response> deleteAPIRequest(String id) async{
    // TODO: implement deleteAPIRequest
    Response response;
    try {
      print(URLConstant.baseUrl+URLConstant.delete+'id=$id');
      response = await _dio.post(URLConstant.baseUrl+URLConstant.delete+'id=$id');
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> dateAPIRequest(String id, String currentDate, String currentTime, String currentLocation) async{
    // TODO: implement dateAPIRequest
    Response response;
    try {
      print(URLConstant.baseUrl+URLConstant.insert+'userId=$id&currentDate=$currentDate&currentTime=$currentTime&currentLocation=$currentLocation');
      response = await _dio.post(URLConstant.baseUrl+URLConstant.insert+'userId=$id&currentDate=$currentDate&currentTime=$currentTime&currentLocation=$currentLocation');
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;







  }

  @override
  Future<Response> TimeoutAPIRequest(String id, String currentDate, String currentTime, String currentLocation) async{
    // TODO: implement TimeoutAPIRequest
    Response response;
    try{
      print(URLConstant.baseUrl+URLConstant.timeout+'userId=$id&currentDate=$currentDate&currentTime=$currentTime&currentLocation=$currentLocation');
      response = await _dio.post(URLConstant.baseUrl+URLConstant.timeout+'userId=$id&currentDate=$currentDate&currentTime=$currentTime&currentLocation=$currentLocation');

    }on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;




  }

  @override
  Future<Response> fetchupdateAPIRequest(String id) async{
    // TODO: implement fetchupdateAPIRequest
    Response response;
    try{
      print('${URLConstant.update}id=$id');
      response = await _dio.get('${URLConstant.update}id=$id');

    }on DioError catch(e){
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> updateDataAPIRequest(String id, String name, String email) async{
    // TODO: implement updateDataAPIRequest
    Response response;
    try{
      response = await _dio.get('${URLConstant.update2}id=$id&name=$name&emailId=$email');

    }on DioError catch(e){
      throw Exception(e.message);
    }
    return response;

  }


}









