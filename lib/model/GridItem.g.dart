// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GridItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GridList _$GridListFromJson(Map<String, dynamic> json) {
  return GridList(
    list: (json['list'] as List<dynamic>?)
        ?.map((e) => GridItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$GridListToJson(GridList instance) => <String, dynamic>{
      'list': instance.list,
    };

GridItem _$GridItemFromJson(Map<String, dynamic> json) {
  return GridItem(
    image: json['image'] as String?,
  );
}

Map<String, dynamic> _$GridItemToJson(GridItem instance) => <String, dynamic>{
      'image': instance.image,
    };
