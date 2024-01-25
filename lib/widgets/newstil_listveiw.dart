import 'package:flutter/material.dart';
import 'package:news_app/models/articlesModel.dart';
import 'package:news_app/widgets/news_tile.dart';

// ignore: camel_case_types
class newstile_list extends StatelessWidget {
  final List<ArticleModel> artical ;
   newstile_list({super.key, required this.artical});

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Newstile(
                article: artical[index],
              );
            },
            childCount: artical.length,
          ));
  }
}
