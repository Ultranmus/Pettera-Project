import 'package:flutter/cupertino.dart';

class CustomGridView extends StatelessWidget {
  final List data;
  final Size size;
  const CustomGridView({Key? key, required this.data, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      itemCount: data.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 7,
        crossAxisSpacing: 7,
        crossAxisCount: size.width > 1000
            ? 6
            : size.width > 500
                ? 4
                : 2,
      ),
      itemBuilder: (context, index) {
        return Image.network(
          data[index]['url'].toString(),
          fit: BoxFit.cover,
        );
      },
    );
  }
}
