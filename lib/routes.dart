import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:ui/core/constants/route_names.dart';
import 'package:ui/view/screens/auth/auth.dart';
import 'package:ui/view/screens/auth/forgetpass.dart';
import 'package:ui/view/screens/auth/loginscreen.dart';
import 'package:ui/view/screens/auth/registerscreen.dart';
import 'package:ui/view/screens/auth/resetpassword.dart';
import 'package:ui/view/screens/auth/successresetpass.dart';
import 'package:ui/view/screens/auth/verifycode.dart';
import 'package:ui/view/screens/cart.dart';
import 'package:ui/view/screens/categoriesscreen.dart';
import 'package:ui/view/screens/categoryscreen.dart';
import 'package:ui/view/screens/home.dart';
import 'package:ui/view/screens/itemdetails.dart';
import 'package:ui/view/screens/onboarding.dart';
import 'package:ui/view/screens/splashscreen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => const SplashScreen(),
    middlewares: [
      // MyMiddleware(),
    ],
  ),
  GetPage(name: AppRoutes.myCart, page: () => const CartScreen()),
  GetPage(name: AppRoutes.homePage, page: () => const HomePage()),
  GetPage(name: AppRoutes.onboarding, page: () => const OnBoarding()),
  GetPage(name: AppRoutes.categoryscreen, page: () => const CategoyScreen()),
  GetPage(name: AppRoutes.categoriesscreen, page: () => const CategoriesScreen()),
  GetPage(name: AppRoutes.itemdetails, page: () => const ItemDetails()),

  // auth screens
  GetPage(name: AppRoutes.auth, page: () => const AuthScreen()),
  GetPage(name: AppRoutes.registerscreen, page: () => const RegisterScreen()),
  GetPage(name: AppRoutes.loginscreen, page: () => const LoginScreen()),
  GetPage(name: AppRoutes.forgetPass, page: () => const ForgetPassword()),
  GetPage(name: AppRoutes.verifycode, page: () => const VerifyCodeScreen()),
  GetPage(name: AppRoutes.resetpass, page: () => const ResetPasswordScreen()),
  GetPage(name: AppRoutes.successresetpass, page: () => const SuccessResetPassword()),
];
