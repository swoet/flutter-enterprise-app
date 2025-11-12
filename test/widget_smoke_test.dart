import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:enterprise_app/main.dart' as app;

void main() {
  testWidgets('App builds and shows Home route', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: app.MyApp()));
    // First frame
    await tester.pumpAndSettle();

    // Expect at least the navigation UI to be present
    expect(find.byType(NavigationBar), findsOneWidget);
  });
}
