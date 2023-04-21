import 'package:flutter/material.dart';
import 'package:flutter_training_ex/c4/C4Home.dart';
import 'package:flutter_training_ex/c5/screens/S1.dart';
import 'package:flutter_training_ex/c5/screens/S2.dart';
import 'package:flutter_training_ex/c5/screens/S3.dart';
import 'package:flutter_training_ex/c5/screens/S4.dart';

class RouteGenerator {
  //Common page
  static const String c4HomePage = '/c4HomePage';
  static const String c5HomePage = '/c5HomePage';
  static const String c6HomePage = '/c6HomePage';
  static const String c7HomePage = '/c7HomePage';
  static const String c11HomePage = '/c11HomePage';
  //C5
  static const String c5S1 = '/c5S1';
  static const String c5S2 = '/c5S2';
  static const String c5S3 = '/c5S3';
  static const String c5S4 = '/c5S4';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case c4HomePage:
        return MaterialPageRoute(
          builder: (_) => const C4Home(),
        );
      case c5S1:
        return MaterialPageRoute(
          builder: (_) => const S1(),
        );
      case c5S2:
        return MaterialPageRoute(
          builder: (_) => S2(arguments: settings.arguments),
        );
      case c5S3:
        return MaterialPageRoute(
          builder: (_) => S3(arguments: settings.arguments),
        );
      case c5S4:
        return MaterialPageRoute(
          builder: (_) => S4(arguments: settings.arguments),
        );
      default:
        throw const FormatException('Route not found');
    }
  }
}
