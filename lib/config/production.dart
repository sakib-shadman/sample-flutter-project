import 'package:sample_project/config/env.dart';

class Production extends Env{
  Production(){
    envType = EnvType.production;
    appName = '';
    baseUrl = '';
  }
}