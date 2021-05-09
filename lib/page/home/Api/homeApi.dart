import 'package:prueba_flutter_ideati/utils/abstractApi.dart';

class HomeApi  extends AbstractApi {

  HomeApi._() : super(url: '/user/app/auth');


  readJokaData() async {
    var response = await readData();
      print('Hola mundo');
  }
}