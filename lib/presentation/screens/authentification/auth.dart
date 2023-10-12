import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/shared/theme.dart';
import '../../widgets/custom_button.dart';
import './signupWithEmail.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/orange_juice.jpg',
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.black.withOpacity(0.4),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 180, bottom: 140),
                      child: SvgPicture.asset('assets/icons/app_logo.svg'),
                    ),
                    CustomButton(
                      onPress: () {},
                      buttonType: 'facebook',
                      buttonTxt: "Sign In with Facebook",
                      iconPath: 'assets/icons/facebook_logo.svg',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      onPress: () {},
                      buttonType: 'google',
                      buttonTxt: "Sign In with Google",
                      iconPath: 'assets/icons/google_logo.svg',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      onPress: () {},
                      buttonType: 'apple',
                      buttonTxt: "Sign In with Apple",
                      iconPath: 'assets/icons/apple_logo.svg',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          right: 40.0, left: 40.0, bottom: 30.0),
                      child: Divider(height: 2, color: AppThemes.white),
                    ),
                    CustomButton(
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpWithEmail()),
                        );
                      },
                      buttonType: 'secondary',
                      buttonTxt: "Sign Up with Email",
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
