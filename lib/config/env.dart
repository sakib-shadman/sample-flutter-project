import 'package:flutter/cupertino.dart';
import 'package:sample_project/app/ui/view/app.dart';
import 'package:sample_project/config/service_locator.dart';

enum EnvType { development, staging, production }

class Env {
  Env() {
    value = this;
  }

  static late Env value;
  late String appName;
  late String baseUrl;
  late EnvType envType;

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await setUpServiceLocator();
    await sl.allReady();
    runApp(const App());
  }
}
