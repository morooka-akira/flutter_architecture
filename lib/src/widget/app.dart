import 'package:flutter/material.dart';
import 'pages/home/home_page.dart';
import 'themes/app_theme_data.dart';

RouteFactory createRouter() {
  return (RouteSettings setting) {
    return MaterialPageRoute(
      builder: (context) => const HomePage(title: 'Flutter Demo Home Page'),
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
