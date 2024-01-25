import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewsLlste_ViweBuilde.dart';
import 'package:news_app/widgets/category_listveiw.dart';

// ignore: camel_case_types
class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation:0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ' Cloud',
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 57, 238),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 2, 57, 238),
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: Categorys_listveiw()),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
              const NewsLlsteViweBuilde(category: 'general',)
            ],
          ),
        ));
  }
}
