import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vivekfinaltest/feature/detail/controller/detail_controller.dart';


class DetailPage extends GetView<DetailController>{
  const DetailPage ({super.key});




  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('My Detail Page',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),

        ),
        body: Obx(
              ()=> SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Container(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,

                      child: DataTable(
                        columns: [
                          DataColumn(label: Text('Id',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),) ),
                          DataColumn(label: Text('Name',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),) ),
                          DataColumn(label: Text('Email',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),) ),
                          DataColumn(label: Text('Password',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),) ),
                          DataColumn(label: Text('Phone',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),) ),
                          DataColumn(label: Text('Delete',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),) ),
                          DataColumn(label: Text('Edit',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),) ),

                        ],
                        rows: controller.fetchDataList.map((user) {

                          return DataRow(cells: [
                            DataCell(
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text(user.id!)
                                  ],
                                ),
                              ),
                            ),

                            DataCell(
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text(user.name!)
                                  ],
                                ),
                              ),
                            ),
                            DataCell(
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Text(user.emailId!)
                                  ],
                                ),
                              ),
                            ),
                            DataCell(
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text(user.password!)
                                  ],
                                ),
                              ),
                            ),
                            DataCell(
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text(user.phoneNumber!)
                                  ],
                                ),
                              ),
                            ),
                            DataCell(
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    IconButton(onPressed: (){
                                      controller.deleteData(user.id!);
                                    }, icon:Icon(Icons.delete_forever,color: Colors.red,))
                                  ],
                                ),
                              ),
                            ),
                            DataCell(
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    IconButton(onPressed: (){
                                      controller.fetchupdate(user.id!);
                                    }, icon:Icon(Icons.edit,color: Colors.green,))
                                  ],
                                ),
                              ),
                            ),



                          ]);
                        }).toList(),),
                    )


                  ],


                ),
              ),


            ),
          ),



        ));
  }









}