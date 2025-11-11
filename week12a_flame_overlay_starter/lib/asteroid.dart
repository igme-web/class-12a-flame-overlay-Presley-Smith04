import 'dart:math';
import 'package:flame/components.dart';
import 'package:flame/collisions.dart';
import 'game.dart';

class Asteroid extends SpriteComponent
    with HasGameRef<OverlayTutorial>, CollisionCallbacks {
  final double speed;
  final double rotationSpeed;

  Asteroid({
    required Vector2 position,
    required this.speed,
    required this.rotationSpeed,
  }) : super(position: position, size: Vector2.all(64));

  @override
  Future<void> onLoad() async {
    sprite = await gameRef.loadSprite('asteroid.png');
    add(CircleHitbox());
  }

  @override
  void update(double dt) {
    super.update(dt);
    position += Vector2(0, speed * dt);
    angle += rotationSpeed * dt;

    // If asteroid goes off screen, wrap it back to the top
    if (position.y > gameRef.size.y + size.y) {
      position.y = -size.y;
      position.x = Random().nextDouble() * gameRef.size.x;
    }
  }
}
