class Admins {
  String lastName;
  String firstName;
  String middleName;
  String city;
  String password;

  Admins(
  {
    required this.firstName,
    required this.lastName,
    required this.middleName,
    required this.city,
    required this.password
  }
      );
  factory Admins.fromJson(dynamic json) {
    return Admins(
      firstName: "${json['firstName']}",
      lastName: "${json['lastName']}",
      middleName: "${json['middleName']}",
      city: "${json['city']}",
      password: "${json['password']}",
    );
  }
  Map toJson() => {
    "firstName": firstName,
    "lastName": lastName,
    "middleName": middleName,
    "city": city,
    "password": password,
  };
}