import 'package:hive_flutter/hive_flutter.dart';

part 'image_model.g.dart';

@HiveType(typeId: 0)
class ImageModel {
  @HiveField(0)
  int? id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String imageUrl;
  @HiveField(3)
  final int price;

  ImageModel(
      {this.id,
      required this.name,
      required this.imageUrl,
      required this.price});
}
