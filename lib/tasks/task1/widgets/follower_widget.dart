import 'package:flutter/material.dart';

Widget followerWidget(String num, String about) {
  return Column(
    children: [
      Text(
        num,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
      ),
      Text(
        about,
        style: const TextStyle(color: Colors.white70),
      ),
    ],
  );
}
