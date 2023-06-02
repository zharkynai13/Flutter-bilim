
import 'package:hw_10/models/source.dart';

class Article {
 final Source source;
 final String? author;
 final String title;
 final String description;
 final String url;
 final String? urlToImage;
 final String? publishedAt;
 final String content;

  Article(
    this.source, 
    this.author, 
    this.title, 
    this.description, 
    this.url, 
    this.urlToImage, 
    this.publishedAt, 
    this.content);
    factory Article.fromJson(Map<String, dynamic>json) => Article(
    Source.fromJson(json["source"]),
    json["author"],
    json["title"],
    json["description"]?? '', // null алып келе алат 
    json["url"], 
    json["urlToImage"], 
    json["publishedAt"], 
    json["content"] ??'', // null алып келе алат 
     );
}