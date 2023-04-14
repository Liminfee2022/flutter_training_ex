import 'package:flutter/material.dart';
import 'package:flutter_training_ex/c4/C4Home.dart';

class RouteGenerator {
  //Common page
  static const String c4HomePage = '/c4HomePage';
  static const String c5HomePage = '/c5HomePage';
  static const String c6HomePage = '/c6HomePage';
  static const String c7HomePage = '/c7HomePage';
  static const String c11HomePage = '/c11HomePage';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case c4HomePage:
        return MaterialPageRoute(builder: (_) => const C4Home(),
        );
      default:
        throw const FormatException('Route not found');
    }
  }
}