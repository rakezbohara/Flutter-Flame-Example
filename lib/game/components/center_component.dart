import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class CenterComponent extends PositionComponent {
  CenterComponent()
      : super(
          position: Vector2(500, 500),
          size: Vector2(50, 50),
          anchor: Anchor.center,
        ) {
    add(RectangleComponent(
      size: Vector2(500, 500),
      anchor: Anchor.center,
      position: Vector2(500, 500),
      paint: Paint()..color = const Color(0xFF00FF00),
    ));
  }

  @override
  Future<void> onLoad() async {
    add(RectangleComponent(
      size: Vector2(500, 500),
      anchor: Anchor.center,
      position: Vector2(100, 100),
      paint: Paint()..color = Colors.black,
    ));
  }
}
