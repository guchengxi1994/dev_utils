abstract class BaseRequest {
  Map<String, dynamic> toJson();
}

class BaseResponse {
  int? count;
  List? records;
  Object? data;

  BaseResponse.fromJson(Map<String, dynamic> json) {
    if (json['count'] != null) {
      count = json['count'];
      if (json['records'] != null) {
        records = [];
        json['records'].forEach((v) {
          records!.add(v);
        });
      }
    } else {
      data = json;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    if (records != null) {
      data['records'] = records!.map((v) => v).toList();
    }
    data['data'] = data;
    return data;
  }
}
