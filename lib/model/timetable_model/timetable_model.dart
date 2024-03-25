import 'dart:convert';


class TimeTableModel{
  String? selectClass;
  String? dayName;
  String? teacherName;
  String? subjectName;
  String? periodNumber;
  String? startTime;
  String? endTime;
  String? selectColor;
  TimeTableModel({
    this.selectClass,
    this.dayName,
    this.teacherName,
    this.subjectName,
    this.periodNumber,
    this.startTime,
    this.endTime,
    this.selectColor,
  });
  TimeTableModel copyWith({
  String? selectClass,
  String? dayName,
  String? teacherName,
  String? subjectName,
  String? periodNumber,
  String? startTime,
  String? endTime,
  String? selectColor,
  }) {
    return TimeTableModel(
   selectClass: selectClass??   this.selectClass,
   dayName: dayName?? this.dayName,
   teacherName: teacherName?? this.teacherName,
   subjectName : subjectName?? this.subjectName,
   periodNumber: periodNumber?? this.periodNumber,
   startTime: startTime?? this.startTime,
   endTime: endTime?? this.endTime,
   selectColor: selectColor?? this.selectColor,
    );
  }
  Map<String, dynamic> toMap() {
     return <String, dynamic>{
   'selectClass': selectClass ?? "",
   'dayName': dayName?? "",
   'teacherName': teacherName?? "",
   'subjectName' : subjectName?? "",
   'periodNumber': periodNumber?? "",
   'startTime': startTime?? "",
   'endTime': endTime?? "",
   'selectColor': selectColor?? "",
  };
  }
   factory TimeTableModel.fromMap(Map<String, dynamic> map) {
    return TimeTableModel(
      selectClass: map['selectClass'] != null ? map['selectClass'] as String : "",
      dayName: map['dayName'] != null ? map['dayName'] as String : "",
      teacherName: map['teacherName'] != null ? map['teacherName'] as String : "",
      subjectName: map['subjectName'] != null ? map['subjectName'] as String : "",
      periodNumber: map['periodNumber'] != null ? map['periodNumber'] as String : "",
      startTime: map['startTime'] != null ? map['startTime'] as String : "",
      endTime: map['endTime'] != null ? map['endTime'] as String : "",
      selectColor: map['selectColor'] != null ? map['selectColor'] as String : "",
    );
   }

    String toJson() => json.encode(toMap());

    factory TimeTableModel.fromJson(String source) =>
      TimeTableModel.fromMap(json.decode(source) as Map<String, dynamic>);

      @override
  String toString() {
    return 'TimeTableModel(selectClass: $selectClass,dayName: $dayName, teacherName: $teacherName, subjectName: $subjectName, periodNumber: $periodNumber, startTime: $startTime, endTime: $endTime, selectColor: $selectColor, )';
  }

    @override
  bool operator ==(covariant TimeTableModel other) {
    if (identical(this, other)) return true;

    return other.selectClass == selectClass &&
        other.dayName == dayName &&
        other.teacherName == teacherName &&
        other.subjectName == subjectName &&
        other.periodNumber == periodNumber &&
        other.startTime == startTime &&
        other.endTime == endTime &&
        other.selectColor == selectColor ;
  }

   @override
  int get hashCode {
    return selectClass.hashCode ^
        dayName.hashCode ^
        teacherName.hashCode ^
        subjectName.hashCode ^
        periodNumber.hashCode ^
        startTime.hashCode ^
        endTime.hashCode ^
        selectColor.hashCode;
  }
}