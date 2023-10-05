import 'package:flutter/material.dart';
import '../widgets/follower_widget.dart';

class FollowerSection extends StatelessWidget {
  const FollowerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: followerWidget('2', 'Posts'),
            ),
            const VerticalDivider(
                indent: 4, endIndent: 4, thickness: 2, color: Colors.black),
            Expanded(
              child: followerWidget('1', 'Followers'),
            ),
            const VerticalDivider(
                indent: 4, endIndent: 4, thickness: 2, color: Colors.black),
            Expanded(
              child: followerWidget('2', 'Following'),
            ),
          ],
        ),
      ),
    );
  }
}
