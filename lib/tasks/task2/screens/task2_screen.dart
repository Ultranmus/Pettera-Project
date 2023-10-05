import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pettera_project/tasks/task2/widgets/show_pics.dart';
import '../../../colors.dart';
import '../../../providers/animal_pictures_provider.dart';
import '../../../providers/search_query_provider.dart';
import '../../../providers/should_load_provider.dart';

class Task2Screen extends StatelessWidget {
  const Task2Screen({Key? key}) : super(key: key);

  void searchQuery(String text, WidgetRef ref) {
    if (text.isNotEmpty) {
      final String providerText = ref.read(searchQueryProvider);
      if (text != providerText) {
        ref.read(shouldLoadProvider.notifier).update((state) => true);
        ref.read(searchQueryProvider.notifier).update((state) => text);
        ref.read(animalPicturesProvider.notifier).fetchFirstPage(30);
      } else {
        Fluttertoast.showToast(
            msg: 'Already showing result with keyword "$providerText"',
            toastLength: Toast
                .LENGTH_SHORT, // Duration for which the toast is displayed (short or long)
            timeInSecForIosWeb: 1,
            backgroundColor: lightPurpleColor,
            gravity: ToastGravity.SNACKBAR);
      }
    } else {
      Fluttertoast.showToast(
          msg: 'Please Enter keyword to search',
          toastLength: Toast
              .LENGTH_SHORT, // Duration for which the toast is displayed (short or long)
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          gravity: ToastGravity.SNACKBAR);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    final FocusNode focus = FocusNode();
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: size.width * 0.9,
                child: Consumer(
                  builder:
                      (BuildContext context, WidgetRef ref, Widget? child) {
                    return SearchBar(
                      focusNode: focus,
                      hintText: 'Search here for Query!!!',
                      controller: controller,
                      overlayColor: MaterialStateProperty.all(searchBarColor),
                      surfaceTintColor:
                          MaterialStateProperty.all(searchBarColor),
                      padding: const MaterialStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 16.0)),
                      onTap: () {},
                      onChanged: (_) {},
                      onSubmitted: (_) {
                        focus.unfocus();
                        searchQuery(
                          controller.text,
                          ref,
                        );
                      },
                      leading: const Icon(Icons.pets),
                      trailing: <Widget>[
                        Tooltip(
                          message: 'Search',
                          child: IconButton(
                            onPressed: () {
                              focus.unfocus();
                              searchQuery(
                                controller.text,
                                ref,
                              );
                            },
                            icon: const Icon(
                              Icons.search_outlined,
                              color: searchBarIconColor,
                            ),
                          ),
                        )
                      ],
                    );
                  },
                )),
            const Expanded(child: ShowPics())
          ],
        ),
      ),
    );
  }
}
