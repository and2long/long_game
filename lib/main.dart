import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:long_game/game.dart';

void main() {
  runApp(GameWidget(game: LongGame()));
  // FlameAudio.play('background.mp3');
}
