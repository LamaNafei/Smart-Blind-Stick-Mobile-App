class Data {
  String usersId = "";
  String image = "";
  String name = "";

  Data(this.usersId, this.image, this.name);

  Data.fromMap(dynamic obj) {
    usersId = obj['usersId'];
    name = obj['Name'];
    image = obj['Image'];
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'Name': name,
      'usersID': usersId,
      'Image':image,
    };

    return map;
  }
}