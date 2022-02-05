import 'package:sample_project/config/env.dart';

class Staging extends Env {
  Staging(){
    envType = EnvType.staging;
    appName = '';
    baseUrl = '';
  }
}