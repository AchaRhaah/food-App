import 'package:flutter/material.dart';

class MealCard extends StatefulWidget {
  final String image;
  final isSelected;
  final String text;

  const MealCard({
    required this.image,
    required this.text,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  State<MealCard> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MealCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 300,
          color: const Color.fromRGBO(247, 247, 247, 1.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: FractionallySizedBox(
                    widthFactor: 0.95,
                    heightFactor: 0.6,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(widget.image,
                            width: double.infinity, fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    widget.text,
                    style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        color: Color.fromRGBO(85, 77, 86, 1.0),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
