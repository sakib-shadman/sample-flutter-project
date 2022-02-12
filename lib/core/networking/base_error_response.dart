import 'base_error.dart';

class ErrorResponseBase extends BaseError {
  String? errorResponse;

  @override
  void generateError(dynamic data) {
    try {
      errorResponse = 'ErrorResponse.fromJson(data)';
    } catch (_) {
      errorResponse = '_getDefaultErrorResponse()';
    }
  }

  @override
  String getMessage({String? lang}) =>
      'errorResponse?.getLocalizedMessage(lang) ?? dioError!.message';
}
