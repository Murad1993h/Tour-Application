import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tour/const/app_strings.dart';
import 'package:tour/ui/route/route.dart';
import 'package:tour/ui/styles/style.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Future.delayed(Duration(seconds: 3), () => Get.toNamed(onboarding));
    super.initState();
  }
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          body: //Center(child: Text("Hellow word ", style: TextStyle(fontSize: 30))),
              Container(
        width: double.maxFinite,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo/logo 1.png",
              height: 200.h,
            ),
            Text(
              AppString.appname,
              style: AppStyles().myTextStyle,
            ),
          ],
        ),
      )),
    );
  }
}
