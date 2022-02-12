import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sample_project/core/networking/base_model.dart';

import 'base_error.dart';

abstract class BaseApiClient {
  late Dio dio;
  static const int sendTimeOut = 60;
  static const int receiveTimeout = 60;
}

abstract class BaseApi<TResponse extends BaseModel, TError extends BaseError> {
  final String _url;
  final BaseApiClient _baseApiClient;
  final BaseError _baseError;

  BaseApi(this._url, this._baseApiClient, this._baseError);

  Future<Either<TResponse, TError>> post<TRequest extends BaseModel>(
      TRequest request,
      {Map<String, dynamic>? headers}) async {
    try {
      Response<Map<String, dynamic>> response =
          await _baseApiClient.dio.post(_url,
              data: request,
              options: Options(
                headers: headers ?? {},
                sendTimeout: BaseApiClient.sendTimeOut,
                receiveTimeout: BaseApiClient.receiveTimeout,
              ));
      return Left(mapResponse(response.data) as TResponse);
    } on DioError catch (dioError) {
      return Right(_baseError.generate(dioError) as TError);
    } catch (error) {
      return Right(_baseError.generate(error) as TError);
    }
  }

  Future<Either<TResponse, TError>> get({Map<String, dynamic>? headers}) async {
    try {
      Response<Map<String, dynamic>> response =
          await _baseApiClient.dio.get(_url,
              options: Options(
                headers: headers ?? {},
                sendTimeout: BaseApiClient.sendTimeOut,
                receiveTimeout: BaseApiClient.receiveTimeout,
              ));
      return Left(mapResponse(response.data) as TResponse);
    } on DioError catch (dioError) {
      return Right(_baseError.generate(dioError) as TError);
    } catch (error) {
      return Right(_baseError.generate(error) as TError);
    }
  }

  BaseModel mapResponse(Map<String, dynamic>? responseJson);
}
