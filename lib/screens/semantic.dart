import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:user_accessibility/screens/mergeSemantic.dart';

class SemanticPage extends StatefulWidget {

  static const String id="SemanticPage";
  @override
  State<SemanticPage> createState() => _SemanticPageState();
}

class _SemanticPageState extends State<SemanticPage> {
  int _counter = 0;
  void _increaseCounter() {
    setState(() {
      _counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Semantic Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Accessibility',
            ),
            Semantics(
              label: 'Counter text',
              child: Text(_counter.toString(),
                  style: const TextStyle(fontSize: 20)),
            ),
            Semantics(
              button: true,
              label: "increase counter",
              child: OutlinedButton(
                child: const Text('Increase counter'),
                onPressed: () => _increaseCounter(),
              ),
            ),
            Semantics.fromProperties(
              properties: SemanticsProperties(
                button: true,
                onTap: () => _increaseCounter(),
              ),
              child: OutlinedButton(
                child: const Text('Increase counter'),
                onPressed: () => _increaseCounter(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MergeSemantic.id);
              },
              child: Text(
                'Merge Semantics ->',
              ),
            )
          ],
        ),
      ),
    );
  }
}
