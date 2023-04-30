<!--
*****************************************************************
*
* WARNING:  DO NOT IGNORE THIS TEMPLATE
*
*****************************************************************
-->

<!--
  Provide a general summary of the issue in the Title above
-->
## Your Environment
* Plugin version: 4.6.2
* Platform:  Android
* OS version: 10,11,12,13
* Device manufacturer / model: All model
* Flutter info (`flutter doctor`):
[✓] Flutter (Channel stable, 3.3.10, on macOS 13.1 22C65 darwin-x64, locale en-GB)
[✓] Android toolchain - develop for Android devices (Android SDK version 33.0.0)
[✓] Xcode - develop for iOS and macOS (Xcode 14.2)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2021.2)
[✓] IntelliJ IDEA Ultimate Edition (version 2022.1.2)
[✓] VS Code (version 1.70.2)
[✓] Connected device (2 available)
[✓] HTTP Host Availability



* Plugin config:
```dart <-- Syntax highlighting: DO NOT REMOVE -->
try {
  await BackgroundGeolocation.stop();
  await BackgroundGeolocation.stopSchedule();      
  final status = await BackgroundGeolocation.ready(
   Config(
     reset: false,
     schedule: Constants.trackingSchedule,
     scheduleUseAlarmManager: true,
     distanceFilter: Constants.locationDistanceFilter,
     isMoving: true,
     maxDaysToPersist: 7,
   ),
 );
 BackgroundGeolocation.onLocation(locationUpdateCallBack);
 if (!status.enabled) {
   await BackgroundGeolocation.start();
   await BackgroundGeolocation.startSchedule();
 }
} catch (exception) {
 Log.info(
   'EXCEPTION AT READY AT SPLASH '
   'FOR BACKGROUND TRACKING: ${exception.toString()}',
 );
 unawaited(FirebaseCrashlytics.instance.recordError(exception, null));
} 


try {
 await BackgroundGeolocation.setConfig(
   Config(
     enableHeadless: true,
     desiredAccuracy: Config.DESIRED_ACCURACY_HIGH,
     distanceFilter: 100,
     disableElasticity: true,
     stopOnTerminate: false,
     startOnBoot: true,
     isMoving: true,
     heartbeatInterval: 60,
     schedule: Constants.trackingSchedule,
     scheduleUseAlarmManager: true,
     backgroundPermissionRationale: PermissionRationale(
       message: permissionExplanationMessage,
     ),
     url: Env.value.baseUrl + ApiProvider.liveTrackingDataPostUrl,
     method: 'POST',
     autoSync: true,
     params: await getCustomParams(),
     logLevel: Config.LOG_LEVEL_VERBOSE,
     maxDaysToPersist: 7,
   ),
 );
 unawaited(BackgroundGeolocation.startSchedule());
} catch (exception) {
 Log.info(
   'EXCEPTION AT SET CONFIG AFTER LOGIN '
   'FOR BACKGROUND TRACKING: ${exception.toString()}',
 );
 unawaited(FirebaseCrashlytics.instance.recordError(exception, null));
}
```

