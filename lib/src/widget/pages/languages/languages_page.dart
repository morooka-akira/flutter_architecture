import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'view_model.dart';

class LanguagesPage extends ConsumerWidget {
  const LanguagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewState = ref.watch(viewModelProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Programming Languages"),
      ),
      body: viewState.when(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, st) => Center(
          child: Text("$error"),
        ),
        data: (state) => Center(
          child: ListView.builder(
            itemCount: state.languages.length,
            itemBuilder: (context, index) {
              final language = state.languages[index];
              return ListTile(
                title: Text(language.name),
              );
            },
          ),
        ),
      ),
    );
  }
}
