import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for ProjectsApi
void main() {
  var instance = ProjectsApi();

  group('tests for ProjectsApi', () {
    // List projects
    //
    // Returns a collection of projects. The collection can be filtered via query parameters similar to how work packages are filtered. In addition to the provided filter, the result set is always limited to only contain projects the client is allowed to see.
    //
    //Future<Projects> apiV3ProjectsGet({ String filters }) async 
    test('test apiV3ProjectsGet', () async {
      // TODO
    });

    // View project
    //
    //Future<Project> apiV3ProjectsIdGet(int id) async 
    test('test apiV3ProjectsIdGet', () async {
      // TODO
    });

    // List projects with version
    //
    // This endpoint lists the projects where the given version is available.  The projects returned depend on the sharing settings of the given version, but are also limited to the projects that the current user is allowed to see.
    //
    //Future apiV3VersionsIdProjectsGet(int id) async 
    test('test apiV3VersionsIdProjectsGet', () async {
      // TODO
    });

  });
}
