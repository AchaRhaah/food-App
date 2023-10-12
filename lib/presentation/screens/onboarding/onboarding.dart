import 'package:flutter/material.dart';
import '../../../shared/theme.dart';
import '../../widgets/custom_button.dart';
import '../authentification/auth.dart';
import '../../widgets/profile_pic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _Onboarding();
}

class _Onboarding extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void handleButtonPressContinue() {
    if (currentIndex == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Auth()),
      );
    }

    _controller.nextPage(
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeIn,
    );
  }

  void handleButtonPressBack() {
    if (currentIndex == 0) {
      Navigator.pop(
        context,
        MaterialPageRoute(builder: (context) => const Auth()),
      );
    }

    _controller.previousPage(
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppThemes.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 80,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) => buildDot(index),
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                  controller: _controller,
                  itemCount: 4,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    if (i == 0) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "What is your name?",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30,
                                  color: AppThemes.primaryGray),
                            ),
                            const SizedBox(height: 30),
                            const ProfilePic(),
                            const SizedBox(height: 30),
                            const Text(
                              'acha_donna237',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(85, 77, 86, 1.0)),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/icons/location.svg'),
                                const Text(
                                  'Location',
                                  style: TextStyle(
                                      color: Color.fromRGBO(151, 145, 151, 1.0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: CustomButton(
                                controller: _controller,
                                onPress: handleButtonPressContinue,
                                buttonType: 'random',
                                iconPath: 'assets/icons/pencil.svg',
                                buttonTxt: "Edit",
                              ),
                            ),
                          ],
                        ),
                      );
                    } else if (i == 1) {
Padding(
                        padding: const EdgeInsets.only(top: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "What is your name?",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30,
                                  color: AppThemes.primaryGray),
                            ),
                            const SizedBox(height: 30),
                            const ProfilePic(),
                            const SizedBox(height: 30),
                            const Text(
                              'acha_donna237',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(85, 77, 86, 1.0)),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/icons/location.svg'),
                                const Text(
                                  'Location',
                                  style: TextStyle(
                                      color: Color.fromRGBO(151, 145, 151, 1.0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: CustomButton(
                                controller: _controller,
                                onPress: handleButtonPressContinue,
                                buttonType: 'random',
                                iconPath: 'assets/icons/pencil.svg',
                                buttonTxt: "Edit",
                              ),
                            ),
                          ],
                        ),
                      );                    } else if (i == 2) {
                      return const Text('text2');
                    } else if (i == 3) {
                      return const Text('text2');
                    }
                    return null;
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  CustomButton(
                    controller: _controller,
                    onPress: handleButtonPressContinue,
                    buttonType: 'get started',
                    buttonTxt: "Continue",
                  ),
                  const SizedBox(height: 15),
                  CustomButton(
                    controller: _controller,
                    onPress: handleButtonPressBack,
                    buttonType: 'random',
                    buttonTxt: "Back",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index) {
    return Container(
      height: 8,
      width: 75,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: index == currentIndex
            ? AppThemes.secondaryColor
            : AppThemes.lightGrey,
      ),
    );
  }
}