## Expected Behavior
<!--- Tell us what should happen -->
From our firebase crashlytics we are getting this non fatal error.
PlatformException(Failed to start schedule.  Did you configure a #schedule?, null, null, null)
This exception should not be generated through our firebase crashlytics.

## Actual Behavior
<!--- Tell us what happens instead -->
From our firebase crashlytics we are getting this non fatal error.
PlatformException(Failed to start schedule.  Did you configure a #schedule?, null, null, null)

## Steps to Reproduce
<!--- reproduce this issue; include code to reproduce, if relevant -->
We could not reproduce the issue.

## Context
<!--- What were you trying to do? -->
In the splash screen of our app we have configured the plugin as below for the app version 1.2.0.

Config of the plug in the app version 1.2.0 (splash screen): 

```dart
final status = await BackgroundGeolocation.ready(
  Config(
    distanceFilter: 100,
    isMoving: true,
  ),
);
BackgroundGeolocation.onLocation(locationUpdateCallBack);
if (!status.enabled) {
  await BackgroundGeolocation.start();
}

```
Config of the plug in the app version 1.2.0 (login screen): 

```dart
await BackgroundGeolocation.ready(
  Config(
    enableHeadless: true,
    desiredAccuracy: Config.DESIRED_ACCURACY_HIGH,
    distanceFilter: 100,
    disableElasticity: true,
    stopOnTerminate: false,
    startOnBoot: true,
    isMoving: true,
    heartbeatInterval: 60,
    schedule: [
      '1-7 8:00-20:00', // Sun-Sat: 8:00am to 8:00pm
    ],
    scheduleUseAlarmManager: true,
    backgroundPermissionRationale: PermissionRationale(
      message: permissionExplanationMessage,
    ),
    url: Env.value.eventStreamBaseURL + ApiProvider.liveTrackingDataPostUrl,
    method: 'POST',
    autoSync: true,
    params: await getCustomParams(),
    logLevel: Config.LOG_LEVEL_VERBOSE,
  ),
).then((State state) {
  if (!state.schedulerEnabled) {
    BackgroundGeolocation.startSchedule();
  }

  if (!state.enabled) {
    ////
    // 3.  Start the plugin.
    //
    BackgroundGeolocation.start();
  }
});

```

In our app version 1.3.0 we have brought some changes to the plugin configuration to mitigate some issues of our business logic. 


Config of the plug in the app version 1.3.0 (splash screen): 

```dart
try {
 await BackgroundGeolocation.stop();
 await BackgroundGeolocation.stopSchedule();

 final status = await BackgroundGeolocation.ready(
   Config(
     reset: false,
     schedule: Constants.trackingSchedule,
     scheduleUseAlarmManager: true,
     distanceFilter: Constants.locationDistanceFilter,
     isMoving: true,
     maxDaysToPersist: 7,
   ),
 );
 BackgroundGeolocation.onLocation(locationUpdateCallBack);

 if (!status.enabled) {
   await BackgroundGeolocation.start();
   await BackgroundGeolocation.startSchedule();
 }
} catch (exception) {
 Log.info(
   'EXCEPTION AT READY AT SPLASH '
   'FOR BACKGROUND TRACKING: ${exception.toString()}',
 );
 unawaited(FirebaseCrashlytics.instance.recordError(exception, null));
}
```

Config of the plug in the app version 1.3.0 (login screen): 

```dart
try {
 await BackgroundGeolocation.setConfig(
   Config(
     enableHeadless: true,
     desiredAccuracy: Config.DESIRED_ACCURACY_HIGH,
     distanceFilter: 100,
     disableElasticity: true,
     stopOnTerminate: false,
     startOnBoot: true,
     isMoving: true,
     heartbeatInterval: 60,
     schedule: Constants.trackingSchedule,
     scheduleUseAlarmManager: true,
     backgroundPermissionRationale: PermissionRationale(
       message: permissionExplanationMessage,
     ),
     url: Env.value.baseUrl + ApiProvider.liveTrackingDataPostUrl,
     method: 'POST',
     autoSync: true,
     params: await getCustomParams(),
     logLevel: Config.LOG_LEVEL_VERBOSE,
     maxDaysToPersist: 7,
   ),
 );
 unawaited(BackgroundGeolocation.startSchedule());
} catch (exception) {
 Log.info(
   'EXCEPTION AT SET CONFIG AFTER LOGIN '
   'FOR BACKGROUND TRACKING: ${exception.toString()}',
 );
 unawaited(FirebaseCrashlytics.instance.recordError(exception, null));
}

```

In our app, after the splash screen and some flow user gets into the login screen. When user updates the app from version 1.2.0  to 1.3.0  through the google play store we have started getting the issue mentioned above through our firebase crashlytics.

After that we have published another version to the playstore, 1.3.1, this version has the same configuration of the plugin as in the app version 1.3.0 , but we are getting the same exception from the plugin after updating to app version 1.3.1. 


## Debug logs
<!-- include iOS / Android logs
- ios XCode logs,
- use #getLog #emailLog methods (@see docs)
- Android: $ adb logcat -s TSLocationManager
-->
<details>
	<summary>Logs</summary>

``` <!-- syntax-highligting:  DO NOT REMOVE -->
```

</details>

