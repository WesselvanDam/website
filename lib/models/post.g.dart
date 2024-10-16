// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      slug: json['slug'] as String,
      category: $enumDecode(_$PostCategoryEnumMap, json['category']),
      title: json['title'] as String,
      description: json['description'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      modifiedDate: json['modifiedDate'] == null
          ? null
          : DateTime.parse(json['modifiedDate'] as String),
      image: json['image'] as String?,
      location: json['location'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'category': _$PostCategoryEnumMap[instance.category]!,
      'title': instance.title,
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'modifiedDate': instance.modifiedDate?.toIso8601String(),
      'image': instance.image,
      'location': instance.location,
      'tags': instance.tags,
    };

const _$PostCategoryEnumMap = {
  PostCategory.story: 'story',
  PostCategory.content: 'content',
  PostCategory.thought: 'thought',
  PostCategory.portfolio: 'portfolio',
  PostCategory.experience: 'experience',
  PostCategory.education: 'education',
};
