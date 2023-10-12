import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/shared/theme.dart';
import '../../widgets/input.dart';
import '../../widgets/custom_button.dart';
import '../onboarding/onboarding.dart';

class SignUpWithEmail extends StatefulWidget {
  const SignUpWithEmail({Key? key}) : super(key: key);

  @override
  State<SignUpWithEmail> createState() {
    return _SignUpWithEmailState();
  }
}

class _SignUpWithEmailState extends State<SignUpWithEmail>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  final _formKey = GlobalKey<FormState>(); // Add form key

  final String _email = '';
  final String _password = '';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppThemes.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 120.0, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/logo2.svg'),
              const SizedBox(height: 30),
              const Text(
                "Welcome Back!",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Input(
                          placeholder: "Email", icon: 'assets/icons/mail.svg'),
                      const SizedBox(
                        height: 15,
                      ),
                      const Input(
                        icon: 'assets/icons/lock.svg',
                        placeholder: "Password",
                      ),
                      const SizedBox(height: 40),
                      CustomButton(
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Onboarding()),
                          );
                        },
                        buttonType: 'get started',
                        buttonTxt: "Create Account",
                      ),
                      const SizedBox(height: 25),
                      RichText(
                        text: const TextSpan(
                          text:
                              'By clicking "Create account", I agree to SnackOverflow’s TOS and.',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(151, 145, 151, 1.0),
                          ),
                          children: [
                            TextSpan(
                              text: ' Privacy Policy',
                              style: TextStyle(
                                color: Color.fromRGBO(65, 155, 249, 1.0),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
