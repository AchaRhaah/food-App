import 'package:flutter/material.dart';
import '../../../shared/theme.dart';
import '../../../shared/constants.dart';
import '../../widgets/custom_button.dart';
import '../authentification/auth.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _Welcome();
}

class _Welcome extends State<Welcome> {
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

  void handleButtonPress() {
    if (currentIndex == contents.length - 1) {
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppThemes.white,
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 130),
                    child: Column(
                      children: [
                        Image.asset(contents[i].image),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          contents[i].title,
                          style: const TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                            color: AppThemes.primaryColor,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: CustomButton(
                controller: _controller,
                onPress: handleButtonPress,
                buttonType: 'get started',
                buttonTxt: "Get Started",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index) {
    return Container(
      height: 10,
      width: index == currentIndex ? 30 : 10,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppThemes.lightGrey,
      ),
    );
  }
}
