import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

class DashComponent extends SpriteAnimationComponent {
  DashComponent({
    required SpriteAnimation animation,
    required Vector2 size,
  }) : super(animation: animation, size: size, anchor: Anchor.center);

  @override
  Future<void> onLoad() async {
    add(RectangleHitbox()..debugMode = true);
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    position = size / 2;
  }
}
