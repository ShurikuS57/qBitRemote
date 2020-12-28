import 'dart:convert';

class FileEntity {
  FileEntity({this.path, this.size, this.progress, this.priority});

  final String path;
  final int size;
  final double progress;
  final int priority;

  Map<String, dynamic> toMap() {
    return {
      'name': path,
      'size': size,
      'progress': progress,
      'priority': priority,
    };
  }

  factory FileEntity.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return FileEntity(
      path: map['name'],
      size: map['size'],
      progress: double.tryParse(map['progress'].toString()) ?? 0.0,
      priority: map['priority'],
    );
  }

  String toJson() => json.encode(toMap());

  factory FileEntity.fromJson(String source) => FileEntity.fromMap(json.decode(source));
}
