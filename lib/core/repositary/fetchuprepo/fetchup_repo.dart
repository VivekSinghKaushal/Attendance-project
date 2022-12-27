
import 'package:vivekfinaltest/core/modal/fetchup_model.dart';
import 'package:vivekfinaltest/core/modal/update_model.dart';

abstract class FetchupRepo{
  Future<List<FetchupResponse>?>fetchupAPI(String phoneNumber);
  Future<List<FetchupResponse>?>fetchupdateAPI(String id);
 Future<UpdateResponse> updateDataAPI(String id, String name, String email );

}