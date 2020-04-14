class Car{
  String make, model;
  DateTime yearOfManf;
  Car({this.make, this.model, this.yearOfManf});

  factory Car.fromJson(Map<String, dynamic> parsedJson){
    return Car(
      make: parsedJson["make"] as String,
      model: parsedJson["model"] as String,
      yearOfManf: parsedJson["year"] as DateTime
    );
  }

}
