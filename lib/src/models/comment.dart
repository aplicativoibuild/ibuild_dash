class CommentModel {
  String id = "";
  String comment = "";
  DateTime createdAt = DateTime.now();
  int partnerId = 0;
  double rank = 0;
  String username = "";
  String userUid = "";
  String userCityName = "";
  bool enable = false;
  DateTime? approvalAt;

  String imageUrl = "";

  CommentModel();

  Map<String, dynamic> toJson() => {
        'comment': comment,
        'createdAt': createdAt,
        'userUid': userUid,
        'partnerId': partnerId,
        'rank': rank,
        'username': username,
        'userCityName': userCityName,
        'approvalAt': null,
        'approvalIP': null,
        'approvalJustify': null,
        'approval_by': null,
        'createdIP': null,
        'enable': enable,
      };

  CommentModel.fromJson(Map<String, dynamic> json)
      : comment = json['comment'],
        enable = json['enable'] ?? false,
        createdAt = json['createdAt'].toDate(),
        userUid = json['userUid'],
        partnerId = json['partnerId'],
        rank = double.parse(json['rank'].toString()),
        username = json['username'],
        userCityName = json['userCityName'];
}
