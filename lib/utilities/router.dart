import 'package:flutter/cupertino.dart';
import 'package:shop_01/utilities/routes.dart';
import 'package:shop_01/views/pages/landing_page.dart';
import 'package:shop_01/views/pages/login_page.dart';

Route<dynamic> onGenerate(RouteSettings settings){
  switch(settings.name){
    case AppRoutes.loginPageRoute:
      return CupertinoPageRoute(builder: (_) => const LoginPage());
    case AppRoutes.landingPageRoute:
    default:
      return CupertinoPageRoute(builder: (_) => const LandingPage(),);
  }
}