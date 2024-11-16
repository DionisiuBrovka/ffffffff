import 'package:card_builder/models/game.model.dart';

class GameService {
  Game? game;

  GameService({this.game});

  void startGame() {
    game = Game();
  }
}
