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


/// tests for VersionsApi
void main() {
  // final instance = VersionsApi();

  group('tests for VersionsApi', () {
    // Available projects for versions
    //
    // Gets a list of projects in which a version can be created in. The list contains all projects in which the user issuing the request has the manage versions permissions.
    //
    //Future<Object> availableProjectsForVersions() async
    test('test availableProjectsForVersions', () async {
      // TODO
    });

    // Create version
    //
    // Creates a new version applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a version's attributes and are accepted by the endpoint.  You can use the form and schema to be retrieve the valid attribute values and by that be guided towards successful creation.
    //
    //Future<VersionModel> createVersion() async
    test('test createVersion', () async {
      // TODO
    });

    // Delete version
    //
    // Deletes the version. Work packages associated to the version will no longer be assigned to it.
    //
    //Future deleteVersion(int id) async
    test('test deleteVersion', () async {
      // TODO
    });

    // List versions
    //
    // Returns a collection of versions. The client can choose to filter the versions similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain versions, for which the requesting client has sufficient permissions (*view_work_packages*).
    //
    //Future<Object> listVersions({ String filters }) async
    test('test listVersions', () async {
      // TODO
    });

    // List versions available in a project
    //
    // This endpoint lists the versions that are *available* in a given project. Note that due to sharing this might be more than the versions *defined* by that project.
    //
    //Future<Object> listVersionsAvailableInAProject(int id) async
    test('test listVersionsAvailableInAProject', () async {
      // TODO
    });

    // Update Version
    //
    // Updates the given version by applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a version's attributes and are accepted by the endpoint.
    //
    //Future<VersionModel> updateVersion(int id) async
    test('test updateVersion', () async {
      // TODO
    });

    // Version create form
    //
    // 
    //
    //Future versionCreateForm() async
    test('test versionCreateForm', () async {
      // TODO
    });

    // Version update form
    //
    // 
    //
    //Future versionUpdateForm(int id) async
    test('test versionUpdateForm', () async {
      // TODO
    });

    // View version
    //
    // 
    //
    //Future<VersionModel> viewVersion(int id) async
    test('test viewVersion', () async {
      // TODO
    });

    // View version schema
    //
    // 
    //
    //Future<Object> viewVersionSchema() async
    test('test viewVersionSchema', () async {
      // TODO
    });

  });
}
