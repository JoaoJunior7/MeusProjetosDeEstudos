// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

class Course {
  int id;
  String name;
  bool isStudent;
  Course({
    required this.id,
    required this.name,
    required this.isStudent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'isStudent': isStudent,
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
        id: map['id'] ?? 0,
        name: map['name'] ?? '',
        isStudent: map['isStudent'] ?? false);
  }

  String toJson() => jsonEncode(toMap());

  factory Course.fromJson(String json) => Course.fromMap(jsonDecode(json));
}
