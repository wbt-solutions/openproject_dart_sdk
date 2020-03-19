import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for TypesApi
void main() {
  var instance = TypesApi();

  group('tests for TypesApi', () {
    // List types available in a project
    //
    // This endpoint lists the types that are *available* in a given project.
    //
    //Future<WPTypes> apiV3ProjectsProjectIdTypesGet(int projectId) async 
    test('test apiV3ProjectsProjectIdTypesGet', () async {
      // TODO
    });

    // List all Types
    //
    //Future<WPTypes> apiV3TypesGet() async 
    test('test apiV3TypesGet', () async {
      // TODO
    });

    // View Type
    //
    //Future<WPType> apiV3TypesIdGet(int id) async 
    test('test apiV3TypesIdGet', () async {
      // TODO
    });

  });
}
