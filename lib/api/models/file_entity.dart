import 'dart:convert';

class FileEntity {
  FileEntity({this.name, this.size, this.progress, this.priority});

  final String name;
  final int size;
  final double progress;
  final int priority;

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'size': size,
      'progress': progress,
      'priority': priority,
    };
  }

  factory FileEntity.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return FileEntity(
      name: map['name'],
      size: map['size'],
      progress: map['progress'],
      priority: map['priority'],
    );
  }

  String toJson() => json.encode(toMap());

  factory FileEntity.fromJson(String source) => FileEntity.fromMap(json.decode(source));
}
