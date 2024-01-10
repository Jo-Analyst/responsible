import 'package:flutter/material.dart';
import 'package:responsible/pages/home/widgets/appbar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text('Flutter'),
          const SizedBox(
            width: 12,
          ),
          const Expanded(child: WebAppBarResponsiveContent()),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
          const SizedBox(
            width: 24,
          ),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text('Fazer login'),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
            height: 39,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              onPressed: () {},
              child: const Text('Cadastre-se'),
            ),
          )
        ],
      ),
    );
  }
}
