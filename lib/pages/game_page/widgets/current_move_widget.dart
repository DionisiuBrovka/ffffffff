import 'package:card_builder/pages/game_page/game_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CurrentMoveWidget extends StatelessWidget {
  const CurrentMoveWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pageController = GetIt.I<GamePageController>();

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("Текущий ход :"),
        Text(pageController.gameService.game?.whosTurn.toString() ?? "")
      ],
    );
  }
}
