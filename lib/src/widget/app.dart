import 'package:flutter/material.dart';
import 'pages/root/root_page.dart';
import 'themes/app_theme_data.dart';

RouteFactory createRouter() {
  return (RouteSettings setting) {
    return MaterialPageRoute(
      builder: (context) => const RootPage(),
    );
  };
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter architecture sample',
      theme: appThemeData,
      onGenerateRoute: createRouter(),
    );
  }
}
