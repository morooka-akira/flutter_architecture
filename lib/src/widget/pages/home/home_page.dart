import 'package:flutter/material.dart';
import 'package:flutter_architecture/src/widget/navigations/page_path.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, PagePath.counter);
              },
              child: const Text("Go to Counter Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, PagePath.languages);
              },
              child: const Text("Go to Languages Page"),
            ),
          ],
        ),
      ),
    );
  }
}
