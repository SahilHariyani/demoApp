import 'dart:convert';

import 'package:demo/model/demo_response_model.dart';
import 'package:http/http.dart' as http;

class FetchData {
  Future<DemoResponse> getData() async {
    String getUrl = "https://demo1129400.mockable.io/hello";
    DemoResponse demoResponse;
    final response = await http.get(getUrl);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.

      //json object
      var jsonData = json.decode(response.body);
           demoResponse = DemoResponse.fromJson(jsonData);
      //json to dart object
      return demoResponse;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
