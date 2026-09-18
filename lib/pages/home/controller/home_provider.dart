import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  final List<String> brands = [
    "Brand 1",
    "Brand 2",
    "Brand 3",
    "Brand 4",
    "Brand 5",
    "Brand 6",
    "Brand 7",
    "Brand 8",
    "Brand 9",
    "Brand 10",
  ];

  List<List<String>> getChunkedList(List<String> list, int chunkSize) {
    return List.generate(
      (list.length / chunkSize).ceil(),
          (index) => list.skip(index * chunkSize).take(chunkSize).toList(),
    );
  }


}
