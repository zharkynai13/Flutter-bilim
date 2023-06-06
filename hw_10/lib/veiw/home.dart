import 'package:flutter/material.dart';
import 'package:hw_10/constants/api_const.dart';
import 'package:hw_10/models/news_model.dart';
import 'package:hw_10/services/fetch.dart';
import '../theme/color_style.dart';

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
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.appBarGradient, 
              AppColors.appBarClr]
            )
          ),
        ),
        title: const Text('BBC News'),
        actions: const [Icon(Icons.more_vert)],
        ),
      body: topNews == null ? const  Center(child: CircularProgressIndicator()): 
      ListView.builder(
        itemCount: topNews!.articles.length,
        itemBuilder: (context, index){
          final news = topNews!.articles[index];
          return InkWell(
            onTap: (){},
            child: Card(
              color: AppColors.cardClr,
              child: Row(
                children: [
                Expanded(
                  flex: 3,
                  child: 
                  Image.network(news.urlToImage ?? ApiConst.newsImg)
                  ),
                  const SizedBox(width: 20,),
                Expanded(
                  flex: 5,
                  child: Text(news.title, style: const TextStyle(fontSize: 16),))
              ],),
            ),
          );

      } ),
    );
  }
}