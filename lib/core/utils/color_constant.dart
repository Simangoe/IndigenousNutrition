import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color green200 = fromHex('#9ddabe');

  static Color green100 = fromHex('#ccdec1');

  static Color black900B2 = fromHex('#b2000000');

  static Color lightGreen100 = fromHex('#d8e7cf');

  static Color black9003f = fromHex('#3f000000');

  static Color gray50 = fromHex('#fafdf9');

  static Color greenA700 = fromHex('#14be70');

  static Color greenA701 = fromHex('#06c46b');

  static Color black900 = fromHex('#000000');

  static Color lightGreen800 = fromHex('#61834c');

  static Color gray40099 = fromHex('#99c4c4c4');

  static Color lime200 = fromHex('#e8d7a5');

  static Color gray501 = fromHex('#92959b');

  static Color gray301 = fromHex('#e1e1e1');

  static Color gray500 = fromHex('#939393');

  static Color gray800 = fromHex('#593111');

  static Color gray900 = fromHex('#282828');

  static Color bluegray100 = fromHex('#d8d8d8');

  static Color gray4007f = fromHex('#7fc4c4c4');

  static Color gray300 = fromHex('#e3ecdc');

  static Color orange200 = fromHex('#ffcb84');

  static Color bluegray900 = fromHex('#333335');

  static Color bluegray700 = fromHex('#3d5067');

  static Color black90099 = fromHex('#99000000');

  static Color bluegray500 = fromHex('#43927c');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray101 = fromHex('#d9d9d9');

  static Color whiteA701 = fromHex('#ffffff');

  static Color whiteA700 = fromHex('#fefefe');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
