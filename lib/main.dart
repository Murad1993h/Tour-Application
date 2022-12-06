import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tour/const/app_colors.dart';
import 'package:tour/const/app_strings.dart';
import 'package:tour/splashScreen/splash_screen.dart';
import 'package:tour/ui/route/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),

      builder: (BuildContext context, Widget? child) {
        return  GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppString.appname,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme.apply(),
            ),

            scaffoldBackgroundColor: AppColors.ScaffoldColor,


          ),
          initialRoute: splash,
          getPages:getPage,
          home: SplashScreen(),



        );
      },

    );
  }
}


