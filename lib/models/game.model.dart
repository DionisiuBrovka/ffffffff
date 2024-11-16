import 'package:card_builder/models/cell.model.dart';
import 'package:card_builder/models/field.model.dart';

class Game {
  bool isOver = false;
  CellValue? whoWin;

  int turnCount = 0;
  CellValue whosTurn = CellValue.cross;

  List<Field> fields;

  Game()
      : fields = [
          Field(),
          Field(),
          Field(),
          Field(),
          Field(),
          Field(),
          Field(),
          Field(),
          Field(),
        ];
}
