abstract class BaseUseCase<TOutput,TInput>{
  Future<TOutput> call(TInput input);
}