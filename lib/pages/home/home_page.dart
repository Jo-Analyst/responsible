import 'package:flutter/material.dart';
import 'package:responsible/breakpoint.dart';
import 'package:responsible/pages/home/widgets/appbar/mobile_app_bar.dart';
import 'package:responsible/pages/home/widgets/appbar/web_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(double.infinity,
                constraints.maxWidth < mobileBreackpoints ? 56 : 72),
            child: constraints.maxWidth < mobileBreackpoints
                ? const MobileAppbar()
                : const WebAppBar(),
          ),
          body: Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  child: Container(
                    color: Colors.brown,
                  ))),
          drawer:
              constraints.maxWidth < mobileBreackpoints ? const Drawer() : null,
        );
      },
    );
  }
}
