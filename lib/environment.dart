import 'package:flutter/foundation.dart';

class Environment {
  static String get flavorName {
    if (!kIsWeb) {
      return appFlavorName;
    } else {
      return 'Web Flavor'; // Provide a default for web
    }
  }

  static const String appFlavorName =
      String.fromEnvironment('flavor', defaultValue: 'staging');
}
