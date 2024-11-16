import 'package:card_builder/models/cell.model.dart';

class Field {
  bool isFull = false;
  bool isOver = false;
  CellValue? whoWin;

  bool isActive = true;

  List<Cell> cells;

  Field()
      : cells = [
          Cell(),
          Cell(),
          Cell(),
          Cell(),
          Cell(),
          Cell(),
          Cell(),
          Cell(),
          Cell(),
        ];
}
