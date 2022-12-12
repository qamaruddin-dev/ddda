class Employee {
  final int id;
  final String name;
  final int salary;
  final int age;
  final String profileUrl;
  final String status;
  final String message;

  Employee({
    required this.id,
    required this.name,
    required this.salary,
    required this.age,
    required this.profileUrl,
    required this.status,
    required this.message,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['data']['id'],
      name: json['data']['employee_name'],
      salary: json['data']['employee_salary'],
      age: json['data']['employee_age'],
      profileUrl: json['data']['profile_image'],
      status: json['status'],
      message: json['message'],
    );
  }
}
