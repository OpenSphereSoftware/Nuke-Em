import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ################
// Colors
// ################

/// All colors used in the application
const ColorConfig _colorConfig = ColorConfig(
  accent: Color(0xFFf3bf09),
  // layer
  background: Color.fromARGB(255, 0, 0, 0),
  layer1: Color.fromARGB(255, 40, 37, 30),
  layer2: Color.fromARGB(255, 58, 54, 43),
  layer3: Color.fromARGB(255, 80, 77, 62),
  // text
  dark: Color(0xFF08080F),
  lightGrey: Color.fromARGB(255, 198, 186, 166),
  light: Color.fromARGB(255, 236, 231, 213),

  // special
  //accent: Color.fromRGBO(135, 120, 235, 1),
  disabled: Color.fromARGB(255, 176, 167, 147),
  error: Color(0xFFFF5252),
);

/// thin, bold, semibold, regular
const FontWeightConfig _fontWeightConfig = FontWeightConfig();

/// app style used in the app
class AppStyle {
  static SpacingConfig get spacings => const SpacingConfig();
  static ColorConfig get colors => _colorConfig;
  static TextStyleConfig get textStyles => TextStyleConfig(
        colorConfig: _colorConfig,
        weightConfig: _fontWeightConfig,
        baseStyle: GoogleFonts.pixelifySans(textStyle: TextStyle(color: _colorConfig.light)),
        infoStyle: const TextConfig(
          fontSize: 13,
          lineHeight: 1.23,
        ),
        labelStyle: const TextConfig(
          fontSize: 12.75,
        ),
        h1Style: const TextConfig(
          fontSize: 30,
        ),
        h2Style: const TextConfig(
          fontSize: 26,
        ),
        h3Style: const TextConfig(
          fontSize: 20,
          lineHeight: 1.2,
        ),
        h4Style: const TextConfig(
          fontSize: 17,
          lineHeight: 1.29,
        ),
        h5Style: const TextConfig(
          fontSize: 15,
          lineHeight: 1.33,
        ),
      );
}

/// example usage of the style
class Example {
  final double i = AppStyle.spacings.l;
  final TextStyle style = AppStyle.textStyles.h4.semiBold.accent;
  final Color color = AppStyle.colors.layer1;
}

@immutable
class ColorConfig {
  final Color background;
  final Color layer1;
  final Color layer2;
  final Color layer3;
  final Color dark;
  final Color light;
  final Color lightGrey;
  final Color disabled;
  final Color error;
  final Color accent;

  const ColorConfig({
    required this.background,
    required this.layer1,
    required this.layer2,
    required this.layer3,
    required this.dark,
    required this.light,
    required this.lightGrey,
    required this.disabled,
    required this.error,
    required this.accent,
  });

  //! here we can modify the base colors

  Color get light60 => light.withOpacity(0.6);

  Color get light20 => light.withOpacity(0.2);
}

class TextColorStyle {
  final ColorConfig _colorConfig;
  final TextStyle _defaultTextStyle;

  TextColorStyle(
    this._defaultTextStyle,
    this._colorConfig,
  );

  // ! here we can define the colors for the texts (from base colors)

  TextStyle get light => _defaultTextStyle.copyWith(color: _colorConfig.light);

  TextStyle get dark => _defaultTextStyle.copyWith(color: _colorConfig.dark);

  TextStyle get accent => _defaultTextStyle.copyWith(color: _colorConfig.accent);

  TextStyle get error => _defaultTextStyle.copyWith(color: _colorConfig.error);

  TextStyle get lightGrey => _defaultTextStyle.copyWith(color: _colorConfig.lightGrey);

  TextStyle get defaultStyle => _defaultTextStyle;
}

@immutable
class TextConfig {
  final double lineHeight;
  final double fontSize;
  final double? letterSpacing;

  const TextConfig({required this.fontSize, this.lineHeight = 1.0, this.letterSpacing});
}

@immutable
class TextWeightStyle {
  final ColorConfig _colorConfig;
  final FontWeightConfig _weightConfig;
  final TextStyle _defaultTextStyle;

  const TextWeightStyle({
    required ColorConfig colorConfig,
    required TextStyle defaultTextStyle,
    required FontWeightConfig weightConfig,
  })  : _colorConfig = colorConfig,
        _weightConfig = weightConfig,
        _defaultTextStyle = defaultTextStyle;

  TextColorStyle get thin => TextColorStyle(_defaultTextStyle.copyWith(fontWeight: _weightConfig.thin), _colorConfig);

  TextColorStyle get regular =>
      TextColorStyle(_defaultTextStyle.copyWith(fontWeight: _weightConfig.regular), _colorConfig);

  TextColorStyle get semiBold =>
      TextColorStyle(_defaultTextStyle.copyWith(fontWeight: _weightConfig.semiBold), _colorConfig);

