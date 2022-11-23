import 'dart:io';

import 'package:integration_test/integration_test_driver.dart';

Future<void> main() async {
  //await Process.run('adb', ['shell', 'pm', 'grant', 'com.bKash.customerapp.uat', 'android.permission.POST_NOTIFICATIONS']);
  //await Process.run('adb', ['shell', 'pm', 'grant', 'com.bKash.customerapp.uat', 'android.permission.READ_CONTACTS']);
  // await Process.run('adb', ['shell', 'pm', 'grant', 'com.bKash.customerapp.uat', 'android.permission.CAMERA']);
  // await Process.run('adb', ['shell', 'pm', 'grant', 'com.bKash.customerapp.uat', 'android.permission.READ_EXTERNAL_STORAGE']);
  //await Process.run('adb', ['shell', 'pm', 'grant', 'com.bKash.customerapp.uat', 'android.permission.ACCESS_FINE_LOCATION']);
  //await Process.run('adb', ['shell', 'pm', 'grant', 'com.bKash.customerapp.uat', 'android.permission.READ_PHONE_STATE']);
  // await Process.run('adb', ['shell', 'pm', 'grant', 'com.bKash.customerapp.uat', 'android.permission.RECORD_AUDIO']);
  // await Process.run('adb', ['shell', 'pm', 'grant', 'com.bKash.customerapp.uat', 'android.permission.WRITE_EXTERNAL_STORAGE']);

  await integrationDriver();
}