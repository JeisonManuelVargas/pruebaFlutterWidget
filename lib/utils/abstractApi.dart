import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'dart:convert';

class AbstractApi {
  String url;

  AbstractApi({
    this.url,
  });

  Future readData({urlData}) async {
    String newUrl = urlData ?? url;
    try{
      final response = await http.get(newUrl);
      final dataDecode = response.body != "" ? json.decode(response.body) : [];
      if (response.statusCode >= 200 && response.statusCode <= 204) {
        return dataDecode;
      } else {
        print('Salio mal la consulta');
      }
    }catch(error){
      print(error);
    }
  }

  Future<Uint8List> readDataImage({urlData}) async {
    String newUrl = urlData ?? url;
    try{
      final response = await http.get(newUrl);
      if (response.statusCode >= 200 && response.statusCode <= 204) {
        return response.bodyBytes;
      } else {
        print('Salio mal la consulta');
      }
    }catch(error){
      print(error);
    }
  }
}

