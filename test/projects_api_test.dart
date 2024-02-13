//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ProjectsApi
void main() {
  // final instance = ProjectsApi();

  group('tests for ProjectsApi', () {
    // Create project
    //
    // Creates a new project, applying the attributes provided in the body.  You can use the form and schema to be retrieve the valid attribute values and by that be guided towards successful creation.
    //
    //Future<ProjectModel> createProject({ Object body }) async
    test('test createProject', () async {
      // TODO
    });

    // Create project copy
    //
    // 
    //
    //Future createProjectCopy(int id) async
    test('test createProjectCopy', () async {
      // TODO
    });

    // Delete Project
    //
    // Deletes the project permanently. As this is a lengthy process, the actual deletion is carried out asynchronously. So the project might exist well after the request has returned successfully. To prevent unwanted changes to the project scheduled for deletion, it is archived at once.
    //
    //Future deleteProject(int id) async
    test('test deleteProject', () async {
      // TODO
    });

    // List available parent project candidates
    //
    // Lists projects which can become parent to another project. Only sound candidates are returned. For instance a project cannot become parent of itself or it's children.  To specify the project for which a parent is queried for, the `of` parameter can be provided. If no `of` parameter is provided, a new project is assumed. Then, the check for the hierarchy is omitted as a new project cannot be part of a hierarchy yet.  Candidates can be filtered. Most commonly one will want to filter by name or identifier. You can do this through the `filters` parameter which works just like the work package index.  For instance to find all parent candidates with \"rollout\" in their name:  ``` ?filters=[{\"name_and_identifier\":{\"operator\":\"~\",\"values\":[\"rollout\"]}}] ```
    //
    //Future<Object> listAvailableParentProjectCandidates({ String filters, String of_, String sortBy }) async
    test('test listAvailableParentProjectCandidates', () async {
      // TODO
    });

    // List projects
    //
    // Returns a collection of projects. The collection can be filtered via query parameters similar to how work packages are filtered. In addition to the provided filter, the result set is always limited to only contain projects the client is allowed to see.
    //
    //Future<ProjectCollectionModel> listProjects({ String filters, String sortBy, String select }) async
    test('test listProjects', () async {
      // TODO
    });

    // List projects having version
    //
    // This endpoint lists the projects where the given version is available.  The projects returned depend on the sharing settings of the given version, but are also limited to the projects that the current user is allowed to see.
    //
    //Future<Object> listProjectsWithVersion(int id) async
    test('test listProjectsWithVersion', () async {
      // TODO
    });

    // Project copy form
    //
    // 
    //
    //Future projectCopyForm(int id) async
    test('test projectCopyForm', () async {
      // TODO
    });

    // Project create form
    //
    // 
    //
    //Future<Object> projectCreateForm({ Object body }) async
    test('test projectCreateForm', () async {
      // TODO
    });

    // Project update form
    //
    // 
    //
    //Future projectUpdateForm(int id, { Object body }) async
    test('test projectUpdateForm', () async {
      // TODO
    });

    // Update Project
    //
    // Updates the given project by applying the attributes provided in the body.
    //
    //Future<ProjectModel> updateProject(int id, { Object body }) async
    test('test updateProject', () async {
      // TODO
    });

    // View project
    //
    // 
    //
    //Future<ProjectModel> viewProject(int id) async
    test('test viewProject', () async {
      // TODO
    });

    // View project schema
    //
    // 
    //
    //Future<Object> viewProjectSchema() async
    test('test viewProjectSchema', () async {
      // TODO
    });

    // View project status
    //
    // 
    //
    //Future<Object> viewProjectStatus(String id) async
    test('test viewProjectStatus', () async {
      // TODO
    });

  });
}
