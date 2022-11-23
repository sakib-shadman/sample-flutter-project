import 'package:sample_project/config/env.dart';

class Development extends Env {
  Development() {
    envType = EnvType.development;
    appName = 'Development';
    baseUrl = 'https://www.boredapi.com/api/';
  }
}
