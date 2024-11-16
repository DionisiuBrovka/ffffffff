import 'package:card_builder/service/game_service/game_service.dart';
import 'package:get_it/get_it.dart';

void setupServices() {
  GetIt.instance.registerSingleton(GameService());
}
