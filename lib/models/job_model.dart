class JobModel {
  final String title;
  final String description;
  final String quantity;
  final String status;
  final String date;

  JobModel({
    required this.title,
    required this.description,
    required this.quantity,
    required this.status,
    required this.date,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) {
    return JobModel(
      title: json['title'],
      description: json['description'],
      quantity: json['quantity'],
      status: json['status'],
      date: json['date'],
    );
  }
}
