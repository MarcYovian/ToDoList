import 'package:flutter/material.dart';
import 'package:to_do_list/praktikum04/to_do_list_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyList4(),
    );
  }
}