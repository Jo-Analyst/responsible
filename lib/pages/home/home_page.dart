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
            preferredSize:
                Size(double.infinity, constraints.maxWidth < mobile_breackpoints ? 56 : 72),
            child: constraints.maxWidth < mobile_breackpoints
                ? const MobileAppbar()
                : const WebAppBar(),
          ),
          body: Container(),
          drawer: constraints.maxWidth < mobile_breackpoints ? const Drawer() : null,
        );
      },
    );
  }
}