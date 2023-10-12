import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        backgroundColor: const Color.fromRGBO(247, 247, 247, 1.0),
        radius: 55,
        child: SvgPicture.asset(
          'assets/icons/profile.svg',
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
