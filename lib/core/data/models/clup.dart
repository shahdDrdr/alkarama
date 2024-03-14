class Clup {
  String? uuid;
  String? name;
  String? logo;
  String? addressOfClub;
  String? sportName;

  Clup({this.uuid, this.name, this.logo, this.addressOfClub, this.sportName});

  Clup.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    logo = json['logo'];
    addressOfClub = json['AddressOfClub'];
    sportName = json['SportName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['name'] = this.name;
    data['logo'] = this.logo;
    data['AddressOfClub'] = this.addressOfClub;
    data['SportName'] = this.sportName;
    return data;
  }
}