import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:marquee/marquee.dart';
import '../controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(

        init: SplashController(),
        builder: (dynamic _) => Scaffold(
           // backgroundColor: Colors.limeAccent,
          // body: Center(
          // //  child:Text('WelCome',style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.white),
          //       child: Image.asset("assets/app.gif",
          //
          //           gaplessPlayback: true,
          //           fit: BoxFit.fill,
          //           height: 1000,
          //         width: 1000,
          //
          //       )
          //
          // ),
    body: Center(
    child: Stack(
    children: <Widget>[
    Container(
    alignment: Alignment.center,
    child: Image.asset("assets/ironman.gif",
      // gaplessPlayback: true,
      fit: BoxFit.fill,
    height: 750,
    width: double.infinity,

    ),
    ),
    Container(
    alignment: Alignment.center,
      child: Marquee(
        text: 'Hello Vivek Singh Kaushal',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize:50,color: Colors.pinkAccent),
        scrollAxis: Axis.horizontal, //scroll direction
        //crossAxisAlignment: CrossAxisAlignment.start,
        blankSpace: 20.0,
        velocity: 50.0, //speed
     pauseAfterRound: Duration(seconds: 1),
      startPadding: 10.0,
        accelerationDuration: Duration(seconds: 1),
        accelerationCurve: Curves.elasticInOut,
       decelerationDuration: Duration(milliseconds: 500),
       decelerationCurve: Curves.easeOut,
      ),),
     ],
    ),



          ),
        ),
    );
  }
}