import 'dart:typed_data';
import 'package:prueba_flutter_ideati/utils/abstractApi.dart';
import 'package:prueba_flutter_ideati/model/icanhazdadjokeModel.dart';
import '../../../model/accountModel.dart';

class HomeApi extends AbstractApi {
  Future<List<AccountModel>> readJokaData(int index) async {
    List<AccountModel> listData = [];
    for (int i = 0; i <= index; i++) {
      await AbstractApi()
          .readData(urlData: "https://icanhazdadjoke.com/slack")
          .then((dynamic value) {
        IcanhazdadjokeModel dataJoke = IcanhazdadjokeModel.fromJson(value);
        AbstractApi()
            .readDataImage(urlData: "https://avatars.dicebear.com/api/male/${dataJoke.attachments[0].fallback.split(' ')[0]}.svg?background=%230000ff")
            .then((Uint8List valueImage) {
          AccountModel item = AccountModel(
              name: dataJoke.attachments[0].fallback,
              descriptino: dataJoke.attachments[0].fallback,
              img: valueImage,
              numberLike: 3);
          listData.add(item);
        });
      });
    }
    return listData;
  }
}
