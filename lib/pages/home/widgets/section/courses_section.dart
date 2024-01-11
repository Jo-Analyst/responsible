import 'package:flutter/material.dart';
import 'package:responsible/breakpoint.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: constraints.maxWidth >= tabletBreackpoint ? 0 : 16,
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.purple.shade100,
            );
          },
        );
      },
    );
  }
}
