import 'package:flutter/material.dart';
import 'package:flutter_architecture/src/widget/navigations/page_navigator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RootPage extends ConsumerWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PageNavigator(navigatorKey: GlobalKey());
  }
}
