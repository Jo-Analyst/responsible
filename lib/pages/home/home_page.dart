import 'package:flutter/material.dart';
import 'package:responsible/breakpoint.dart';
import 'package:responsible/pages/home/widgets/section/advantanges_section.dart';
import 'package:responsible/pages/home/widgets/section/courses_section.dart';
import 'package:responsible/pages/home/widgets/section/top_section.dart';
import 'package:responsible/pages/home/widgets/appbar/mobile_app_bar.dart';
import 'package:responsible/pages/home/widgets/appbar/web_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: PreferredSize(
            preferredSize: Size(double.infinity,
                constraints.maxWidth < mobileBreakpoint ? 56 : 72),
            child: constraints.maxWidth < mobileBreakpoint
                ? const MobileAppbar()
                : const WebAppBar(),
          ),
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: ListView(
                children: const [
                  TopSection(),
                  AdvantagesSection(),
                  CoursesSection()
                ],
              ),
            ),
          ),
          drawer:
              constraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
        );
      },
    );
  }
}
