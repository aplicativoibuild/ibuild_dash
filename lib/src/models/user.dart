

class UserModel {
  late String uid;
  late String userUid;
  late String name;
  late String lastname;
  late String email;
  late int birthday;
  late String countryCellphone;
  late String dddCellphone;
  late String cellphone;
  String cityId = "";
  int stateId = 0;
  String cityName = "";
  late String gender;
  late String profession;
  late String description;
  var picProfile = "";
  List<String> token = [];
  var favs = <int>[];
  var isPartner = false;
  var isPendingPartner = false;
  var isDisapprovedPartner = false;
  var subscribed = false;
  var freeRequestsDone = false;

  List<String> topics = [];

  String get fullPhone => '$dddCellphone$cellphone';
  String get fullName => '$name $lastname';

  // "U" - Not updated, "N" - Has no partner, "Y" - has partner
  String hasPartner = "U";

  bool loading = true;

  // late Subscription subscription;

  UserModel.fromJson(Map<String, dynamic> json) {
    uid = json['uid'] ?? "";
    userUid = json['uid'] ?? "";
    name = json['name'] ?? "";
    subscribed = json['subscribed'] ?? false;
    lastname = json['lastname'] ?? "";
    email = json['email'] ?? "";
    stateId = json['stateId'] ?? 0;
    birthday = json['birthday'] ?? 0;
    countryCellphone = json['countryCellphone'] ?? "";
    dddCellphone = json['dddCellphone'] ?? "";
    cellphone = json['cellphone'] ?? "";
    cityId = json['cityId'] ?? "";
    cityName = json['cityName'] ?? "";
    gender = json['gender'] ?? "";
    profession = json['profession'] ?? "";
    description = json['description'] ?? "";
    picProfile = json['picProfile'] ?? "";

    if (json['token'] != null && !(json['token'] is String)) {
      for (var s in json['token']) {
        token.add(s);
      }
    }

    if (json['topics'] != null && !(json['topics'] is String)) {
      for (var s in json['topics']) {
        topics.add(s);
      }
    }
  }



  UserModel.newUser(String _email, String _uid) {
    uid = _uid;
    userUid = _uid;
    name = "";
    lastname = "";
    email = _email;
    birthday = 0;
    countryCellphone = "";
    dddCellphone = "";
    cellphone = "";
    cityId = "";
    cityName = "";
    gender = "";
    profession = "";
    description = "";
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'name': name,
      'stateId': stateId,
      'subscribed': subscribed,
      'lastname': lastname,
      'email': email,
      'birthday': birthday,
      'countryCellphone': countryCellphone,
      'cellphone': cellphone,
      'dddCellphone': dddCellphone,
      'cityId': cityId,
      'cityName': cityName,
      'gender': gender,
      'profession': profession,
      'description': description,
      'picProfile': picProfile,
      'token': token,
      'topics': topics,
    };
  }

  UserModel({
    required this.uid,
    required this.name,
    required this.lastname,
    required this.email,
    required this.birthday,
    required this.countryCellphone,
    required this.dddCellphone,
    required this.cellphone,
    required this.cityId,
    required this.cityName,
    required this.gender,
    required this.profession,
    required this.description,
    required this.picProfile,
    required this.token,
  });
}
