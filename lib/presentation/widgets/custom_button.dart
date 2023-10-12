import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/shared/theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    // Key? key,
    required this.onPress,
    this.buttonTxt = 'Button',
    required this.buttonType,
    this.iconPath = '',
    this.bgColor = const Color(0xFFedeced),
    PageController? controller,
  });

  final String buttonType;
  final String buttonTxt;
  final String iconPath;
  final VoidCallback onPress;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: buttonType == 'facebook'
            ? AppThemes.blue
            : buttonType == 'google'
                ? AppThemes.white
                : buttonType == 'apple'
                    ? AppThemes.black
                    : buttonType == 'secondary'
                        ? AppThemes.white
                        : buttonType == 'random'
                            ? bgColor
                            : AppThemes.primaryColor,
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0),
        child: TextButton(
          onPressed: onPress,
          child: Center(
            child: Row(
              mainAxisAlignment: iconPath.isNotEmpty && buttonType != 'random'
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              children: [
                if (iconPath.isNotEmpty) SvgPicture.asset(iconPath),
                const SizedBox(width: 10),
                Text(
                  buttonTxt,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    color: buttonType == 'google'
                        ? AppThemes.darkGrey
                        : buttonType == 'secondary' || buttonType == 'random'
                            ? AppThemes.primaryColor
                            : AppThemes.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
