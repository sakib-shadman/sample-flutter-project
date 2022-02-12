part of repositories;

abstract class SamplePersonListRepository {
  Future<Either<SamplePersonList, Error>> samplePersonListRepository(
    SampleAuthentication sampleAuthentication,
  );
}
