import 'package:dev_utils/api/base_entity.dart';
import 'package:dev_utils/dev_utils.dart';

class Req extends BaseRequest with HttpMixin {
  final int id;

  Req({required this.id});

  @override
  Future<bool> create() {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteById(String url,
      {params, options, cancelToken, Function? onError}) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  Future<List<BaseResponse>?> queryMany(String url,
      {params, options, cancelToken, Function? onError}) {
    // TODO: implement queryMany
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toJson() {
    return {"id": id};
  }

  @override
  Future<bool> updateById(String url,
      {params, options, cancelToken, Function? onError}) {
    // TODO: implement updateById
    throw UnimplementedError();
  }
}

void main(List<String> args) async {
  Req req = Req(id: 1);
  final r = await req.queryById("http://localhost:5000/testget");
  print(r?.toJson());
}
