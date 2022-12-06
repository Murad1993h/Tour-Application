import 'package:get/get.dart';
import 'package:tour/splashScreen/splash_screen.dart';
import 'package:tour/splashScreen/user_form.dart';

import '../../splashScreen/auth/sin_in.dart';
import '../../splashScreen/auth/sin_up.dart';
import '../../splashScreen/onboarding_screen.dart';


const String splash = '/splash-screen';
const String onboarding = '/onboarding-screen';
const String sinUp = '/sin-up-screen';
const String sinIn = '/sin-in-screen';
const String userForm = '/user-form-screen';

List<GetPage> getPage = [
  GetPage(name: splash, page: () => SplashScreen()),
  GetPage(name: onboarding, page: () => OnboardingScreen()),
  GetPage(
    name: sinUp,
    page: () => SinUp(),
  ),
  GetPage(
   name:  sinIn,
    page: ()=> SinIn(),
  ),
  GetPage(
    name:  userForm,
    page: ()=> UserForm(),
  ),
];
