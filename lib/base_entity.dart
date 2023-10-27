abstract class BaseRequest {
  Map<String, dynamic> toJson();
}

class BaseResponse {
  int? count;
  List? records;
  Object? obj;

  BaseResponse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    if (json['records'] != null) {
      records = [];
      json['records'].forEach((v) {
        records!.add(v);
      });
    }
    obj = json['obj'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    if (records != null) {
      data['records'] = records!.map((v) => v).toList();
    }
    data['obj'] = obj;
    return data;
  }
}
