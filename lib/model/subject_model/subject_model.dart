// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SubjectModel {
  String docid;
  String subjectName;
  String? teacherId;
  String? teacherName;
  SubjectModel({
    required this.docid,
    required this.subjectName,
    this.teacherId,
    this.teacherName,
  });

  SubjectModel copyWith({
    String? docid,
    String? subjectName,
    String? teacherId,
    String? teacherName,
  }) {
    return SubjectModel(
      docid: docid ?? this.docid,
      subjectName: subjectName ?? this.subjectName,
      teacherId: teacherId ?? this.teacherId,
      teacherName: teacherName ?? this.teacherName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'docid': docid,
      'subjectName': subjectName,
      'teacherId': teacherId,
      'teacherName': teacherName,
    };
  }

  factory SubjectModel.fromMap(Map<String, dynamic> map) {
    return SubjectModel(
      docid: map['docid'] ?? '',
      subjectName: map['subjectName'] ?? '',
      teacherId: map['teacherId'] != null ? map['teacherId'] ?? '' : null,
      teacherName: map['teacherName'] != null ? map['teacherName'] ?? '' : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubjectModel.fromJson(String source) =>
      SubjectModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SubjectModel(docid: $docid, subjectName: $subjectName, teacherId: $teacherId, teacherName: $teacherName)';
  }

  @override
  bool operator ==(covariant SubjectModel other) {
    if (identical(this, other)) return true;

    return other.docid == docid &&
        other.subjectName == subjectName &&
        other.teacherId == teacherId &&
        other.teacherName == teacherName;
  }

  @override
  int get hashCode {
    return docid.hashCode ^
        subjectName.hashCode ^
        teacherId.hashCode ^
        teacherName.hashCode;
  }
}
