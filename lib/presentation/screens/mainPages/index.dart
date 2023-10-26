import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../shared/theme.dart';
import './favorite.dart';
import './home.dart';
import './market.dart';
import './profile.dart';
// import './search.dart';

// ignore: must_be_immutable
class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List pages = [
    const HomePage(),
    const MarketPage(),
    const Favorites(),
    const Profilepage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Color getIconColor(int index) {
    return index == currentIndex ? AppThemes.primaryColor : AppThemes.navGray;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 12,
        selectedFontSize: 12,
        selectedLabelStyle: const TextStyle(
            fontFamily: 'Poppins', color: AppThemes.primaryColor),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  child: SvgPicture.asset(
                    "assets/icons/home.svg",
                    color: getIconColor(0),
                    width: 29,
                  ),
                ),
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/market.svg",
                color: getIconColor(1),
                width: 30,
              ),
              label: "market"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/favorite.svg",
                color: getIconColor(2),
                width: 29,
              ),
              label: "favorite"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/profile.svg",
                color: getIconColor(3),
                width: 29,
              ),
              label: "profile"),
        ],
      ),
    );
  }
}
