part of models;

@JsonSerializable()
class SamplePersonListRequest extends BaseModel<SamplePersonListRequest> {
  final String? skip;
  final String? take;

  SamplePersonListRequest(
    this.skip,
    this.take,
  );

  factory SamplePersonListRequest.fromJson(Map<String, dynamic> json) =>
      _$SamplePersonListRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SamplePersonListRequestToJson(this);
}
