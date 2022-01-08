import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  late final text;
  late final align;

    TextWidget({Key? key, this.text, this.align}) : super(key: key);

    @override
    Widget build(BuildContext context) => Text(
        text,
        style:  const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w500),
        textAlign: align);
}
