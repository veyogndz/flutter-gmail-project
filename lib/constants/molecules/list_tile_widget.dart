import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  late final trailing;
  late final title_widget;
  late final subtitle_widget;
  late final leading_widget;
  late final trailing_widget;
  late final onpress_widget;

   ListTileWidget({Key? key , this.title_widget,this.trailing,this.subtitle_widget,this.leading_widget,this.trailing_widget,this.onpress_widget}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListTile(
    title: title_widget,
    trailing: trailing_widget,
    subtitle: subtitle_widget,
    leading: leading_widget,
    onTap: onpress_widget,

  );
}
