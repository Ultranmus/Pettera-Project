import 'package:flutter/material.dart';
import '../data/image_data.dart';

class UsersListSection extends StatelessWidget {
  const UsersListSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageData.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage:
                      NetworkImage(imageData[index]['url'].toString()),
                ),
                Text(
                  imageData[index]['name'].toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
