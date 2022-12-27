import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vivekfinaltest/core/modal/fetchup_model.dart';
import 'package:vivekfinaltest/core/repositary/deleterepo/delete_repo.dart';
import 'package:vivekfinaltest/core/repositary/deleterepo/delete_repo_impl.dart';
import 'package:vivekfinaltest/core/repositary/fetchuprepo/fetchup_repo.dart';


import '../../../core/repositary/fetchuprepo/fetchup_repo_impl.dart';


class DetailController extends GetxController{
  late DeleteRepo _deleteRepo;
  late FetchupRepo _fetchupRepo;
  late FetchupRepo _fetchupdateRepo;

  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailIdController = TextEditingController();
  TextEditingController numberController = TextEditingController();




  DetailController() {
    _fetchupRepo = Get.find<FetchupRepoImpl>();
    _deleteRepo = Get.find<DeleteRepoImpl>();
    _fetchupdateRepo = Get.find<FetchupRepoImpl>();

  }
  // var phoneNumber='8109520402';
  RxString name = ''.obs;
  RxString emailId = ''.obs;
  RxString password = ''.obs;
  RxBool loader = true.obs;
  RxString id = ''.obs;
  RxString phoneNumber = ''.obs;

  RxList<FetchupResponse> fetchDataList = <FetchupResponse>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    printdata();
    super.onInit();
  }


  printdata()async{
    print("Good Task");
    final response=await  SharedPreferences.getInstance();
    SharedPreferences prefs =await SharedPreferences.getInstance();
    phoneNumber.value= prefs.getString("phone")!;
    id.value= prefs.getString("Id")!;

    print(phoneNumber.value);

    print("hello");
    fetchData();
  }

  fetchData()async{
    loader.value=true;
    final response = await _fetchupRepo.fetchupAPI(phoneNumber.value);
    if(response!=null){
      fetchDataList.value = response;
      print("Line Number 21");
      print(response![0].id);
      print(response![0].name);
      print(response![0].emailId);
      print(response![0].password);
      print(response![0].phoneNumber);
      id.value = response[0].id!;
      name.value = response[0].name!;
      emailId.value = response[0].emailId!;
      password.value = response[0].password!;
      phoneNumber.value = response[0].phoneNumber!;
      loader.value = false;
    }
  }

  deleteData(String id) async{
    final response = await _deleteRepo.deleteAPI(id);

    if (response!= null) {

      if(response.response==1){
        Get.defaultDialog(
          title: 'Deleted',
          content: const Center(child:Text('Data has been Deleted'),)
        ).then((value){
          fetchData();
        });
      }
        }

    }
    fetchupdate(String id) async{
     final response = await _fetchupdateRepo.fetchupdateAPI(id);
     if(response!=null){
       print('response ${response[0].id}');
       idController.text=response[0].id.toString();
       nameController.text =response[0].name.toString();
       emailIdController.text =response[0].emailId.toString();
       numberController.text =response[0].phoneNumber.toString();

Future.delayed(const Duration(seconds: 2));

       return Get.defaultDialog(
         title: 'update Data',
         content: Container(
           child: Form(
             child: Column(
               children: [
                 TextFormField(
                   controller: idController,
                 ),
                 TextFormField(
                   controller:nameController,
                 ),
                 TextFormField(
                   controller: emailIdController,
                 ),
                 TextFormField(
                   controller: numberController,
                 ),

               ElevatedButton(onPressed: ()async{
                 final response = await _fetchupdateRepo.updateDataAPI(id, nameController.text, emailIdController.text);
                 if (response!= null) {
                 Get.back();
                 Future.delayed(const Duration(seconds:3));
                   if(response.response==1){
                     Get.defaultDialog(
                         title: 'Update',
                         content: const Center(child:Text('Data has been Update'),)
                     ).then((value){
                       fetchData();
                     });
                   }
                 }
               }, child: Text('Update'))

               ],
             ),

           )



         )



       );



     }




    }










  }




