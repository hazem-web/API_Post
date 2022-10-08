

class Postmodel {
  Postmodel({
  required  this.firstName,
    required this.lastName,
  });

  String firstName;
  String lastName;

  factory Postmodel.fromJson(Map<String, dynamic> json) => Postmodel(
    firstName: json["firstName"],
    lastName: json["lastName"],
  );

  Map<String, dynamic> toJson() => {
    "firstName": firstName,
    "lastName": lastName,
  };
}
