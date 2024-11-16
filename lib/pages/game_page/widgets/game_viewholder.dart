import 'dart:developer';

import 'package:card_builder/pages/game_page/game_page_controller.dart';
import 'package:card_builder/pages/game_page/widgets/game_adapter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class GameViewholder extends StatelessWidget {
  const GameViewholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pageController = GetIt.I<GamePageController>();

    return SizedBox(
      height: 600,
      width: 600,
      child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListenableBuilder(
              listenable: pageController,
              builder: (context, child) {
                log("rebiuld");
                if (pageController.gameService.game == null) {
                  return const Center(
                    child: Text("Ошибка, игра не найдена"),
                  );
                } else {
                  return GameAdapter(
                    game: pageController.gameService.game!,
                  );
                }
              })),
    );
  }
}
