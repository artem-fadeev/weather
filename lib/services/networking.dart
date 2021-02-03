import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({this.url});
  String url;

  Future getData() async {
    String data;
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      data = response.body;
      return jsonDecode(data);
    } else {
      print('We have a problem!');
    }
  }
}
