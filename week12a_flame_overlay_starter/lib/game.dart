import 'dart:math';
import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'asteroid.dart';

class OverlayTutorial extends FlameGame with HasCollisionDetection {
  bool paused = false;

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    // Background color
    camera.viewport = FixedResolutionViewport(Vector2(800, 600));
    add(ScreenHitbox());

    // Add some asteroids
    for (int i = 0; i < 6; i++) {
      add(Asteroid(
        position: Vector2(
          Random().nextDouble() * size.x,
          Random().nextDouble() * size.y,
        ),
        speed: 100 + Random().nextDouble() * 150,
        rotationSpeed: Random().nextDouble(),
      ));
    }
  }

  @override
  void update(double dt) {
    if (!paused) {
      super.update(dt);
    }
  }

  @override
  Color backgroundColor() => const Color.fromARGB(255, 10, 5, 25);
}
