import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for VersionsApi
void main() {
  var instance = VersionsApi();

  group('tests for VersionsApi', () {
    // List versions available in a project
    //
    // This endpoint lists the versions that are *available* in a given project. Note that due to sharing this might be more than the versions *defined* by that project.
    //
    //Future<Versions> apiV3ProjectsProjectIdVersionsGet(int projectId) async 
    test('test apiV3ProjectsProjectIdVersionsGet', () async {
      // TODO
    });

    // List versions
    //
    // Returns a collection of versions. The client can choose to filter the versions similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain versions, for which the requesting client has sufficient permissions (*view_work_packages*).
    //
    //Future<Versions> apiV3VersionsGet({ String filters }) async 
    test('test apiV3VersionsGet', () async {
      // TODO
    });

    // View version
    //
    //Future<Version> apiV3VersionsIdGet(int id) async 
    test('test apiV3VersionsIdGet', () async {
      // TODO
    });

  });
}
