import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Selection extends StatefulWidget {
  final String text;
  const Selection({Key? key, required this.text}) : super(key: key);
  @override
  _SelectionState createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  bool isTicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: GestureDetector(
          onTap: () {
            setState(() {
              isTicked = !isTicked;
            });
          },
          child: Container(
            width: double.infinity,
            height: 70,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(247, 247, 247, 1.0),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Row(
              children: [
                const SizedBox(width: 10),
                isTicked
                    ? SvgPicture.asset('assets/icons/tick.svg')
                    : SvgPicture.asset('assets/icons/circle.svg'),
                const SizedBox(width: 8),
                Text(
                  widget.text,
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(151, 145, 151, 1.0)),
                )
              ],
            ),
          ),
        ));
  }
}
