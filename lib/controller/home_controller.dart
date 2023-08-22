import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../network/api_url.dart';

class HomeController extends GetxController {
  //var newsModel = HomeModel().obs;
  final localStorage = GetStorage();

  //var newsModel = List<News_model>().obs;

  @override
  void onInit() {
    getNews();
    getNewsDetails();
    super.onInit();
  }

  getNews() async {
    var newsRes = await getRequest(ApiUrl.URL_NEWS);

    Iterable l = jsonDecode(newsRes.body);
/*    List<News_model> posts = List<News_model>.from(l.map((model)=> News_model.fromJson(model)));
    newsModel.value.addAll(posts);

    debugPrint(">>>>>"+newsModel.value.length.toString());*/
  }

  getNewsDetails() async {
    var newsRes = await getRequest(ApiUrl.URL_NEWS_DETAILS);

/*    Iterable l = jsonDecode(newsRes.body);
    List<News_model> posts = List<News_model>.from(l.map((model)=> News_model.fromJson(model)));
    newsModel.value.addAll(posts);

    debugPrint(">>>>>"+newsModel.value.length.toString());*/
  }

/*getHomeDataUpdate(int getIntValue) async {

    Repositories repositories = new Repositories(apiClient: ApiClient(httpClient: http.Client()));
    homeModel.value = await repositories.getHomeDataUpdate(getIntValue);

  }*/


//post request
/*  Future<Map<String, dynamic>> postRequestWithBody(url,body) async {
    final response = await http.post(url, headers: Api.HEADERS, body: body.toString());

    debugPrint("url:: " + url);
    debugPrint("responseErrorCode" + response.statusCode.toString());

    if (response.statusCode != 200) {
      throw ("responseErrorMsg");
    }

    final json = jsonDecode(response.body);

    debugPrint("response:: " + json.toString());

    return json;
  }*/

  Future<http.Response> getRequest(url) async {
    final response = await http.get(url);

    debugPrint("url:: " + url);
    debugPrint("responseErrorCode" + response.statusCode.toString());

    if (response.statusCode != 200) {
      throw ("responseErrorMsg");
    }

    final json = jsonDecode(response.body);

    debugPrint("response:: " + json.toString());

    return response;
  }


}
