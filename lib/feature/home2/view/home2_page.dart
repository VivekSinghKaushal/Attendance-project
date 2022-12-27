import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'package:intl/intl.dart';
import 'package:vivekfinaltest/feature/home2/controller/home2_controller.dart';
import 'package:vivekfinaltest/feature/home2/view/component/camera_pic.dart';


class Home2Page extends GetView<Home2Controller>{



  // Home2Controller bottomNavigationController = Get.put(Home2Controller());

  // final pages = [
  //   Home2Page(),
  //   ProfilePage(),
  //   DetailPage(),
  // ];

 var forcheck= TimeinPicture();



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(



       body:Obx(()=> Center(
        child: Column(
         children: [


           Padding(padding: EdgeInsets.only(top: 40)),
            Container(
              width: 350,
              height: 280,
              padding: new EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                elevation: 10,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          controller.loader.value==true ? Center(child: CircularProgressIndicator()) :
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Text(controller.name.value,style: TextStyle(fontSize: 37,fontWeight: FontWeight.bold)),
                              Container(
                                  width: 190,
                                  child: Text(controller.emailId.value,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))),
                            ],
                          ),


                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                            child: TimeinPicture(),
                          ),
                          const SizedBox(
                            height:10 ,
                          ),
                        ],


                      ),





                    ),



                        Padding(padding: EdgeInsets.only(top: 20)),
                        Container(
                          width:250,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(
                                    color: Colors.deepOrange,
                                    width: 2,
                                    style: BorderStyle.solid,
                                  ),
                                ),),
                                padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20, horizontal: 20,),),
                                backgroundColor: MaterialStateProperty.all(Colors.deepOrange),),


                              onPressed: (){
                                controller.dateAPI();
                                forcheck.takePhoto(ImageSource.camera);


                              }, child:Text('Time In')),
                        ),


                    Container(
                      width:250,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                color: Colors.deepOrange,
                                width: 2,
                                style: BorderStyle.solid,
                              ),
                            ),),
                            padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20, horizontal: 20,),),
                            backgroundColor: MaterialStateProperty.all(Colors.deepOrange),),


                          onPressed: (){
                            controller.TimeoutAPI();


                          }, child:Text('Time Out')),
                    )











                  ],

                ),


              ),



            ),
           Container(
             width: 350,
             height: 250,
             padding: new EdgeInsets.all(10.0),

             child: Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15.0),
               ),
               color: Colors.white,
               elevation: 10,

               child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.location_on_outlined,color: Colors.blue,),
                    title: Row(
                      children: [
                        Text('Your Location',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),),

                      ],

                    ),
                      trailing:Icon(Icons.refresh,color: Colors.blue,)),

                    Container(
                      width: 200,
                      child: Column(

                       children: [
                         Text(controller.id.value),
                         Text(controller.currentLocation.value),

                         Text(DateFormat("dd-mm-yyyy kk:mm:ss a").format(DateTime.now()),style: TextStyle(fontWeight: FontWeight.bold),),

                         // Text('Current Time: ${time.day}: ${time.month}:${time.year}'),
                        // Text('Current Time: ${time.hour}: ${time.minute}: ${time.second}'),
                       ],
                   ),
                    ),




                  // Text('Gyan Ganga Building, Jayendra Ganj Rd, Shindhe ki Chhawani, Gwalior, Madhya Pradesh 474009 India. '),
                  // Padding(padding: EdgeInsets.only(top: 20)),
                  // Text('Within Geofence',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20,backgroundColor: Colors.teal ),)

                  //
                  // Obx(()=> IndexedStack(
                  //     index: controller.selectedIndex.value,
                  //     children: pages,
                  //   ),),
                ],


               ),

             ),
           ),


         ],
        ),


    ),

      //   bottomNavigationBar:  BottomNavigationBar(
      //   type: BottomNavigationBarType.shifting,
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.white54,
      //   showSelectedLabels: true,
      //   showUnselectedLabels: false,
      //   onTap: (index){
      //     controller.changeIndex(index);
      //   },
      //   currentIndex: controller.selectedIndex.value,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_filled,),
      //       label: "Home",
      //       backgroundColor: Colors.deepPurple,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person,),
      //       label: "Profile",
      //       backgroundColor: Colors.deepOrangeAccent,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings,),
      //       label: "Setting",
      //       backgroundColor: Colors.redAccent,
      //     ),
      //   ],
      // ),
      



    ));
  }



}