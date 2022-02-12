import 'package:dartz/dartz.dart';
import 'package:sample_project/config/service_locator.dart';
import 'package:sample_project/core/error_data_model.dart';
import 'package:sample_project/sample_pages/data/repositories/data_sources/sample_person_list_remote_data_source.dart';
import 'package:sample_project/sample_pages/domain/entities/entities.dart';
import 'package:sample_project/sample_pages/domain/repositories/repositories.dart';

class SamplePersonListRepositoryImpl extends SamplePersonListRepository {
  @override
  Future<Either<SamplePersonList, Error>> samplePersonListRepository(
    SampleAuthentication sampleAuthentication,
  ) async {
    final response = await sl
        .get<SamplePersonListRemoteDataSource>()
        .samplePersonList(sampleAuthentication.accessToken);

    return response.fold(
      (samplePersonList) => Left(samplePersonList.toEntity()),
      (error) => Right(Error('')),
    );
  }
}
