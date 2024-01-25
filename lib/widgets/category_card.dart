import 'package:flutter/material.dart';
import 'package:news_app/models/caregoryModel.dart';
import 'package:news_app/views/CategoryView.dart';

// ignore: camel_case_types
class categorycard extends StatelessWidget {
  const categorycard({
    super.key,
    required this.category,
  });
  final caregoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return  CategoryView(category:category.Name,);
          }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 90,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(category.Image)),
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 2, 57, 238),
          ),
          constraints: const BoxConstraints(),

          child: Center(
              child:Text(
            category.Name,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
