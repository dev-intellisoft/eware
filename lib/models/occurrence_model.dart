import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'occurrence_model.g.dart';

@HiveType(typeId: 0)
class OccurrenceModel extends HiveObject {
  @HiveField(0)
  final DateTime dateTime;

  @HiveField(1)
  final String description;

  @HiveField(2)
  final String author;

  OccurrenceModel({
    required this.dateTime,
    required this.description,
    required this.author,
  });
}