import 'package:flutter/material.dart';
import 'package:reply_project/constants/molecules/list_tile_widget.dart';

class ListsColumns extends StatelessWidget {
  late final trailing;
  late final title_widget;
  late final subtitle_widget;
  late final leading_widget;
  late final trailing_widget;
  late final onpress_widget;

  ListsColumns(
      {Key? key, this.onpress_widget, this.trailing_widget, this.trailing, this.leading_widget, this.subtitle_widget, this.title_widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) =>
      const ListTile(

      );
}
