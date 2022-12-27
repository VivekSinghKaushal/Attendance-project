
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:vivekfinaltest/core/route_constant.dart';
import 'package:vivekfinaltest/feature/screen/controler/screen_controller.dart';



class ScreenView extends GetView<ScreenController> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(

      body: Center(

        child: SizedBox(
          width: double.infinity,
          height: size.height,

          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,

            child: Column(

              children: [
                SizedBox(
                  height: 10,
                ),

                Container(
                  margin: EdgeInsets.only(top:20, left:10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){
                        Get.toNamed(RouteConstant.OtpScreen);
                      }, icon: Icon(Icons.arrow_back_ios_new_sharp,size: 40,)),

                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ENTER DETAILS", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    ],

                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Column(
                  children: [
                    Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: controller.googleFormKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width*0.9,
                            margin: EdgeInsets.symmetric(vertical: 8),
                            padding: EdgeInsets.symmetric(vertical: 1,horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.blue,width: 2,),
                            ),
                            child: TextFormField(
                              controller: controller.name,
                              onSaved: (value) {
                                controller.fname= value!;
                              },
                              validator: (value) {
                                return controller.validateName(value!);
                              },
                              cursorColor: Colors.teal,
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
                              decoration: const InputDecoration(
                                hintText: "ENTER Name",
                                helperStyle: TextStyle(color: Colors.teal),
                                border: InputBorder.none,

                              ),
                            ),
                          ),
                          Container(
                            width: size.width*0.9,
                            margin: EdgeInsets.symmetric(vertical: 8),
                            padding: EdgeInsets.symmetric(vertical: 1,horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.blue,width: 2,),
                            ),
                            child: TextFormField(
                              controller: controller.phone,
                              onSaved: (value) {
                                controller.pnumber= value!;
                              },
                              validator: (value) {
                                return controller.validateMobile(value!);
                              },
                              cursorColor: Colors.teal,
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
                              decoration: const InputDecoration(
                                hintText: "ENTER PHONE NUMBER",
                                helperStyle: TextStyle(color: Colors.teal),
                                border: InputBorder.none,

                              ),
                            ),
                          ),
                          Container(
                            width: size.width*0.9,
                            margin: EdgeInsets.symmetric(vertical: 8),
                            padding: EdgeInsets.symmetric(vertical: 1,horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.blue,width: 2,),
                            ),
                            child: TextFormField(
                              controller: controller.email,
                              onSaved: (value) {
                                controller.lemail= value!;
                              },
                              validator: (value) {
                                return controller.validateEmail(value!);
                              },
                              cursorColor: Colors.teal,
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
                              decoration: const InputDecoration(
                                hintText: "ENTER Email",
                                helperStyle: TextStyle(color: Colors.teal),
                                border: InputBorder.none,

                              ),
                            ),
                          ),
                          Container(
                            width: size.width*0.9,
                            margin: EdgeInsets.symmetric(vertical: 8),
                            padding: EdgeInsets.symmetric(vertical: 1,horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.blue,width: 2,),
                            ),
                            child: TextFormField(
                              controller: controller.password,
                              onSaved: (value) {
                                controller.Epassword= value!;
                              },
                              validator: (value) {
                                return controller.validateEmail(value!);
                              },
                              cursorColor: Colors.teal,
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
                              decoration: const InputDecoration(
                                hintText: "ENTER Password",
                                helperStyle: TextStyle(color: Colors.teal),
                                border: InputBorder.none,

                              ),
                            ),
                          ),

                          SizedBox(
                            height:40,
                          ),
                          Container(
                            width: size.width*0.8,
                            child: ClipRRect(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),),
                                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15, horizontal: 20,),),
                                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                                ),
                                onPressed: (){


                                  controller.googleAPI();

                                },
                                child: Text("Submit", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),),
                              ),
                            ),
                          ),




                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),

          ),
        ),
      ),
    );
  }
}





