import 'package:flutter/material.dart';
import 'package:hw_10/constants/api_const.dart';
import 'package:hw_10/models/news_model.dart';
import 'package:hw_10/services/fetch.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TopNews? topNews;
  Future <void> fetchNews() async {
    topNews = await TopNewsRepo().fetchTopNews();
    setState(() {});
  }
  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NewsAgregator'),),
      body: topNews == null ? const Center(child:  CircularProgressIndicator()): 
      ListView.builder(
        itemCount: topNews!.articles.length,
        itemBuilder: (context, index){
          final news = topNews!.articles[index];
          return Card(
            color: Colors.grey[400],
            child: Row(children: [
              Image.network(news.urlToImage ?? ApiConst.newsImg),
              Text(news.title)

            ],),
          );

      } ),
    );
  }
}