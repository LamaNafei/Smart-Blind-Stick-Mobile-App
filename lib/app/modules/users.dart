class Users {
  String? usersId;

  Users(this.usersId);

  Users.fromMap(dynamic obj) {
    usersId = obj['id'];
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': usersId,
    };

    return map;
  }
}class Images {
  String? image;
  String? name;
  String? id;

  Images({required this.image,required this.name});

  Images.fromMap(dynamic obj) {
    image = obj['image'];
    name = obj['name'];
    id = obj['id'];
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'image': image,
      'name': name,
      'id': id,
    };

    return map;
  }
}
