
import 'package:flutter/material.dart';

class NavigatorUtils {}

extension ContextExtension on BuildContext {
  void push(Widget screen) {
    Navigator.push(this, MaterialPageRoute(builder: (_) => screen));
  }
}
