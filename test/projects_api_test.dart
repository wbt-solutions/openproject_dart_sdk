import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ProjectsApi
void main() {
  var instance = ProjectsApi();

  group('tests for ProjectsApi', () {
    // list available parent project candidates
    //
    // Lists projects which can become parent to another project. Only sound candidates are returned. For instance a project cannot become parent of itself or it’s children.
    //
    //Future<Projects> apiV3ProjectsAvailableParentProjectsGet({ List<Map<String, Object>> filters, String of_, String sortBy }) async 
    test('test apiV3ProjectsAvailableParentProjectsGet', () async {
      // TODO
    });

    // List projects
    //
    // Returns a collection of projects. The collection can be filtered via query parameters similar to how work packages are filtered. In addition to the provided filter, the result set is always limited to only contain projects the client is allowed to see.
    //
    //Future<Projects> apiV3ProjectsGet({ List<Map<String, Object>> filters, String sortBy }) async 
    test('test apiV3ProjectsGet', () async {
      // TODO
    });

    // delete project
    //
    // Deletes the project permanently. As this is a lengthy process, the actual deletion is carried out asynchronously. So the project might exist well after the request has returned successfully. To prevent unwanted changes to the project scheduled for deletion, it is archived at once.
    //
    //Future apiV3ProjectsIdDelete(int id) async 
    test('test apiV3ProjectsIdDelete', () async {
      // TODO
    });

    // View project
    //
    //Future<Project> apiV3ProjectsIdGet(int id) async 
    test('test apiV3ProjectsIdGet', () async {
      // TODO
    });

    // update project
    //
    // Updates the given project by applying the attributes provided in the body.
    //
    //Future<Project> apiV3ProjectsIdPatch(int id, Project project) async 
    test('test apiV3ProjectsIdPatch', () async {
      // TODO
    });

    // create project
    //
    // Creates a new project, applying the attributes provided in the body. You can use the form and schema to be retrieve the valid attribute values and by that be guided towards successful creation.
    //
    //Future<Project> apiV3ProjectsPost(Project project, { String filters, String sortBy }) async 
    test('test apiV3ProjectsPost', () async {
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
