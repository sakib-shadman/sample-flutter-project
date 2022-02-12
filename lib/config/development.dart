import 'package:sample_project/config/env.dart';

class Development extends Env {
 Development(){
   envType = EnvType.development;
    appName = '';
    baseUrl = 'https://www.boredapi.com/api/';
  }
}