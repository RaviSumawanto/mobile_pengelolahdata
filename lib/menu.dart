import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String Picture;
  final String title;
  final void Function()? press;
  const CategoryCard({
    super.key,
    required this.Picture,
    required this.title,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Material(
        child: InkWell(
          onTap: press,
          child: Column(
            children: [
              const Spacer(),
              Image.asset(Picture),
              const Spacer(),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.lightBlue,
                    fontFamily: "Righteaous",
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
