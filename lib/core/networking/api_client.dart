import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:sample_project/config/env.dart';
import 'package:sample_project/core/logging/log.dart';
import 'package:sample_project/core/networking/base_api.dart';

class ApiClient extends BaseApiClient {
  ApiClient() {
    dio = Dio(BaseOptions(baseUrl: Env.value.baseUrl, headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    }));

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          Log.info('mock request path: ${options.path}');
          Log.info('Mock intercepted with path: ${options.path}');
          Log.info('Request body: ${options.data}');
          final data = await rootBundle.loadString(
              'assets/mock_responses/sample_person_list_mock_response.json');
          final jsonData = json.decode(data);
          Log.info('Mock api response: $jsonData');
          return handler
              .resolve(Response(requestOptions: options, data: jsonData));
        },
      ),
    );
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      error: true,
    ));
  }
}
