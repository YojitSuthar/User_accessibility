import 'package:flutter/material.dart';

class ExcludeSemantic extends StatelessWidget {
  static const String id="ExcludeSemantic";
  const ExcludeSemantic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exclude Semantic"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExcludeSemantics(
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Navigation'))),
            Semantics(
              label: "Button",
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Navigation'))),
          ],
        ),
      ),
    );
  }
}
