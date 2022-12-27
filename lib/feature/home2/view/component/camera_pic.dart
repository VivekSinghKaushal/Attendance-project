import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vivekfinaltest/feature/home2/controller/home2_controller.dart';




class TimeinPicture extends StatelessWidget {
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();
  RxBool change=true.obs;


  Home2Controller fetchcontroller = Get.find();

  TimeinPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Obx(() => CircleAvatar(
          backgroundImage: fetchcontroller .isProficPicPathSet.value == true
              ? FileImage(File(fetchcontroller .profilePicPath.value))
          as ImageProvider
              : AssetImage("image/ubi.jpeg"),
          radius: 50,
        )),
        Positioned(
          bottom: 0,
          left: 70,
          child: InkWell(
            child: Icon(Icons.camera),
            onTap: () {
              print("Camera clicked");
              showModalBottomSheet(
                context: context,
                builder: (context) => bottomSheet(context),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: Column(
        children: [
          const Text(
            "Choose Profile Photo",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.image,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Gallery",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    ),
                  ],
                ),
                onTap: () {
                  takePhoto(ImageSource.gallery);
                },
              ),
              const SizedBox(
                width: 80,
              ),
              InkWell(
                child: Column(
                  children: const [
                    Icon(
                      Icons.camera,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Camera",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  takePhoto(ImageSource.camera);
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> takePhoto(ImageSource source) async {
    final pickedImage =
    await imagePicker.pickImage(source: source, imageQuality: 100);

    pickedFile = File(pickedImage!.path);
    fetchcontroller .setProfileImagePath(pickedFile!.path);
    if(change.value==true){
      change.value=false;
    }
    else if(change.value==false)
    {
      change.value=true;
    };

    // Get.back();

    // print(pickedFile);
  }
}