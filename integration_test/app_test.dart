// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'config.dart';

// This is an example integration test using Patrol. Use it as a base to
// create your own Patrol-powered test.
//
// To run it, you have to use `patrol drive` instead of `flutter test`.

void main() {
  patrolTest(
    'counter state is the same after going to home and switching apps',
    ($) async {
      await $.pumpWidgetAndSettle(
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(title: const Text('app')),
            backgroundColor: Colors.blue,
          ),
        ),
      );

      expect($('app'), findsOneWidget);


      await $.native.pressHome();

      await $.native.pressDoubleRecentApps();

      await $.native.openNotifications();

      await $.native.enableWifi();
      await $.native.disableWifi();
      await $.native.enableWifi();

      await $.native.pressBack();

    },
    config: patrolConfig,
    nativeAutomation: true,
  );
}
