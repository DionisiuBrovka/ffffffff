import 'package:card_builder/models/cell.model.dart';
import 'package:card_builder/pages/game_page/game_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CellAdapter extends StatelessWidget {
  const CellAdapter({super.key, required this.cell});

  final Cell cell;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
          onTap: () => GetIt.I<GamePageController>().makeTurn(),
          child: Text(cell.value?.toString() ?? "")),
    );
  }
}
