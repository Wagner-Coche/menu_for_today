import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menu_for_today/screens/home_page.dart';
import 'package:menu_for_today/utils/color.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky
    );

    return MaterialApp(
      title: "Menu for today",
      debugShowCheckedModeBanner: false,
      home: HomePage(color: primaryColor)
    );
  }
}