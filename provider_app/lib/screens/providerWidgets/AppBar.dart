import 'package:flutter/material.dart';
import '../../methods/methods.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final String text;
  AppBarWidget({@required this.text});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            pop(context);
          }),
      title: Text(text),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
