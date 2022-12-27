import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vivekfinaltest/feature/detail/view/detail_page.dart';
import 'package:vivekfinaltest/feature/home2/view/home2_page.dart';
import 'package:vivekfinaltest/feature/navbar/controller/fetchup_controller.dart';
import 'package:vivekfinaltest/feature/profile/view/profile_page.dart';



class FetchupView extends GetView<FetchupController> {
  FetchupView({super.key});

  FetchupController bottomNavigationController = Get.put( FetchupController());

  final screens = [
    Home2Page(),
    DetailPage(),
    ProfilePage(),

  ];

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Obx(
            ()=> IndexedStack(
          index: controller.selectedIndex.value,
          children: screens,
        ),),
      bottomNavigationBar: Obx(()=> BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index){
          controller.changeIndex(index);
        },
        currentIndex: controller.selectedIndex.value,
        items: [
          BottomNavigationBarItem(

            icon: Icon(Icons.house_outlined,),
            label:'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined,),
            label: "My Detail",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp,),
            label: "Profile",
          ),
        ],
      ),
      ),
    );


  }

}