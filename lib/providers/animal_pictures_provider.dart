import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pettera_project/providers/pexel_api_provider.dart';
import 'package:pettera_project/providers/search_query_provider.dart';

final animalPicturesProvider =
    NotifierProvider<AnimalPicturesNotifier, List<String>>(
        AnimalPicturesNotifier.new);

class AnimalPicturesNotifier extends Notifier<List<String>> {
  int _page = 1;

  Future<void> fetchNextPage(int count) async {
    final String searchQuery = ref.watch(searchQueryProvider);
    final newAnimalPictures = await ref
        .read(pexelApiProvider)
        .fetchAnimalPictures(searchQuery, _page++, count);
    state = [...state, ...newAnimalPictures];
  }

  Future<void> fetchFirstPage(int count) async {
    final String searchQuery = ref.watch(searchQueryProvider);
    _page = 1;
    final newAnimalPictures = await ref
        .read(pexelApiProvider)
        .fetchAnimalPictures(searchQuery, _page, count);
    _page += 2;
    state = [...newAnimalPictures];
  }

  @override
  List<String> build() {
    return [];
  }
}
