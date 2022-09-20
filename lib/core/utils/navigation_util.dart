import 'package:flutter/material.dart';

class NavigationUtil {
  static bool canPop(BuildContext context) {
    final NavigatorState? navigator = Navigator.maybeOf(context);
    return navigator != null && navigator.canPop();
  }
}
