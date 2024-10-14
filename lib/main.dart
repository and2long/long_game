import 'dart:async';

import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:long_game/component.dart';

void main() {
  runApp(GameWidget(game: LongGame()));
  FlameAudio.play('background.mp3');
}

class LongGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    String src = 'bonus_animation/dash_nest.png';
    await images.load(src);
    var image = images.fromCache(src);
    const int rowCount = 9;
    const int columnCount = 8;
    SpriteAnimation animation = SpriteAnimation.fromFrameData(
      image,
      SpriteAnimationData.sequenced(
        amount: rowCount * columnCount,
        amountPerRow: columnCount,
        stepTime: 1 / 20,
        textureSize: Vector2(4000 / columnCount, 1296 / rowCount),
      ),
    );
    await add(DashComponent(animation: animation, size: Vector2(100, 37)));
  }
}
