part of use_cases;

class SamplePersonListUseCase
    extends BaseUseCase<Either<SamplePersonList, Error>, SampleAuthentication> {
  @override
  Future<Either<SamplePersonList, Error>> call(
    SampleAuthentication input,
  ) async {
    final samplePersonList = <SamplePerson>[];
    /*samplePersonList
      ..add(SamplePerson('P1', 'A1'))
      ..add(SamplePerson('P2', 'A2'))
      ..add(SamplePerson('P3', 'A3'));*/
    //await Future.delayed(const Duration(seconds: 5));
    return await sl<SamplePersonListRepository>()
        .samplePersonListRepository(input);
  }
}
