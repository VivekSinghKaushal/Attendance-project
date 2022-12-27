import 'package:dio/dio.dart';

abstract class HttpService{
  void init();
  Future<Response> signupAPIRequest(String name, String emailId, String password, String phoneNumber);
  Future<Response> fetchupAPIRequest(String phoneNumber);
  Future<Response> loginAPIRequest(String userName, String password);
  Future<Response> deleteAPIRequest(String id);
  Future<Response> dateAPIRequest (String id, String currentDate, String currentTime, String currentLocation);
  Future<Response> TimeoutAPIRequest (String id, String currentDate, String currentTime, String currentLocation);
  Future<Response> fetchupdateAPIRequest(String id);
  Future<Response> updateDataAPIRequest(String id, String name, String email);
}