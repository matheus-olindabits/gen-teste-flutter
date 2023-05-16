import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:marvel_studios/app/modules/dashboard/shared/models/marvel.dart';

class DashoardRepository {
  Future<List<Marvel>> getMarvelProducts() async {
    final String response = await rootBundle.loadString('assets/mock.json');
    final data = await json.decode(response);
    final List<Marvel> marvel = (data as List)
        .map((entry) => Marvel.fromJson(json.encode(entry)))
        .toList();
    return marvel;
  }
}
