/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAudioGen {
  const $AssetsAudioGen();

  /// File path: assets/audio/background.mp3
  String get background => 'assets/audio/background.mp3';

  /// List of all assets
  List<String> get values => [background];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/bonus_animation
  $AssetsImagesBonusAnimationGen get bonusAnimation =>
      const $AssetsImagesBonusAnimationGen();
}

class $AssetsImagesBonusAnimationGen {
  const $AssetsImagesBonusAnimationGen();

  /// File path: assets/images/bonus_animation/android_spaceship.png
  AssetGenImage get androidSpaceship => const AssetGenImage(
      'assets/images/bonus_animation/android_spaceship.png');

  /// File path: assets/images/bonus_animation/dash_nest.png
  AssetGenImage get dashNest =>
      const AssetGenImage('assets/images/bonus_animation/dash_nest.png');

  /// File path: assets/images/bonus_animation/dino_chomp.png
  AssetGenImage get dinoChomp =>
      const AssetGenImage('assets/images/bonus_animation/dino_chomp.png');

  /// File path: assets/images/bonus_animation/google_word.png
  AssetGenImage get googleWord =>
      const AssetGenImage('assets/images/bonus_animation/google_word.png');

  /// File path: assets/images/bonus_animation/sparky_turbo_charge.png
  AssetGenImage get sparkyTurboCharge => const AssetGenImage(
      'assets/images/bonus_animation/sparky_turbo_charge.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [androidSpaceship, dashNest, dinoChomp, googleWord, sparkyTurboCharge];
}

class Assets {
  Assets._();

  static const $AssetsAudioGen audio = $AssetsAudioGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
