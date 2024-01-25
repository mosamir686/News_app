import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewsLlste_ViweBuilde.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          NewsLlsteViweBuilde(category: category ,)
        ],
      ),
    ));
  }
}
