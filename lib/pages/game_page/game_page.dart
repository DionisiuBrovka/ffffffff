import 'package:card_builder/pages/game_page/game_page_controller.dart';
import 'package:card_builder/pages/game_page/widgets/current_move_widget.dart';
import 'package:card_builder/pages/game_page/widgets/game_viewholder.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    if (!GetIt.I.isRegistered<GamePageController>()) {
      GetIt.instance.registerSingleton(GamePageController());
    }

    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [CurrentMoveWidget(), GameViewholder()],
        ),
      ),
    );
  }
}
