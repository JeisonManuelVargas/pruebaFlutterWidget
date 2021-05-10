import 'package:get/state_manager.dart';
import 'package:prueba_flutter_ideati/model/accountModel.dart';
import '../page/home/Api/homeApi.dart';
import 'package:prueba_flutter_ideati/page/home/Api/homeApi.dart';

class HomeController extends GetxController {
  Rx<List<AccountModel>> listAccountData  = Rx<List<AccountModel>>([]);
  var accountData = null.obs;

  @override
  void onInit() {
    super.onInit();
    getJokeData(3);
  }

  void getJokeData(int index) async {
    List<AccountModel> data = await HomeApi().readJokaData(index??3);
    data.sort((a,b) => a.numberLike.compareTo(b.numberLike));
    Stream<List<AccountModel>> newData = Stream.value(data);
    listAccountData.bindStream(newData);
  }

  addLike(AccountModel account){
    List<AccountModel> newData = listAccountData.value.map((data) {
      if(data.name == account.name){
        data.numberLike = account.numberLike + 1;
      }
      return data;
    }).toList();
    newData.sort((a,b) => a.numberLike.compareTo(b.numberLike));
    Stream<List<AccountModel>> streamData = Stream.value(newData);
    listAccountData.bindStream(streamData);
  }

  subtractLike(AccountModel account){
    List<AccountModel> newData = listAccountData.value.map((data) {
      if(data.name == account.name){
        data.numberLike = account.numberLike - 1;
      }
      return data;
    }).toList();
    newData.sort((a,b) => a.numberLike.compareTo(b.numberLike));
    Stream<List<AccountModel>> streamData = Stream.value(newData);
    listAccountData.bindStream(streamData);
  }



  List<AccountModel> get getAccountData =>  listAccountData.value;
}
