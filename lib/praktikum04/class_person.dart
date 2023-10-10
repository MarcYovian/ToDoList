class Person {
  String? _name, _place, _phone;

  Person(String name, String place, String phone) {
    _name = name;
    _place = place;
    _phone = phone;
  }

  // Getter untuk name
  String? get getName => _name;

  // Setter untuk name
  set setName(String? value) {
    _name = value;
  }

  // Getter untuk place
  String? get getPlace => _place;

  // Setter untuk place
  set setPlace(String? value) {
    _place = value;
  }

  // Getter untuk phone
  String? get getPhone => _phone;

  // Setter untuk phone
  set setPhone(String? value) {
    _phone = value;
  }
}
