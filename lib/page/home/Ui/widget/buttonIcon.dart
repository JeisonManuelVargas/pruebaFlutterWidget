import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {

  final IconData iconData;
  final Function handledButton;

  ButtonIcon({this.iconData, this.handledButton});
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: IconButton(
        onPressed: (){

        },
        icon: Icon(iconData),
      ),
    );
  }
}
