class QRCodeDataModel {
  final String courseName;
  final int courseId;
  final String groupName;
  final int groupId;
  final int week;
  final double longitude;
  final double latitude;
  final DateTime time;

  QRCodeDataModel({
    required this.courseName,
    required this.courseId,
    required this.groupName,
    required this.groupId,
    required this.week,
    required this.longitude,
    required this.latitude,
    required this.time,
  });
}
