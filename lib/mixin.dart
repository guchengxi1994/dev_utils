import 'package:dev_utils/base_entity.dart';

mixin HttpMixin<T extends BaseEntity, E> {
  Future<E?> queryById(String url, {params, options, cancelToken});

  Future<List<E>?> queryMany(String url, {params, options, cancelToken});

  Future<bool> updateById(String url, {params, options, cancelToken});

  Future<bool> deleteById(String url, {params, options, cancelToken});

  Future<bool> create(T t);
}
