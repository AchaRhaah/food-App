import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg';
import 'package:flutter_svg/svg.dart';
import '../../../presentation/widgets/Category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String greeting = 'Afternoon';
  String getImagePath() {
    final now = DateTime.now();
    final currentHour = now.hour;
    if (currentHour >= 6 && currentHour < 12) {
      setState(() {
        greeting = 'morning';
      });
      return 'assets/images/morning_choice.jpg';
    } else if (currentHour >= 12 && currentHour < 18) {
      setState(() {
        greeting = 'afternoon';
      });
      return 'assets/images/afternoon_choice.jpg';
    } else {
      setState(() {
        greeting = 'evening';
      });
      return 'assets/images/evening_choice.jpg';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 300,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image(
                image: AssetImage(getImagePath()),
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.7), // Dark overlay color
                      Colors.transparent, // Fully transparent at the top
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/location.svg',
                              color: Colors.white,
                              width: 35,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text(
                              "San Francisco, CA",
                              style: TextStyle(
                                fontFamily: 'poppins',
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Good $greeting!",
                          style: const TextStyle(
                            fontFamily: 'poppins',
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          "Take a break from work",
                          style: TextStyle(
                            fontFamily: 'poppins',
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(children: [
                Category(category: "Daily quest"),
                
                Category(category: "Popular items"),
                Category(category: "Recommended for you"),
                Category(category: "Seasonal bundles"),
                Category(category: "Mystery bundles"),
          ],),
        ),
       
      ],
    );
  }
}
