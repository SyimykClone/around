import 'package:flutter/material.dart';
import '../../screens/auth/login_screen.dart';
import '../../screens/auth/register_screen.dart';
import '../../screens/home/map_screen.dart';
import '../../screens/home/poi_list_screen.dart';
import '../../screens/poi/poi_detail_screen.dart';

final Map<String, WidgetBuilder> appRouter = {
  '/login': (context) => const LoginScreen(),
  '/register': (context) => const RegisterScreen(),
  '/map': (context) => const MapScreen(),
  '/poi-list': (context) => const PoiListScreen(),
  '/poi-detail': (context) => const PoiDetailScreen(),
};
