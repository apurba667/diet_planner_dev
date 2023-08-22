
class ApiUrl{
  static const String BASE_URL ="http://10.0.2.2:8081/api/v1/";

  static const String URL_NEWS =BASE_URL+"marketing/news?businessId=1";
  static const String URL_NEWS_DETAILS =BASE_URL+"marketing/news/148";
  static const String URL_HIT_COUNT =BASE_URL+"hit_count";

  static const Map<String, String> HEADERS = {"Content-type": "application/json"};
  static const String DEFAULT_JSON_BODY ='{"msisdn": "", "access_token": "8vGbKoerFEl1oDT9aB0x9c3bfY5IsUcK+5oETiyu6i8=", "id":"1","date":"2020-08-25"}';

}