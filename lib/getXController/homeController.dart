import 'package:get/get.dart';
import 'package:prueba_flutter_ideati/model/icanhazdadjokeModel.dart';
import 'package:prueba_flutter_ideati/utils/abstractApi.dart';
import '../model/accountModel.dart';

class HomeController extends GetxController {

  var listAccountData = [].obs;
  var accountData = null.obs;

  setAccountData(data) => accountData = data;

  Future<IcanhazdadjokeModel> getIcanhazdadjokeData(int index) async {
    for(int i = 0; i <= index; i++){
      AbstractApi().readData(urlData: "https://icanhazdadjoke.com/slack").then((dynamic value) {
        IcanhazdadjokeModel dataJoke = IcanhazdadjokeModel.fromJson(value);
        AccountModel item = AccountModel(
            name: dataJoke.attachments[0].fallback,
            descriptino: dataJoke.attachments[0].fallback,
            img: "",
            numberLike: 3
        );
        /*listAccountData.v*/
      });
    }
  }
}
