import 'package:flutter/cupertino.dart';
import 'package:news_app/models/caregoryModel.dart';
import 'package:news_app/widgets/category_card.dart';

class Categorys_listveiw extends StatelessWidget {
  Categorys_listveiw({
    super.key,
  });
  final List<caregoryModel> hh = [
    caregoryModel(Image: 'assets/technology.jpeg', Name: 'Technology'),
    caregoryModel(Image: 'assets/busniss.jpeg', Name: 'Business'),
    caregoryModel(Image: 'assets/sports.jpg', Name: 'Sports'),
    caregoryModel(Image: 'assets/science.avif', Name: 'Science'),
    caregoryModel(Image: 'assets/health.avif', Name: 'Health'),
    caregoryModel(Image: 'assets/entertaiment.avif', Name: 'Entertaiment'),
    caregoryModel(Image: 'assets/general.jpeg', Name: 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: hh.length,
          itemBuilder: (context, index) {
            return categorycard(
              category: hh[index],
            );
          }),
    );
  }
}
