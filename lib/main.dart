import 'package:card_builder/pages/game_page/game_page.dart';
import 'package:card_builder/pages/menu_page/menu_page.dart';
import 'package:card_builder/service/setup_services.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupServices();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const MenuPage(),
        "/game": (context) => const GamePage()
      },
    );
  }
}
