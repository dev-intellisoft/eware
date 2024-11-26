import 'package:intl/intl.dart';

class Occurrence {
  String author;
  String description;
  DateTime createdAt;

  Occurrence({
    required this.author,
    required this.description,
    required this.createdAt,
  });
  Map<String, dynamic> toJson() {
    return {
      "author":author,
      "description":description,
      "created_at":createdAt
    };
  }
}