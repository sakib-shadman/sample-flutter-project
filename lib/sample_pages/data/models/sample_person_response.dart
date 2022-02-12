part of models;

@JsonSerializable()
class SamplePersonResponse extends BaseModel<SamplePersonResponse> {
  final String? name;
  final String? address;

  SamplePersonResponse(this.name, this.address);

  factory SamplePersonResponse.fromJson(Map<String, dynamic> json) =>
      _$SamplePersonResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SamplePersonResponseToJson(this);

  SamplePerson toEntity() => SamplePerson(name ?? '', address ?? '');
}
