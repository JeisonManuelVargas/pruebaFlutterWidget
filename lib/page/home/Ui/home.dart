import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prueba_flutter_ideati/getXController/homeController.dart';
import 'package:prueba_flutter_ideati/page/home/Ui/widget/cardAccount.dart';

import '../../../getXController/homeController.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final HomeController homeController = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    HomeController().getIcanhazdadjokeData(3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Obx(
          ()=> ListView.builder(
              shrinkWrap: true,
              itemCount: homeController.listAccountData.length,
              itemBuilder: (BuildContext context, int index) {
                return CardAccount(accountData: homeController.listAccountData[index],);
              })
      ),
      bottomNavigationBar: BottomAppBar(
        child:Container(
          height: 50,
        ),
        color: Colors.blueGrey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        child: Icon(Icons.add),
        elevation: 5,
      ),
    );
  }
}
