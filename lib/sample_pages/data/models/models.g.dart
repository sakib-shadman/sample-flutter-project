// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SamplePersonResponse _$SamplePersonResponseFromJson(
        Map<String, dynamic> json) =>
    SamplePersonResponse(
      json['name'] as String?,
      json['address'] as String?,
    );

Map<String, dynamic> _$SamplePersonResponseToJson(
        SamplePersonResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
    };

SamplePersonListRequest _$SamplePersonListRequestFromJson(
        Map<String, dynamic> json) =>
    SamplePersonListRequest(
      json['skip'] as String?,
      json['take'] as String?,
    );

Map<String, dynamic> _$SamplePersonListRequestToJson(
        SamplePersonListRequest instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'take': instance.take,
    };

SamplePersonListResponse _$SamplePersonListResponseFromJson(
        Map<String, dynamic> json) =>
    SamplePersonListResponse(
      (json['samplePersonList'] as List<dynamic>?)
          ?.map((e) => SamplePersonResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SamplePersonListResponseToJson(
        SamplePersonListResponse instance) =>
    <String, dynamic>{
      'samplePersonList': instance.samplePersonList,
    };
