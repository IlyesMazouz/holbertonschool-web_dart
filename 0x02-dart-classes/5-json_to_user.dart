class User {
  int id = 0;
  String name = '';
  int age = 0;
  double height = 0;

  User({required int id, required String name, required int age, required double height}) {
    this.id = id;
    this.name = name;
    this.age = age;
    this.height = height;
  }


  Map toJson() {
    return {
      'id' : id,
      'name': name,
      'age': age,
      'height': height,
    };
  }


  static User fromJson(Map<dynamic, dynamic> userJson){
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }


  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height)";
  }
}
