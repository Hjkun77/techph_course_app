import 'package:flutter/material.dart';

class CourseCategory extends StatelessWidget {
  final String image;
  final String title;
  final int number;

  const CourseCategory({
    Key key,
    this.image,
    this.title,
    this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: <Widget>[
              SizedBox(
                height: 220,
                width: 240,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 16,
                left: 16,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 36,
                left: 16,
                child: Text(
                  "$number courses",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF8F95B2),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
