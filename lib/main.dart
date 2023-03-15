import 'package:flutter/material.dart';
import 'resources/resources.dart';
import 'screens/semantic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // showSemanticsDebugger: true,
      initialRoute: SemanticPage.id,
      routes: routes,
    );
  }
}