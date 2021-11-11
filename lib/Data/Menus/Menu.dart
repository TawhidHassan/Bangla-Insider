// ignore_for_file: file_names


import 'package:json_annotation/json_annotation.dart';

part 'Menu.g.dart';

@JsonSerializable()
class Menu{


  int? id;
  String? name;
  String? en_name;
  int? parent_id;
  String? slug;
  String? meta_description_bangla;
  String? meta_description_english;
  int? status;
  int? created_by;
  List<Menu>? child_menu;


  Menu(
      this.id,
      this.name,
      this.en_name,
      this.parent_id,
      this.slug,
      this.meta_description_bangla,
      this.meta_description_english,
      this.status,
      this.created_by,
      this.child_menu);

  factory Menu.fromJson(Map<String,dynamic>json)=>
      _$MenuFromJson(json);
  Map<String,dynamic>toJson()=>_$MenuToJson(this);
}