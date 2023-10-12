import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../shared/theme.dart';

class Input extends StatefulWidget {
  final String? icon;
  final String placeholder;

  const Input({
    Key? key,
    this.icon,
    this.placeholder = 'Input',
  }) : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _hasFocus = false;
  bool _isEmpty = true;

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_onTextChanged);
    _focusNode.addListener(_onFocusChanged);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _isEmpty = _textEditingController.text.isEmpty;
    });
  }

  void _onFocusChanged() {
    setState(() {
      _hasFocus = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: !_hasFocus && !_isEmpty ? AppThemes.inputGrey : Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color:
              !_hasFocus && !_isEmpty ? AppThemes.white : AppThemes.borderGrey,
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 5,
            ),
            SvgPicture.asset(
              widget.icon!,
              height: 30, // Adjust the height as per your requirement
              width: 30, // Adjust the width as per your requirement
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                controller: _textEditingController,
                focusNode: _focusNode,
                decoration: InputDecoration(
                  hintText: widget.placeholder,
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
