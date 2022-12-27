import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vivekfinaltest/core/route_constant.dart';
import 'package:vivekfinaltest/feature/welcome/controller/wel_controller.dart';


class welcomePage extends GetView<WelcomeController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(


      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right:150 ),
              child: Text('WELCOME',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Container(
              height: 350,
              child: Image.asset('assets/LOGIN 1.png'),
            ),



            Padding(padding: EdgeInsets.only(
                top: 10.0
            )),

            Container(
              height: 60,
              width: 300,
              child: ElevatedButton(

                  style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent
                  ) ,

                  onPressed: (){
                    Get.toNamed(RouteConstant.login);

                  },
                  child:Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),)])),
            ),
            Padding(padding: EdgeInsets.only(
                top: 20.0
            )),
      Container(
        height: 60,
        width: 300,
        child: ElevatedButton(

            style:ElevatedButton.styleFrom(
                // backgroundColor: Colors.blueAccent
            ) ,

            onPressed: (){
              Get.toNamed(RouteConstant.phoneotp);

            },
            child:Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 20),)])),
      ),

            Padding(padding: EdgeInsets.only(
                top: 20.0
            )),











          ],


        ),



      ),



    );
  }

}