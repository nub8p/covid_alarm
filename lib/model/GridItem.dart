import 'package:json_annotation/json_annotation.dart';

part 'GridItem.g.dart';

@JsonSerializable()
class GridList {
  List<GridItem>? list;

  GridList({
    required this.list,
  });

  factory GridList.fromJson(Map<String, dynamic> json) =>
      _$GridListFromJson(json);

  Map<String, dynamic> toJson() => _$GridListToJson(this);
}

@JsonSerializable()
class GridItem {
  String? image;

  GridItem({
    required this.image,
  });

  factory GridItem.fromJson(Map<String, dynamic> json) =>
      _$GridItemFromJson(json);

  Map<String, dynamic> toJson() => _$GridItemToJson(this);
}