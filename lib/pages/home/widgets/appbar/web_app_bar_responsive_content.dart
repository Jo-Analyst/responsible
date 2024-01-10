import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey.shade600),
                  ),
                  child: Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                        border: InputBorder.none,
                        hintText: 'Pesquise alguma coisa aqui',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
