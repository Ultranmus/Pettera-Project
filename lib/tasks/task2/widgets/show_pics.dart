import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../../colors.dart';
import '../../../providers/animal_pictures_provider.dart';
import '../../../providers/should_load_provider.dart';

class ShowPics extends ConsumerStatefulWidget {
  const ShowPics({
    super.key,
  });

  @override
  ConsumerState<ShowPics> createState() => _ShowPicsState();
}

class _ShowPicsState extends ConsumerState<ShowPics> {
  final ScrollController _scrollController = ScrollController();

  bool shouldCallApi = false;
  bool isError = false;
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ref.read(animalPicturesProvider.notifier).fetchFirstPage(30);

    _scrollController.addListener(() async {
      final maxScrollExtent = _scrollController.position.maxScrollExtent;
      final currentScrollPosition = _scrollController.position.pixels;
      // Calculate the remaining space below the current content
      final remainingScroll = maxScrollExtent - currentScrollPosition;

      // When the user scrolls near the bottom, fetch the next page of 15 items
      if (remainingScroll == 0 && shouldCallApi) {
        if (!isError) {
          ref.read(shouldLoadProvider.notifier).update((state) => true);
          try {
            await ref.read(animalPicturesProvider.notifier).fetchNextPage(15);
          } catch (error) {
            isError = true; // Set the error flag
          }
        }
        Future.delayed(const Duration(seconds: 2), () {
          isError = false;
        });
        // shouldCallApi=true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final animalPictures = ref.watch(animalPicturesProvider);
    final shouldShowLoader = ref.watch(shouldLoadProvider);

    if (shouldShowLoader) {
      shouldCallApi = false;
    } else {
      shouldCallApi = true;
    }

    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            if (animalPictures.isNotEmpty)
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: constraints.maxWidth > 900 ? 5 : 3,
                ),
                itemCount: animalPictures.length,
                itemBuilder: (context, index) {
                  return CachedNetworkImage(
                    imageUrl:
                        animalPictures[index], // Replace with your image URL
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: CupertinoActivityIndicator(
                        color: lightPurpleColor,
                      ),
                    ),
                    errorWidget: (context, url, error) => const Center(
                      child: Text('Error loading image'),
                    ),
                  );
                },
              ),
            shouldShowLoader
                ? Container(
                    padding: const EdgeInsets.all(10),
                    height:
                        animalPictures.isEmpty ? constraints.maxHeight : null,
                    child: Center(
                      child: LoadingAnimationWidget.prograssiveDots(
                        color: lightPurpleColor,
                        size: 50,
                      ),
                    ))
                : const SizedBox(),
          ],
        ),
      );
    });
  }
}
