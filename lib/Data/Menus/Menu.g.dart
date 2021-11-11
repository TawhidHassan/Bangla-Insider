// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Menu _$MenuFromJson(Map<String, dynamic> json) {
  return Menu(
    json['id'] as int?,
    json['name'] as String?,
    json['en_name'] as String?,
    json['parent_id'] as int?,
    json['slug'] as String?,
    json['meta_description_bangla'] as String?,
    json['meta_description_english'] as String?,
    json['status'] as int?,
    json['created_by'] as int?,
    (json['child_menu'] as List<dynamic>?)
        ?.map((e) => Menu.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MenuToJson(Menu instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'en_name': instance.en_name,
      'parent_id': instance.parent_id,
      'slug': instance.slug,
      'meta_description_bangla': instance.meta_description_bangla,
      'meta_description_english': instance.meta_description_english,
      'status': instance.status,
      'created_by': instance.created_by,
      'child_menu': instance.child_menu,
    };
