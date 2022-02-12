part of apis;

class SamplePersonListApi
    extends BaseApi<SamplePersonListResponse, ErrorResponseBase> {
  SamplePersonListApi()
      : super(
          ApiProvider.sampleListUrl,
          sl<ApiClient>(),
          sl<BaseError>(),
        );

  @override
  BaseModel mapResponse(Map<String, dynamic>? json) =>
      SamplePersonListResponse.fromJson(json!);
}
