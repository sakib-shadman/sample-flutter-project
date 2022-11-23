import 'package:flutter/cupertino.dart';
import 'package:sample_project/config/env.dart';

class SampleDefaultPage extends StatelessWidget {
  const SampleDefaultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text('Sample Default Page: ${Env.value.appName}'),
    );
  }
}
