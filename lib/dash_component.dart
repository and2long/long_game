import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

class DashComponent extends SpriteAnimationComponent with HasGameRef {
  DashComponent({required Vector2 size})
      : super(size: size, anchor: Anchor.center);

  double speed = 200;

  void move(Vector2 ds) {
    position.add(ds);
  }

  @override
  Future<void> onLoad() async {
    String src = 'bonus_animation/dash_nest.png';
    await gameRef.images.load(src);
    var image = gameRef.images.fromCache(src);
    const int rowCount = 9;
    const int columnCount = 8;
    animation = SpriteAnimation.fromFrameData(
      image,
      SpriteAnimationData.sequenced(
        amount: rowCount * columnCount,
        amountPerRow: columnCount,
        stepTime: 1 / 20,
        textureSize: Vector2(4000 / columnCount, 1296 / rowCount),
      ),
    );

    add(RectangleHitbox()..debugMode = true);
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    position = size / 2;
  }
}
