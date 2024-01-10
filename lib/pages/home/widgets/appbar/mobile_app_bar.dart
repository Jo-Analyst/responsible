import 'package:flutter/material.dart';

class MobileAppbar extends StatelessWidget {
  const MobileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: const Text("Flutter"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
