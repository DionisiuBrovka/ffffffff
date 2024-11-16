import 'package:card_builder/models/cell.model.dart';
import 'package:card_builder/service/game_service/game_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class GamePageController extends ChangeNotifier {
  GameService gameService = GetIt.I<GameService>()..startGame();

  void makeTurn() {
    gameService.game!.fields[2].cells[1].value = CellValue.cross;
    notifyListeners();
  }
}
