import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'view_model.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key, required this.arguments});
  final CounterPageArguments arguments;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(viewModelProvider.notifier);
    final counter = ref.watch(viewModelProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(arguments.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CounterPageArguments {
  const CounterPageArguments({required this.title});
  final String title;
}
