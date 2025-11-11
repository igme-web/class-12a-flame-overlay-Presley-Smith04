import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'game.dart';
import 'overlay_title.dart';
import 'overlay_main.dart';
import 'overlay_pause.dart';
import 'overlay_info.dart';

void main() {
  runApp(GameWidget<OverlayTutorial>(
    game: OverlayTutorial(),
    overlayBuilderMap: {
      'title': (context, game) => OverlayTitle(game: game),
      'main': (context, game) => mainOverlay(context, game),
      'pause': (context, game) => pauseOverlay(context, game),
      'info': (context, game) => InfoOverlay(game: game as OverlayTutorial),
    },
    initialActiveOverlays: const ['title'],
  ));
}
