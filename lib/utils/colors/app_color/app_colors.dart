import 'package:flutter/material.dart';

final MaterialColor kColorPrimary = getMaterialColor(0xFF128C7E);
final MaterialColor kColorSecondary = getMaterialColor(0xFF075E54);

MaterialColor getMaterialColor(int primary) {
  Map<int, Color> colorMap = {
    50: Color(primary).withOpacity(0.10),
    100: Color(primary).withOpacity(0.20),
    200: Color(primary).withOpacity(0.30),
    300: Color(primary).withOpacity(0.40),
    400: Color(primary).withOpacity(0.50),
    500: Color(primary).withOpacity(0.60),
    600: Color(primary).withOpacity(0.70),
    700: Color(primary).withOpacity(0.80),
    800: Color(primary).withOpacity(0.90),
    900: Color(primary).withOpacity(1.00),
  };

  return MaterialColor(primary, colorMap);
}
