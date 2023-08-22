import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'api_url.dart';


class ApiClient {

  static String responseErrorMsg = "data not found";
  static String responseErrorCode = "response.statusCode:: ";

  //post request
 static Future<Map<String, dynamic>> postRequest(url) async {
    final response = await http.post(url, headers: ApiUrl.HEADERS, body: ApiUrl.DEFAULT_JSON_BODY);

    debugPrint("url:: " + url);
    debugPrint(responseErrorCode + response.statusCode.toString());

    if (response.statusCode != 200) {
      debugPrint("response:: " + ">>>>>>>>>>>>>>>>>>>null");
      //throw (responseErrorMsg);
    }

    final json = jsonDecode(response.body);

    debugPrint("response:: " + json.toString());

    return json;
  }


  //post request
  static Future<Map<String, dynamic>> postRequestWithBody(url,body) async {
    final response = await http.post(url, headers: ApiUrl.HEADERS, body: body.toString());

    debugPrint("url:: " + url);
    debugPrint("body:: " + body.toString());
    debugPrint(responseErrorCode + response.statusCode.toString());

    if (response.statusCode != 200) {
      throw (responseErrorMsg);
    }

    final json = jsonDecode(response.body);

    debugPrint("response:: " + json.toString());

    return json;
  }

  //get request
  static Future<Map<String, dynamic>> getRequest(url) async {
    final response = await http.get(url);

    debugPrint("url:: " + url);
    debugPrint(responseErrorCode + response.statusCode.toString());

    if (response.statusCode != 200) {
      throw (responseErrorMsg);
    }

    final json = jsonDecode(response.body);

    debugPrint("response:: " + json.toString());

    return json;
  }
}
