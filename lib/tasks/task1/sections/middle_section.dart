import 'package:flutter/material.dart';
import 'package:pettera_project/tasks/task1/sections/users_list_section.dart';
import '../../../colors.dart';
import '../widgets/custom_tab_bar.dart';
import 'follower_section.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({
    super.key,
    required this.controller,
  });

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0,
          color: backgroundColor,
        ),
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Shane Mathias',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: 'Co-founder  ',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.white),
                ),
                WidgetSpan(
                  child: Image.network(
                    'https://static-00.iconduck.com/assets.00/monkey-emoji-509x512-h98uc8wd.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const UsersListSection(),
          const SizedBox(
            height: 10,
          ),
          const FollowerSection(),
          const SizedBox(
            height: 15,
          ),
          CustomTabBar(controller: controller),
        ],
      ),
    );
  }
}
