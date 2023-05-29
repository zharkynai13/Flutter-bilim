import 'package:hw_10/models/article.dart';

class TopNews {
  final String status;
  final int totalResults;
  final Article article;

  TopNews(
    { 
    required this.status, 
    required this.totalResults, 
    required this.article
    }
  );
}


