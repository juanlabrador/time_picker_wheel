// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class TimeTranslations {
  TimeTranslations();

  static TimeTranslations? _current;

  static TimeTranslations get current {
    assert(_current != null,
        'No instance of TimeTranslations was loaded. Try to initialize the TimeTranslations delegate before accessing TimeTranslations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<TimeTranslations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = TimeTranslations();
      TimeTranslations._current = instance;

      return instance;
    });
  }

  static TimeTranslations of(BuildContext context) {
    final instance = TimeTranslations.maybeOf(context);
    assert(instance != null,
        'No instance of TimeTranslations present in the widget tree. Did you add TimeTranslations.delegate in localizationsDelegates?');
    return instance!;
  }

  static TimeTranslations? maybeOf(BuildContext context) {
    return Localizations.of<TimeTranslations>(context, TimeTranslations);
  }

  /// `Hora`
  String get hour {
    return Intl.message(
      'Hora',
      name: 'hour',
      desc: '',
      args: [],
    );
  }

  /// `Minutos`
  String get minutes {
    return Intl.message(
      'Minutos',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<TimeTranslations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<TimeTranslations> load(Locale locale) => TimeTranslations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
