// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ExamTimeTableModel {
  String subject;
  String docId;
  String startTime;
  String endTime;
  String date;
  ExamTimeTableModel({
    required this.subject,
    required this.docId,
    required this.startTime,
    required this.endTime,
    required this.date,
  });

  ExamTimeTableModel copyWith({
    String? subject,
    String? docId,
    String? startTime,
    String? endTime,
    String? date,
  }) {
    return ExamTimeTableModel(
      subject: subject ?? this.subject,
      docId: docId ?? this.docId,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subject': subject,
      'docId': docId,
      'startTime': startTime,
      'endTime': endTime,
      'date': date,
    };
  }

  factory ExamTimeTableModel.fromMap(Map<String, dynamic> map) {
    return ExamTimeTableModel(
      subject: map['subject'] as String,
      docId: map['docId'] as String,
      startTime: map['startTime'] as String,
      endTime: map['endTime'] as String,
      date: map['date'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ExamTimeTableModel.fromJson(String source) => ExamTimeTableModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ExamTimeTableModel(subject: $subject, docId: $docId, startTime: $startTime, endTime: $endTime, date: $date)';
  }

  @override
  bool operator ==(covariant ExamTimeTableModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.subject == subject &&
      other.docId == docId &&
      other.startTime == startTime &&
      other.endTime == endTime &&
      other.date == date;
  }

  @override
  int get hashCode {
    return subject.hashCode ^
      docId.hashCode ^
      startTime.hashCode ^
      endTime.hashCode ^
      date.hashCode;
  }
}
