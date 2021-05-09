import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../../model/accountModel.dart';
import 'package:prueba_flutter_ideati/page/home/Ui/widget/buttonIcon.dart';

class CardAccount extends StatelessWidget {
  final AccountModel accountData;

  CardAccount({this.accountData});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: size.height / 10,
              width: size.height / 10,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.green),
            ),
          ),
          Expanded(
              flex: 6,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      accountData.name,
                      style: TextStyle(fontSize: 11),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          ButtonIcon(
                            iconData: Icons.thumb_up,
                          ),
                          Container(
                            child: Text("${accountData.numberLike}"),
                          ),
                          ButtonIcon(
                            iconData: Icons.thumb_down,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
