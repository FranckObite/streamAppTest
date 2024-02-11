// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class StreamApp {
  String? title;
  String image;
  void Function()? onTap;
  double height;
  Widget? widget;

  StreamApp({
    this.title,
    this.widget,
    required this.image,
    required this.onTap,
    required this.height,
  });
}
