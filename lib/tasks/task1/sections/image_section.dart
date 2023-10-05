import 'package:flutter/material.dart';
import '../../../colors.dart';
import '../../task2/screens/task2_screen.dart';
import '../decorations/outward_crescent_clipper.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Container(
          color: Colors.blue,
        )),
        Container(
          color: Colors.transparent,
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                height: 60,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: ClipPath(
                      clipper: OutwardCrescentClipper(),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0,
                            color: backgroundColor,
                          ),
                          color: backgroundColor,
                        ),
                        height: size.width * 0.1 > 50 ? 150 : size.width * 0.3,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -(size.width * 0.1 > 50 ? 50.0 : size.width * 0.1),
                    left: size.width * 0.5 -
                        (size.width * 0.4 >= 200 ? 100 : size.width * 0.2),
                    child: LimitedBox(
                      maxHeight: 200,
                      maxWidth: 200,
                      child: ClipOval(
                        child: Image.network(
                          'https://media.licdn.com/dms/image/D5603AQGd1-SYnti4DQ/profile-displayphoto-shrink_800_800/0/1691923380637?e=2147483647&v=beta&t=Dbz-ponAvqeIKehgIRiiIEW9lFQMmvzxrDTDJkvs4zU',
                          height: size.width * 0.4,
                          width: size.width * 0.4,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(999),
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                  vertical: 5, horizontal: size.width < 304 ? 15 : 20)),
              backgroundColor: MaterialStateProperty.all(backgroundColor),
              foregroundColor: MaterialStateProperty.all(lightPurpleColor),
              shadowColor: MaterialStateProperty.all(Colors.transparent),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Task2Screen()));
            },
            child: Text(
              'Following',
              style: TextStyle(fontSize: size.width < 304 ? 10 : 12),
            ),
          ),
        ),
      ],
    );
  }
}
