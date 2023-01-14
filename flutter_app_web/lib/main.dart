import 'package:flutter_app_web/src/appweb.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: "Corsi",
        home: AppWeb(),
      ),
    ),
  );
}