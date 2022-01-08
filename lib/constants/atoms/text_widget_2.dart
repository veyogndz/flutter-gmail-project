import 'package:flutter/material.dart';

class TextWidget2 extends StatelessWidget {
  late final text;
  late final align;

  TextWidget2({Key? key, this.text, this.align}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(

      text,
      style:  const TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w500),
      //textAlign: align
  );
}
