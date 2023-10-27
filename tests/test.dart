import 'package:dev_utils/base_entity.dart';
import 'package:dev_utils/dev_utils.dart';

class Req extends BaseEntity with HttpMixin {
  @override
  Future<bool> create(BaseEntity t) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteById(String url, {params, options, cancelToken}) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  Future queryById(String url, {params, options, cancelToken}) {
    // TODO: implement queryById
    throw UnimplementedError();
  }

  @override
  Future<List?> queryMany(String url, {params, options, cancelToken}) {
    // TODO: implement queryMany
    throw UnimplementedError();
  }

  @override
  Future<bool> updateById(String url, {params, options, cancelToken}) {
    // TODO: implement updateById
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
