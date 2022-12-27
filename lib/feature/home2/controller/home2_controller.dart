

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vivekfinaltest/core/modal/fetchup_model.dart';
import 'package:vivekfinaltest/core/repositary/daterepo/date_repo.dart';
import 'package:vivekfinaltest/core/repositary/daterepo/date_repo_impl.dart';
import 'package:vivekfinaltest/core/repositary/fetchuprepo/fetchup_repo.dart';
import 'package:vivekfinaltest/core/repositary/fetchuprepo/fetchup_repo_impl.dart';


class Home2Controller extends GetxController{



  var selectedIndex = 0.obs;

  void changeIndex(int index){
    selectedIndex.value = index;
  }


  late FetchupRepo _fetchupRepo;
  late DateRepo _dateRepo;


  Home2Controller() {
    _fetchupRepo = Get.find<FetchupRepoImpl>();

    _dateRepo = Get.find<DateRepoImpl>();

  }
  // var phoneNumber = '8109520402';
  RxString phoneNumber=''.obs;
  RxString name = ''.obs;
  RxString emailId = ''.obs;
  RxString password = ''.obs;
  RxBool loader = true.obs;
  RxString id = ''.obs;

  var isProficPicPathSet = false.obs;
  var profilePicPath = "".obs;

  void setProfileImagePath(String path) {
    profilePicPath.value = path;
    isProficPicPathSet.value = true;
  }



  RxList<FetchupResponse> fetchDataList = <FetchupResponse>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    fetchData();
    todayDate();
    getCurrentLatLong();
    super.onInit();
  }





  fetchData()async{
    loader.value=true;
    final response = await SharedPreferences.getInstance();

    SharedPreferences prefs = await SharedPreferences.getInstance();

    password.value = prefs.getString("password")!;
    name.value= prefs.getString("name")!;
    emailId.value= prefs.getString("email")!;
    phoneNumber.value= prefs.getString("phone")!;
    id.value= prefs.getString("Id")!;
    loader.value=false;

   print("line numer 55");
     print(emailId);
     print(name);
     print(phoneNumber);
     print(id);

  }









  late final DateRepo _DateRepo= Get.find<DateRepoImpl>();


  dateAPI()async{


      final response = await _dateRepo.dateAPI( id.string, currentDate.value, currentTime.value, currentLocation.value);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      print(response!.response);
      

      print("Response print");

    }
  late final DateRepo _TimeRepo= Get.find<DateRepoImpl>();


  TimeoutAPI()async{


    final response = await _TimeRepo.TimeoutAPI( id.string, currentDate.value, currentTime.value, currentLocation.value);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(response!.response);


    print("Response print");

  }
  todayDate() {
    var now = new DateTime.now();
    var formatter = new DateFormat('dd-MM-yyyy');
    String formattedTime = DateFormat('kk:mm:a').format(now);
    String formattedDate = formatter.format(now);
    print(formattedTime);
    currentDate.value =formattedDate;
    currentTime.value = formattedTime;
    print(formattedDate);
  }


  RxString currentDate = ''.obs;
  RxString currentTime = ''.obs;

  RxString currentLocation = ''.obs;

  final GeolocatorPlatform _geolocationPlatform = GeolocatorPlatform.instance;

  Future<void>getCurrentLatLong()async {
    final myPositon = await _geolocationPlatform.getCurrentPosition();
    getAddress(myPositon).then((val){
      print(val);
      currentLocation.value = val;

    });

  }

  Future<String>getAddress(Position position)async{
    if(position.latitude!=null || position.longitude!=null )  {
      try{
        var currentPlace = await placemarkFromCoordinates(position.latitude, position.longitude);
        if(currentPlace!=null && currentPlace.isNotEmpty){
          final Placemark place = currentPlace.first;
          return "${place.name},${place.thoroughfare},${place.subLocality},${place.locality},${place.administrativeArea},${place.postalCode},${place.country},${DateTime.now()},";

        }
      }
      on Exception catch (exception){
        print("Location exception:"+exception.toString());
        return "${position.latitude},${position.longitude}";
      }

      catch(e){
        return "${position.latitude},${position.longitude}";
      }
    } else{
      return "Nothing";
    }
    return "Not Address Found";
  }




}