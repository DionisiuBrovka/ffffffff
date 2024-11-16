import 'package:card_builder/models/field.model.dart';
import 'package:card_builder/pages/game_page/widgets/cell_adapter.dart';
import 'package:flutter/material.dart';

class FieldAdapter extends StatelessWidget {
  const FieldAdapter({super.key, required this.field});

  final Field field;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 1 / 1,
            children: field.cells
                .map((cell) => CellAdapter(
                      cell: cell,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
