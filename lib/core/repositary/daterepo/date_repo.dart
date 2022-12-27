
import 'package:vivekfinaltest/core/modal/date_model.dart';
import 'package:vivekfinaltest/core/modal/timeout_model.dart';

abstract class DateRepo{
  Future<DateResponse>dateAPI(String id, String currentDate, String currentTime, String currentLocation);
  Future<TimeoutResponse>TimeoutAPI(String id, String currentDate, String currentTime, String currentLocation);

}