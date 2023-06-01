// import 'package:hw_10/models/article.dart';

// class TopNews {
//   final String status;
//   final int totalResults;
//   final Article article;

//   TopNews(
//     { 
//     required this.status, 
//     required this.totalResults, 
//     required this.article
//     }
//   );
//   factory TopNews.fromJson(Map<String, dynamic>json) => 
//   TopNews(
//     status: json["status"], 
//     totalResults: json["totalResults"], 
//   //  article: List<Article>.from(
//   //       json["articles"].map((articleJson) => Article.fromJson(articleJson)),
//         );
// }

import 'package:hw_10/models/article.dart';

class TopNews {
  final String status;
  final int totalResults;
  final List<Article> articles;

  TopNews({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory TopNews.fromJson(Map<String, dynamic> json) {
    return TopNews(
      status: json["status"],
      totalResults: json["totalResults"],
      articles: List<Article>.from(
        (json["articles"] as List).map((articleJson) => Article.fromJson(articleJson)),
      ),
    );
  }
}
