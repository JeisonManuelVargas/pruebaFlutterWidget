import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prueba_flutter_ideati/getXController/homeController.dart';
import 'package:prueba_flutter_ideati/model/accountModel.dart';
import 'package:prueba_flutter_ideati/page/home/Ui/widget/cardAccount.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../getXController/homeController.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeController homeController = Get.put(HomeController());
  Size size;

  @override
  void initState() {
    super.initState();
    HomeController().getJokeData(3);
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("AppName").tr(),
      ),
      backgroundColor: Colors.grey[300],
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Obx(
                    () => homeController.getAccountData.length > 0
                    ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: homeController.getAccountData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CardAccount(
                        addLike: addLike,
                        subtractLike: subtractLike,
                        accountData: homeController.getAccountData[index],
                      );
                    })
                    : Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
            Flexible(flex: 0, fit: FlexFit.loose, child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text("messageHome", textAlign: TextAlign.center).tr(),
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
        ),
        color: Colors.blueGrey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeController.getJokeData(3);
        },
        child: Icon(Icons.add),
        elevation: 5,
      ),
    );
  }

  addLike(AccountModel accountModel) {
    homeController.addLike(accountModel);
  }

  subtractLike(AccountModel accountModel) {
    homeController.subtractLike(accountModel);
  }
}
