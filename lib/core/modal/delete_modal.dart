class DeleteResponse {
  int? response;

  DeleteResponse({this.response});

  DeleteResponse.fromJson(Map<String, dynamic> json) {
    response = json['response'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response'] = this.response;
    return data;
  }
}
