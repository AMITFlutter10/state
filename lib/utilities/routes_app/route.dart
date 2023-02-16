

import 'package:flutter/material.dart';
import 'package:state34/utilities/routes_app/routers.dart';
import 'package:state34/view/home_theme.dart';

import '../../view/splash_screen.dart';

Route onGenerateRoute (RouteSettings routeSettings){
  switch(routeSettings.name){
    case AppRoutes.splashScreen:
      return MaterialPageRoute(builder: (_)=>const SplashScreen());

     case AppRoutes.homeScreen:
      default: return MaterialPageRoute(builder: (_)=>const HomePage());
  }

}