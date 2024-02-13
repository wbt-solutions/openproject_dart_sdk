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


/// tests for ViewsApi
void main() {
  // final instance = ViewsApi();

  group('tests for ViewsApi', () {
    // Create view
    //
    // When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a View can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  There are different subtypes of `Views` (e.g. `Views::WorkPackagesTable`) with each having its own endpoint for creating that subtype e.g.  * `/api/v3/views/work_packages_table` for `Views::WorkPackagesTable` * `/api/v3/views/team_planner` for `Views::TeamPlanner` * `/api/v3/views/work_packages_calendar` for `Views::WorkPackagesCalendar`  **Not yet implemented** To get the list of available subtypes and by that the endpoints for creating a subtype, use the ```   /api/v3/views/schemas ``` endpoint.
    //
    //Future<Object> createViews(String id, { CreateViewsRequest createViewsRequest }) async
    test('test createViews', () async {
      // TODO
    });

    // List views
    //
    // Returns a collection of Views. The collection can be filtered via query parameters similar to how work packages are filtered.
    //
    //Future listViews({ String filters }) async
    test('test listViews', () async {
      // TODO
    });

    // View view
    //
    // 
    //
    //Future viewView(int id) async
    test('test viewView', () async {
      // TODO
    });

  });
}
