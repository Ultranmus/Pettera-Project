import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pettera_project/providers/should_load_provider.dart';

final pexelApiProvider = Provider((ref) => PexelsAPI(ref: ref));

class PexelsAPI {
  final ProviderRef ref;
  static const String API_KEY =
      "CcotaHj5yg19PwYMltxWE7pJ4WfWwei15sGQunPjxkewZk600laA6twH";

  PexelsAPI({required this.ref});

  Future<List<String>> fetchAnimalPictures(
      String query, int page, limit) async {
    final headers = {
      "Authorization": API_KEY,
    };

    final params = {
      "query": query,
      "per_page": limit.toString(),
      "page": page.toString(),
    };
    await Future.delayed(const Duration(seconds: 2));

    Uri uri = Uri.parse("https://api.pexels.com/v1/search");
    final finalUri = uri.replace(queryParameters: params);

    try {
      final response = await http.get(
        finalUri,
        headers: headers,
      );

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        final photos = jsonResponse["photos"] as List<dynamic>;

        final photoUrls = <String>[];
        for (final photo in photos) {
          photoUrls.add(photo["src"]['medium']);
        }

        ref.read(shouldLoadProvider.notifier).update((state) => false);

        return photoUrls;
      } else {
        ref.read(shouldLoadProvider.notifier).update((state) => false);
        Fluttertoast.showToast(
            msg: 'Some Error Occured',
            toastLength: Toast
                .LENGTH_SHORT, // Duration for which the toast is displayed (short or long)
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            gravity: ToastGravity.SNACKBAR);
        throw Exception(
            "Failed to fetch animal pictures: ${response.statusCode}");
      }
    } catch (e) {
      ref.read(shouldLoadProvider.notifier).update((state) => false);
      Fluttertoast.showToast(
          msg: 'Some Error Occured',
          backgroundColor: Colors.red,
          gravity: ToastGravity.SNACKBAR);

      throw Exception("Failed to fetch animal pictures: $e");
    }
  }
}
