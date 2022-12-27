class FetchupResponse {
  String? id;
  String? name;
  String? emailId;
  String? password;
  String? phoneNumber;

  FetchupResponse(
      {this.id, this.name, this.emailId, this.password, this.phoneNumber});

  FetchupResponse.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    emailId = json['EmailId'];
    password = json['password'];
    phoneNumber = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['EmailId'] = this.emailId;
    data['password'] = this.password;
    data['phone'] = this.phoneNumber;
    return data;
  }
}
