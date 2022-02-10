part of repositories;

abstract class SamplePersonListRepository {
  Future<Either<List<SamplePerson>, Error>>
      samplePersonListRepository(
    SampleAuthentication sampleAuthentication,
  );
}
