import 'dart:convert';

import 'package:bitcoinnews/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        'https://newsapi.org/v2/everything?language=pt&q=bitcoin&apiKey=f108b9f5649446248fb01f54987421cb';

    var response = await http.get(Uri.parse(url));
    //http.Response response = await get("https://newsapi.org/v2/everything?q=bitcoin&apiKey=f108b9f5649446248fb01f54987421cb");
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element["title"],
            author: element["author"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["context"],
          );

          news.add(articleModel);
        }
      });
    }
  }

  get(String s) {}
}
