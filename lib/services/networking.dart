import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  NetworkHelper(this.uri); //constructor

  final Uri uri;

  Future getData() async{

    http.Response response = await http.get(uri);
    if(response.statusCode == 200) {
      String data = response.body;
      print(200);
      print(data);

      return jsonDecode(data);
    }else
      print(response.statusCode);
  }

}