  TextColorStyle get bold => TextColorStyle(_defaultTextStyle.copyWith(fontWeight: _weightConfig.bold), _colorConfig);
}

class TextStyleConfig {
  final ColorConfig _colorConfig;
  final FontWeightConfig _weightConfig;
  final TextStyle _baseStyle;
  final TextConfig _h1Style;
  final TextConfig _h2Style;
  final TextConfig _h3Style;
  final TextConfig _h4Style;
  final TextConfig _h5Style;
  final TextConfig _infoStyle;
  final TextConfig _labelStyle;

  TextStyleConfig({
    required FontWeightConfig weightConfig,
    required TextStyle baseStyle,
    required ColorConfig colorConfig,
    required TextConfig h1Style,
    required TextConfig h2Style,
    required TextConfig h3Style,
    required TextConfig h4Style,
    required TextConfig h5Style,
    required TextConfig infoStyle,
    required TextConfig labelStyle,
  })  : _weightConfig = weightConfig,
        _baseStyle = baseStyle,
        _colorConfig = colorConfig,
        _h1Style = h1Style,
        _h2Style = h2Style,
        _h3Style = h3Style,
        _h4Style = h4Style,
        _h5Style = h5Style,
        _infoStyle = infoStyle,
        _labelStyle = labelStyle;

  ColorConfig get colors => _colorConfig;

  TextWeightStyle get h1 => TextWeightStyle(
        defaultTextStyle: _baseStyle.copyWith(
          fontSize: _h1Style.fontSize,
          height: _h1Style.lineHeight,
          letterSpacing: _h1Style.letterSpacing,
        ),
        weightConfig: _weightConfig,
        colorConfig: _colorConfig,
      );

  TextWeightStyle get h2 => TextWeightStyle(
        defaultTextStyle: _baseStyle.copyWith(
          fontSize: _h2Style.fontSize,
          height: _h2Style.lineHeight,
          letterSpacing: _h2Style.letterSpacing,
        ),
        weightConfig: _weightConfig,
        colorConfig: _colorConfig,
      );

  TextWeightStyle get h3 => TextWeightStyle(
        defaultTextStyle: _baseStyle.copyWith(
          fontSize: _h3Style.fontSize,
          height: _h3Style.lineHeight,
          letterSpacing: _h3Style.letterSpacing,
        ),
        weightConfig: _weightConfig,
        colorConfig: _colorConfig,
      );

  TextWeightStyle get h4 => TextWeightStyle(
        defaultTextStyle: _baseStyle.copyWith(
          fontSize: _h4Style.fontSize,
          height: _h4Style.lineHeight,
          letterSpacing: _h4Style.letterSpacing,
        ),
        weightConfig: _weightConfig,
        colorConfig: _colorConfig,
      );

  TextWeightStyle get h5 => TextWeightStyle(
        defaultTextStyle: _baseStyle.copyWith(
          fontSize: _h5Style.fontSize,
          height: _h5Style.lineHeight,
          letterSpacing: _h5Style.letterSpacing,
        ),
        weightConfig: _weightConfig,
        colorConfig: _colorConfig,
      );

  TextWeightStyle get info => TextWeightStyle(
        defaultTextStyle: _baseStyle.copyWith(
          fontSize: _infoStyle.fontSize,
          height: _infoStyle.lineHeight,
          letterSpacing: _infoStyle.letterSpacing,
        ),
        weightConfig: _weightConfig,
        colorConfig: _colorConfig,
      );

  TextWeightStyle get label => TextWeightStyle(
        defaultTextStyle: _baseStyle.copyWith(
          fontSize: _labelStyle.fontSize,
          height: _labelStyle.lineHeight,
          letterSpacing: _labelStyle.letterSpacing,
        ),
        weightConfig: _weightConfig,
        colorConfig: _colorConfig,
      );
}

@immutable
class FontWeightConfig {
  final FontWeight thin;
  final FontWeight regular;
  final FontWeight semiBold;
  final FontWeight bold;

  const FontWeightConfig({
    this.thin = FontWeight.w300,
    this.regular = FontWeight.w400,
    this.semiBold = FontWeight.w600,
    this.bold = FontWeight.w700,
  });
}

@immutable
class SpacingConfig {
  final double xxxs;
  final double xxs;
  final double xs;
  final double s;
  final double m;
  final double l;
  final double xl;
  final double xxl;
  final double xxxl;
  final double xxxxl;

  const SpacingConfig({
    this.xxxs = 3.0,
    this.xxs = 7.0,
    this.xs = 11.0,
    this.s = 16.0,
    this.m = 20.0,
    this.l = 25.0,
    this.xl = 30.0,
    this.xxl = 40.0,
    this.xxxl = 50.0,
    this.xxxxl = 60.0,
  });
}
