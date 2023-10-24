import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../shared/navigation/navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: SvgPicture.asset(
                  "assets/icons/home.svg",
                  width: 29,
                ),
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/market.svg",
                width: 30,
              ),
              label: "market"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/favorite.svg",
                width: 29,
              ),
              label: "favorite"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/profile.svg",
                width: 29,
              ),
              label: "profile"),
        ],
        onTap: (int index) {
          if (index < routesNames.length) {
            Navigator.pushNamed(context, routesNames[index] as String);
          }
        },
      ),
    );
  }
}
