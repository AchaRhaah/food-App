import 'package:flutter/material.dart';
import 'package:foodie/presentation/screens/mainPages/search.dart';
import '../../presentation/screens/authentification/auth.dart';
import '../../presentation/screens/onboarding/onboarding.dart';
import '../../presentation/screens/welcome/welcome.dart';
import '../../presentation/screens/mainPages/favorite.dart';
import '../../presentation/screens/mainPages/home.dart';
import '../../presentation/screens/mainPages/market.dart';
import '../../presentation/screens/mainPages/profile.dart';

final Map<String, WidgetBuilder> routes = {
  '/welcome': (BuildContext context) => const Welcome(),
  '/onboarding': (BuildContext context) => const Onboarding(),
  '/login': (BuildContext context) => const Auth(),
  '/search': (BuildContext context) => const SearchPage(),
};

final Map<String, WidgetBuilder> routesNames = {
  '/home': (BuildContext context) => const HomePage(),
  '/market': (BuildContext context) => const MarketPage(),
  '/favorite': (BuildContext context) => const Favorites(),
  '/profile': (BuildContext context) => const Profilepage(),
};

const String initialRoute = '/home';

ThemeData appTheme = ThemeData();
