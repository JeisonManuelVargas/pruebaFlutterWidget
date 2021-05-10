import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prueba_flutter_ideati/model/accountModel.dart';

class ButtonIcon extends StatelessWidget {

  final IconData iconData;
  final Function handledButton;
  final AccountModel accountData;

  ButtonIcon({this.iconData, this.handledButton, this.accountData});
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: IconButton(
        onPressed: (){
          handledButton(accountData);
        },
        icon: Icon(iconData),
      ),
    );
  }
}
