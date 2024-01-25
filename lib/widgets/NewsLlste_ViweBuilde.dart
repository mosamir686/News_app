import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articlesModel.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/newstil_listveiw.dart';

class NewsLlsteViweBuilde extends StatefulWidget {
  const NewsLlsteViweBuilde({
    super.key, required this.category,
  });
  final String category;

  @override
  State<NewsLlsteViweBuilde> createState() => _NewsLlsteViweBuildeState();
}

class _NewsLlsteViweBuildeState extends State<NewsLlsteViweBuilde> {
  var future;
  @override
  void initState() {
    super.initState();
    future=NewsServies.NewsServices(Dio()).getTopHeadlines(Category:widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future:future ,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return newstile_list(
            artical: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text(
              'OOPS There was an error.Check your internet🙂',
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                  SizedBox(height: 16,),
                  Text('Loding.......')

                ],
              ),
            ),
          );
        }
      },
    );
  }
}
