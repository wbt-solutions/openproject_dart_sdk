import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for NewsApi
void main() {
  var instance = NewsApi();

  group('tests for NewsApi', () {
    // list news
    //
    // Lists news. The news returned depend on the provided parameters and also on the requesting user’s permissions.
    //
    //Future<NewsList> apiV3NewsGet({ int offset, int pageSize, String sortBy, String filters }) async 
    test('test apiV3NewsGet', () async {
      // TODO
    });

    // view news
    //
    //Future<News> apiV3NewsIdGet(int id) async 
    test('test apiV3NewsIdGet', () async {
      // TODO
    });

  });
}
