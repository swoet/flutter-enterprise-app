import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:enterprise_app/ui/home_screen.dart';

void main() {
  goldenTest('HomeScreen golden', fileName: 'home_screen', builder: () {
    return GoldenTestGroup(children: [
      GoldenTestScenario(
        name: 'default',
        child: const SizedBox(
          width: 800,
          height: 600,
          child: ProviderScope(
            child: MaterialApp(home: Scaffold(body: HomeScreen())),
          ),
        ),
      ),
    ]);
  });
}
