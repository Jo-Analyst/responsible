import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
            'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
        const SizedBox(height: 8),
        const Flexible(
          child: AutoSizeText(
            'Criação de Apps Android e ios com Flutter. Crie 16 Apps',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        const Text(
          'Daniel Ciolfi',
          style: TextStyle(color: Colors.grey),
        ),
        const Text(
          'R\$22,90',
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
