
class PartnerModel {
  int id = 0;
  String companyName = '';
  String? companyType = '';
  String? referal = '';
  String? identity;
  String? slogan = '';
  String? worksince = '';
  String? logo = '';
  String logoPublic = '';
  String? cellphone = '';
  String? phone = '';
  String? country = '';
  String? postalcode = '';
  int state = 0;
  String? city = '';
  String? neighborhood = '';
  String? address1 = '';
  String? number = '';
  String? complement = '';
  String? email = '';
  String? audio = '';
  String audioPublic = '';
  String? video = '';
  String videoPublic = '';
  String? googlemaps = '';
  List<dynamic> cities = [];
  List<dynamic> services = [];
  List<dynamic> professions = [];
  List<dynamic> images = [];
  List<dynamic> imagesPublic = [];
  String? plan = '';
  double ranking = 0.0;
  List<dynamic> categories = [];
  String? createdAt;
  String description = "";
  String? userUid;
  int analyticsView = 0;
  int analyticsCall = 0;
  int analyticsEmail = 0;
  int analyticsRequest = 0;
  int commented = 0;
  String? type;

  bool subscribed = false;

  String status = "";

  DateTime ultimoAcesso = DateTime.now();



  PartnerModel.fromJson(Map<String, dynamic> json) {
    for (var s in json['imagesPublic'] ?? []) {
      imagesPublic.add(s);
    }

    id = json['id'] ?? 0;
    audio = json['audio'];
    ultimoAcesso = json['ultimoAcesso']?.toDate() ?? DateTime.now();
    categories = json['categories'];
    cellphone = json['cellphone'];
    status = json['status'] ?? "E";
    cities = json['cities'];
    companyName = json['companyName'];
    companyType = json['companyType'];
    identity = json["identity"];
    createdAt = json['createdAt'];
    description = json['description'] ?? "";
    email = json['email'];
    googlemaps = json['googlemaps'];
    images = json['images'];
    subscribed = json['subscribed'] ?? false;

    logo = json['logo'];
    referal = json['referal'] ?? "";
    phone = json['phone'];
    country = json['country'];
    postalcode = json['postalCode'];
    state = json['state_id'] ?? 0;
    city = json['city_id'].toString();
    neighborhood = json['neighborhood'];
    address1 = json['address'];
    number = json['number'];
    complement = json['complement'];
    plan = json['plan'];
    professions = json['professions'];
    ranking = double.parse(json['ranking']?.toString() ?? "0");
    services = json['services'];
    slogan = json['slogan'];
    userUid = json['userUid'];
    video = json['video'];
    videoPublic = json['videoPublic'] ?? "";
    audioPublic = json['audioPublic'] ?? "";
    logoPublic = json['logoPublic'] ?? "";
    analyticsView = json['analyticsView'] == null ? 0 : json['analyticsView'];
    analyticsCall = json['analyticsCall'] == null ? 0 : json['analyticsCall'];
    analyticsEmail = json['analyticsEmail'] ?? 0;
    analyticsRequest =
        json['analyticsRequest'] == null ? 0 : json['analyticsRequest'];
    worksince = json['workSince'];
    commented = json['commented'] ?? 0;
    type = json['type'];
  }

  Map<String, dynamic> toFavorite(String uid) {
    return {
      'companyName': companyName,
      'slogan': slogan,
      'userUid': uid,
      'partnerId': id,
      'logo': logo,
      'logoPublic': logoPublic,
    };
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'companyName': companyName,
        'companyType': companyType,
        'identity': identity,
        'slogan': slogan,
        'worksince': worksince,
        'logo': logo,
        'cellphone': cellphone,
        'phone': phone,
        'email': email,
        'country': country,
        'postalcode': postalcode,
        'state': state,
        'city': city,
        'neighborhood': neighborhood,
        'status': status,
        'address1': address1,
        'number': number,
        'complement': complement,
        'googlemaps': googlemaps,
        'audio': audio,
        'video': video,
        'cities': cities,
        'ultimoAcesso': ultimoAcesso,
        'services': services,
        'professions': professions,
        'images': images,
        'plan': plan,
        'ranking': ranking,
        'categories': categories,
        'referal': referal,
        'createdAt': createdAt,
        'description': description,
        'userUid': userUid,
        'analyticsView': analyticsView,
        'analyticsCall': analyticsCall,
        'analyticsEmail': analyticsEmail,
        'analyticsRequest': analyticsRequest,
        'commented': commented,
        'type': type,
      };

  void updatePartner() {
    print(this.companyName);
  }
}

class PartnerComment {
  String username;
  String userUid;
  String comment;

  PartnerComment.fromJson(Map<String, dynamic> json)
      : username = json['username'],
        userUid = json['userUid'],
        comment = json['comment'];

  Map<String, dynamic> toJson() => {
        'username': username,
        'userUid': userUid,
        'comment': comment,
      };
}
