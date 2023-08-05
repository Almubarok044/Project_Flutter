import 'dart:convert';

MaroonModel maroonFromJson(String str) =>
    MaroonModel.fromJson(json.decode(str));

String maroonToJson(MaroonModel data) => json.encode(data.toJson());

class MaroonModel {
  int id;
  String name;
  String message;
  DateTime createdAt;
  DateTime updatedAt;

  MaroonModel({
    required this.id,
    required this.name,
    required this.message,
    required this.createdAt,
    required this.updatedAt,
  });

  factory MaroonModel.fromJson(Map<String, dynamic> json) => MaroonModel(
        id: json["id"],
        name: json["name"],
        message: json["message"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "message": message,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
