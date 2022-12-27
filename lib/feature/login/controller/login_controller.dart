import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vivekfinaltest/core/repositary/loginrepo/login_repo.dart';
import 'package:vivekfinaltest/core/repositary/loginrepo/login_repo_impl.dart';
import 'package:vivekfinaltest/core/route_constant.dart';




// class LoginController extends GetxController{
//
//
//
// }



class LoginController extends GetxController{


  bool _obscureText= false;
  eye(){
    _obscureText=!_obscureText;
  }
  late TextEditingController userNameController = TextEditingController();
  late TextEditingController PasswordController = TextEditingController();

  GlobalKey<FormState> loginFormKey = new GlobalKey<FormState>();

  late LoginRepo _loginRepo;

  LoginController() {_loginRepo = Get.find<LoginRepoImpl>();}

  loginAPI()async{
    var isvalide =loginFormKey.currentState?.validate();
    final response = await _loginRepo.loginAPI(userNameController.text,PasswordController.text);
    print(response![0].response);
    if(response[0].response==1 && isvalide==true  ){
      SharedPreferences prefs = await SharedPreferences.getInstance();

      prefs.setInt("response", response[0].response!);
      prefs.setString("Id", response[0].id!);
      prefs.setString("name", response[0].name!);
      prefs.setString("email", response[0].emailId!);
      prefs.setString("phone", response[0].phone!);
      prefs.setString("password", response[0].password!);


     // Get.toNamed(RouteConstant.fetch);
      print(response[0].id!);


    }else{
      Get.snackbar("Warning", "Invalid credential",snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.teal);
    }

    print(response[0].response);

    print("Line Number 19");
  }



}