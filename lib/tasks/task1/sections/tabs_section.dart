import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:flutter/material.dart';
import '../data/image_data.dart';
import '../widgets/custom_grid_view.dart';

class TabsSection extends StatelessWidget {
  const TabsSection({
    super.key,
    required this.controller,
    required this.size,
  });

  final TabController controller;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Wrap(
        children: [
          AutoScaleTabBarView(
            controller: controller,
            children: List.generate(
              3,
              (index) => CustomGridView(
                data: imageData,
                size: size,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
