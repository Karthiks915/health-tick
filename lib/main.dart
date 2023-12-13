import 'package:flutter/material.dart';
import 'package:health_tick/pages/count_down_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//Complete application was built using Riverpod and Freezed, some bugs might be here and there, should look into it and correct it, for now works fine.\
//Could have a better architecture, but this was very simple to figured I just separate things into different folders for now.

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: TimerControlPage(),
      ),
    );
  }
}
