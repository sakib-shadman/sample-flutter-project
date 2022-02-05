import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_project/config/env.dart';
import 'package:sample_project/config/service_locator.dart';

import 'navigation/cubit/navigation_cubit.dart';
import 'navigation/utility/app_route_information_parser.dart';
import 'navigation/utility/app_router_delegate.dart';
import 'navigation/utility/page_config.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  late NavigationCubit navigationCubit;
  late AppRouterDelegate appRouterDelegate;

  @override
  void initState() {
    super.initState();
    navigationCubit = sl<NavigationCubit>(
      param1: [
        sl<PageConfig>(
          param1: '/sampleListPage',
          param2: <String, int>{'key': 42},
        ),
      ],
    );
    appRouterDelegate = sl<AppRouterDelegate>(
      param1: navigationCubit,
    );
  }

  @override
  Future<void> dispose() async {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: navigationCubit,
      child: MaterialApp.router(
        title: Env.value.appName,
        debugShowCheckedModeBanner: false,
        routerDelegate: appRouterDelegate,
        routeInformationParser: sl<AppRouteInformationParser>(),
      ),
    );
  }
}
