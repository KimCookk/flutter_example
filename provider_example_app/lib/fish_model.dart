import 'package:flutter/material.dart';

class FishModel {
  final String name;
  int number;
  final String size;

  FishModel({
    required this.name,
    required this.number,
    required this.size,
  });

  void changeFishNumber() {
    number++;
  }
}
