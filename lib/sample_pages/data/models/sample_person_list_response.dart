part of models;

@JsonSerializable()
class SamplePersonListResponse extends BaseModel<SamplePersonListResponse> {
  @Default([])
  List<SamplePersonResponse>? samplePersonList;

  SamplePersonListResponse(
    this.samplePersonList,
  );

  factory SamplePersonListResponse.fromJson(Map<String, dynamic> json) =>
      _$SamplePersonListResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SamplePersonListResponseToJson(this);

  SamplePersonList toEntity() => SamplePersonList(
        samplePersonList?.map((e) => e.toEntity()).toList() ?? [],
      );
}
