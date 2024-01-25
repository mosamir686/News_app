import 'package:flutter/material.dart';
import 'package:news_app/models/articlesModel.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.article});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              article.image ?? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuoSdX6XO-9yp4nYkrDA_4BSc3LnFj6jr4Gg&usqp=CAU',
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          article.title,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          article.subTitle ?? '',
          style: const TextStyle(
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
