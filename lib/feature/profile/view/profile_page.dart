
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:vivekfinaltest/feature/profile/controller/profile_controller.dart';

class ProfilePage extends  GetView<ProfileController>{
  const ProfilePage ({super.key});




  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

        appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('My Profile Page',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),


        ),
    body: Center(
      child: Container(

        decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius:BorderRadius.all(Radius.circular(20))),
        height: 500,
        width:350,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            CircleAvatar(radius: 60,
              backgroundColor: Colors.red,
              child:IconButton(onPressed: (){}, icon:Icon(Icons.add_a_photo_outlined)),
              ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(controller.name.value,style: TextStyle(fontSize: 35)),
            Text(controller.emailId.value,style: TextStyle(fontSize: 25)),

            Padding(padding: EdgeInsets.only(top: 10)),

            Container(
              padding: EdgeInsets.only(right:150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                    Text('Name',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  Text(controller.name.value),

                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text('Email',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  Text(controller.emailId.value),

                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text('Phone',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  Text(controller.phoneNumber.value),


                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text('password',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  Text(controller.password.value),
                  Padding(padding: EdgeInsets.only(top: 20)),

                ],



              ),
            ),













          ],



        ),




      ),



    ),


    );
  }
}