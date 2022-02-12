import 'package:dartz/dartz.dart';
import 'package:sample_project/config/service_locator.dart';
import 'package:sample_project/core/networking/base_error_response.dart';
import 'package:sample_project/sample_pages/data/models/models.dart';
import 'package:sample_project/sample_pages/data/network/apis.dart';

class SamplePersonListRemoteDataSource {
  Future<Either<SamplePersonListResponse, ErrorResponseBase>> samplePersonList(
    String? accessToken,
  ) async {
    //SamplePersonListRequest samplePersonListRequest = SamplePersonListRequest('100', '300');
    final response = await sl<SamplePersonListApi>()
        .get(headers: {'Authorization': 'Bearer $accessToken'});

    return response;
  }
}
