import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';
import 'package:long_game/dash_component.dart';

class LongGame extends FlameGame {
  late final JoystickComponent joystick;
  late final DashComponent player;

  @override
  Future<void> onLoad() async {
    player = DashComponent(size: Vector2(100, 37));
    await add(player);

    final knobPaint = BasicPalette.blue.withAlpha(200).paint();
    final backgroundPaint = BasicPalette.blue.withAlpha(100).paint();
    joystick = JoystickComponent(
      knob: CircleComponent(radius: 25, paint: knobPaint),
      background: CircleComponent(radius: 60, paint: backgroundPaint),
      margin: const EdgeInsets.only(left: 40, bottom: 40),
    );
    add(joystick);
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (!joystick.delta.isZero()) {
      Vector2 ds = joystick.relativeDelta * player.speed * dt;
      player.move(ds);
    }
    if (!joystick.delta.isZero()) {
      player.angle = joystick.delta.screenAngle();
    } else {
      player.angle = 0;
    }
  }
}
