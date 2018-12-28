import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;


class FlutterLocalizedString {
  static const MethodChannel _channel =
      const MethodChannel('flutter_localized_string');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

class LocalizedString {
  static var localizedStringJson = "{}";
  
  static Future<String> preloadLocalizedStrings(BuildContext context) async {
    var myLocale = Localizations.localeOf(context);
    localizedStringJson = await rootBundle.loadString('assets/'+myLocale.languageCode+'.json');
    return localizedStringJson;
  }

  static String by({String key}) {
    var value = json.decode(localizedStringJson)[key];
    return value ?? key;
  }
}