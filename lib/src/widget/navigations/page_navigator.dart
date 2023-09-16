import 'package:flutter/material.dart';
import 'package:flutter_architecture/src/widget/navigations/page_path.dart';
import 'package:flutter_architecture/src/widget/pages/counter/counter_page.dart';
import 'package:flutter_architecture/src/widget/pages/home/home_page.dart';
import 'package:flutter_architecture/src/widget/pages/languages/languages_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PageNavigator extends ConsumerWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  const PageNavigator({required this.navigatorKey, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Navigator(
      key: navigatorKey,
      initialRoute: PagePath.home,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case PagePath.home:
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const HomePage(title: "Home"),
            );
          case PagePath.counter:
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const CounterPage(
                arguments: CounterPageArguments(title: "Counter"),
              ),
            );
          case PagePath.languages:
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const LanguagesPage(),
            );
          default:
            return null;
        }
      },
    );
  }
}
