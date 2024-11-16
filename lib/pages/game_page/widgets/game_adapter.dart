import 'package:card_builder/models/game.model.dart';
import 'package:card_builder/pages/game_page/widgets/field_adapter.dart';
import 'package:flutter/material.dart';

class GameAdapter extends StatelessWidget {
  const GameAdapter({super.key, required this.game});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1 / 1,
          children: game.fields
              .map((field) => FieldAdapter(
                    field: field,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
