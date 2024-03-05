// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ClassModel {
  String docid;
  String className;
  String? classTeacherdocid;
  String? classTeacherName;
  bool editoption;
  ClassModel({
    required this.docid,
    required this.className,
    this.classTeacherdocid,
    this.classTeacherName,
    required this.editoption,
  });

  ClassModel copyWith({
    String? docid,
    String? className,
    String? classTeacherdocid,
    String? classTeacherName,
    bool? editoption,
  }) {
    return ClassModel(
      docid: docid ?? this.docid,
      className: className ?? this.className,
      classTeacherdocid: classTeacherdocid ?? this.classTeacherdocid,
      classTeacherName: classTeacherName ?? this.classTeacherName,
      editoption: editoption ?? this.editoption,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'docid': docid,
      'className': className,
      'classTeacherdocid': classTeacherdocid,
      'classTeacherName': classTeacherName,
      'editoption': editoption,
    };
  }

  factory ClassModel.fromMap(Map<String, dynamic> map) {
    return ClassModel(
      docid: map['docid'] ?? "",
      className: map['className'] ?? "",
      classTeacherdocid: map['classTeacherdocid'] != null
          ? map['classTeacherdocid'] ?? ""
          : null,
      classTeacherName: map['classTeacherName'] != null
          ? map['classTeacherName'] ?? ""
          : null,
      editoption: map['editoption'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassModel.fromJson(String source) =>
      ClassModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ClassModel(docid: $docid, className: $className, classTeacherdocid: $classTeacherdocid, classTeacherName: $classTeacherName, editoption: $editoption)';
  }

  @override
  bool operator ==(covariant ClassModel other) {
    if (identical(this, other)) return true;

    return other.docid == docid &&
        other.className == className &&
        other.classTeacherdocid == classTeacherdocid &&
        other.classTeacherName == classTeacherName &&
        other.editoption == editoption;
  }

  @override
  int get hashCode {
    return docid.hashCode ^
        className.hashCode ^
        classTeacherdocid.hashCode ^
        classTeacherName.hashCode ^
        editoption.hashCode;
  }
}
