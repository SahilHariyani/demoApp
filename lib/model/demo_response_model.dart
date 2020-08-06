class DemoResponse {
  String msg;
  String afafa;

  DemoResponse({this.msg,this.afafa});

  DemoResponse.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    afafa = json['afafa'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    return data;
  }
}
