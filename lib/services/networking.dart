import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  Future getData(address) async {
    var url = Uri.parse(address);
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
