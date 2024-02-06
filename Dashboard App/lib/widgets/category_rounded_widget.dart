import 'package:dashboard_app/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';


class CategoryRoundedWidget extends StatelessWidget {
  final String image, name;
  const CategoryRoundedWidget(
      {super.key,
        required this.image,
        required this.name
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Column(
        children: [
          Image.asset(
            image,
            height: 50,
            width: 50,
          ),
          SubtitleTextWidget(
            label: name ,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}