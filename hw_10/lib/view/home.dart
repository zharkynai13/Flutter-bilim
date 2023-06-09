import 'package:flutter/material.dart';
import 'package:hw_10/components/card-widget.dart';
import 'package:hw_10/models/domain_countries.dart';
import 'package:hw_10/models/news_model.dart';
import 'package:hw_10/services/fetch.dart';
import 'package:hw_10/view/detail_view.dart';
import '../theme/color_style.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TopNews? topNews;
  Future <void> fetchNews([String? domain]) async {
    topNews = null;
    setState(() {
      
    });
    topNews = await TopNewsRepo().fetchTopNews(domain);
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
        actions: [
          PopupMenuButton(
            onSelected: (Country item) async{
              await fetchNews(item.domain);

            },
            itemBuilder: (BuildContext context){
              return countrySet.map((e) => PopupMenuItem<Country>(
                value: e,
                child: Text(e.name),)).toList();
            }) 
          ],
        ),
      body: topNews == null ? const  Center(child: CircularProgressIndicator()): 
      ListView.builder(
        itemCount: topNews!.articles.length,
        itemBuilder: (context, index){
          final news = topNews!.articles[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>   DetailView(article: news,),
                ));
            },
            child: mainCard(news: news),
          );

      } ),
    );
  }
}

