import 'package:flutter/material.dart';
import '../../../colors.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.controller,
  });

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      dividerHeight: 0,
      labelColor: lightPurpleColor,
      unselectedLabelColor: Colors.white60,
      indicatorColor: Colors.blueAccent,
      controller: controller,
      tabs: const [
        Tab(
            child: Text(
          ' Posts ',
          overflow: TextOverflow.ellipsis,
        )),
        Tab(
            child: Text(
          'Stamp Book',
          overflow: TextOverflow.ellipsis,
        )),
        Tab(
            child: Text(
          'Community',
          overflow: TextOverflow.ellipsis,
        )),
      ],
    );
  }
}
