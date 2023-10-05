import 'package:flutter/material.dart';
import 'package:pettera_project/colors.dart';
import 'package:pettera_project/tasks/task1/sections/image_section.dart';
import 'package:pettera_project/tasks/task1/sections/middle_section.dart';
import 'package:pettera_project/tasks/task1/sections/tabs_section.dart';

class Task1Screen extends StatefulWidget {
  const Task1Screen({super.key});

  @override
  State<Task1Screen> createState() => _Task1ScreenState();
}

class _Task1ScreenState extends State<Task1Screen> with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          scrollBehavior:
              ScrollConfiguration.of(context).copyWith(scrollbars: false),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  ImageSection(size: size),
                  MiddleSection(controller: controller),
                ],
              ),
            ),
            TabsSection(controller: controller, size: size),
          ],
        ),
      ),
    );
  }
}
