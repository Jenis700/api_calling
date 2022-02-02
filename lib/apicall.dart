import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';



  Future getRequest() async {
    String url = "http://128.199.18.158:3102/admin/dashboard";
    final response = await http.get(Uri.parse(url));
    var responseData = json.decode(response.body);
    print('Daataa.,...... : ${responseData}');
    return responseData;
  }


Future postRequest() async {
    Map data = {
      "pageNumber": 0,
      "pageSize": 10,
      "startDate": "2021-12-01",
      "endDate": "2021-12-31",
      "searchEmail": "jenish@samp.com"
    };
    String body = json.encode(data);
    String url = "http://128.199.18.158:3102/admin/dashboard";
    http.Response response = await http.post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: body,
    );
  var responseData = json.decode(response.body);
  print('Daataa.,...... : ${responseData}');
  return responseData;
}


