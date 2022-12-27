
import 'package:vivekfinaltest/core/modal/login_model.dart';

abstract class LoginRepo{
  Future<List<LoginResponse>?> loginAPI(String userName, String password);


}