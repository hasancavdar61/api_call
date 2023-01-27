import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class FirstBoard extends StatefulWidget {
  const FirstBoard({Key? key}) : super(key: key);

  @override
  State<FirstBoard> createState() => _FirstBoardState();
}

class _FirstBoardState extends State<FirstBoard> {
  final storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return const Text(' ');
  }
}
