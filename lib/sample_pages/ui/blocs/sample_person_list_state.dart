part of blocs;

@freezed
class SamplePersonListState with _$SamplePersonListState {
  const factory SamplePersonListState.initialState() =
      SamplePersonListInitialState;

  const factory SamplePersonListState.loadingState() =
      SamplePersonListLoadingState;

  const factory SamplePersonListState.loadedState(
          {required List<SamplePerson> samplePersonList}) =
      SamplePersonListLoadedState;

  const factory SamplePersonListState.errorState({required Error error}) =
      SamplePersonListErrorState;
}
