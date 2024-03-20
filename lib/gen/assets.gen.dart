/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsModalGen {
  const $AssetsModalGen();

  /// File path: assets/Modal/Hourly.png
  AssetGenImage get hourly => const AssetGenImage('assets/Modal/Hourly.png');

  /// List of all assets
  List<AssetGenImage> get values => [hourly];
}

class $AssetsWeekdaysGen {
  const $AssetsWeekdaysGen();

  /// File path: assets/Weekdays/friday.png
  AssetGenImage get friday => const AssetGenImage('assets/Weekdays/friday.png');

  /// File path: assets/Weekdays/monday.png
  AssetGenImage get monday => const AssetGenImage('assets/Weekdays/monday.png');

  /// File path: assets/Weekdays/saturday.png
  AssetGenImage get saturday =>
      const AssetGenImage('assets/Weekdays/saturday.png');

  /// File path: assets/Weekdays/sunday.png
  AssetGenImage get sunday => const AssetGenImage('assets/Weekdays/sunday.png');

  /// File path: assets/Weekdays/thirsday.png
  AssetGenImage get thirsday =>
      const AssetGenImage('assets/Weekdays/thirsday.png');

  /// File path: assets/Weekdays/thuesday.png
  AssetGenImage get thuesday =>
      const AssetGenImage('assets/Weekdays/thuesday.png');

  /// File path: assets/Weekdays/wensday.png
  AssetGenImage get wensday =>
      const AssetGenImage('assets/Weekdays/wensday.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [friday, monday, saturday, sunday, thirsday, thuesday, wensday];
}

class $AssetsBackgroundGen {
  const $AssetsBackgroundGen();

  /// File path: assets/background/House.png
  AssetGenImage get house => const AssetGenImage('assets/background/House.png');

  /// File path: assets/background/TabBar.png
  AssetGenImage get tabBar =>
      const AssetGenImage('assets/background/TabBar.png');

  /// File path: assets/background/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/background/background.png');

  /// File path: assets/background/backgroundseite2.png
  AssetGenImage get backgroundseite2 =>
      const AssetGenImage('assets/background/backgroundseite2.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [house, tabBar, background, backgroundseite2];
}

class Assets {
  Assets._();

  static const $AssetsModalGen modal = $AssetsModalGen();
  static const AssetGenImage snackbar = AssetGenImage('assets/Snackbar.png');
  static const AssetGenImage weatherCardSmall =
      AssetGenImage('assets/WeatherCardSmall.png');
  static const $AssetsWeekdaysGen weekdays = $AssetsWeekdaysGen();
  static const $AssetsBackgroundGen background = $AssetsBackgroundGen();

  /// List of all assets
  static List<AssetGenImage> get values => [snackbar, weatherCardSmall];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
