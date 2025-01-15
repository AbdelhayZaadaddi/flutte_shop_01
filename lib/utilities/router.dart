import 'package:flutter/cupertino.dart';
import 'package:shop_01/utilities/routes.dart';
import 'package:shop_01/views/pages/landing_page.dart';
import 'package:shop_01/views/pages/auth_page.dart';
import 'package:shop_01/views/pages/register_page.dart';


Route<dynamic> onGenerate(RouteSettings settings){
  switch(settings.name){
    case AppRoutes.registerPageRoute:
      return CupertinoPageRoute(builder: (_) => const RegisterPage());
    case AppRoutes.loginPageRoute:
      return CupertinoPageRoute(builder: (_) => const LoginPage());
    case AppRoutes.landingPageRoute:
    default:
      return CupertinoPageRoute(builder: (_) => const LandingPage(),);
  }
}