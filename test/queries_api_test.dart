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


/// tests for QueriesApi
void main() {
  // final instance = QueriesApi();

  group('tests for QueriesApi', () {
    // Available projects for query
    //
    // Gets a list of projects that are available as projects a query can be assigned to.
    //
    //Future<Object> availableProjectsForQuery() async
    test('test availableProjectsForQuery', () async {
      // TODO
    });

    // Create query
    //
    // When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Query can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
    //
    //Future<QueryModel> createQuery({ QueryCreateForm queryCreateForm }) async
    test('test createQuery', () async {
      // TODO
    });

    // Delete query
    //
    // Delete the query identified by the id parameter
    //
    //Future deleteQuery(int id) async
    test('test deleteQuery', () async {
      // TODO
    });

    // Edit Query
    //
    // When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.
    //
    //Future<QueryModel> editQuery(int id, { QueryUpdateForm queryUpdateForm }) async
    test('test editQuery', () async {
      // TODO
    });

    // List queries
    //
    // Returns a collection of queries. The collection can be filtered via query parameters similar to how work packages are filtered. Please note however, that the filters are applied to the queries and not to the work packages the queries in turn might return.
    //
    //Future<Object> listQueries({ String filters }) async
    test('test listQueries', () async {
      // TODO
    });

    // Query Create Form
    //
    // 
    //
    //Future queryCreateForm({ QueryCreateForm queryCreateForm }) async
    test('test queryCreateForm', () async {
      // TODO
    });

    // Query Update Form
    //
    // 
    //
    //Future queryUpdateForm(int id, { QueryUpdateForm queryUpdateForm }) async
    test('test queryUpdateForm', () async {
      // TODO
    });

    // Star query
    //
    // 
    //
    //Future<Object> starQuery(int id) async
    test('test starQuery', () async {
      // TODO
    });

    // Unstar query
    //
    // 
    //
    //Future<Object> unstarQuery(int id) async
    test('test unstarQuery', () async {
      // TODO
    });

    // View default query
    //
    // Same as [viewing an existing, persisted Query](https://www.openproject.org/docs/api/endpoints/queries/#list-queries) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query.
    //
    //Future<Object> viewDefaultQuery({ String filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, String timestamps, bool timelineVisible, String timelineZoomLevel, bool showHierarchies }) async
    test('test viewDefaultQuery', () async {
      // TODO
    });

    // View default query for project
    //
    // Same as [viewing an existing, persisted Query](https://www.openproject.org/docs/api/endpoints/queries/#list-queries) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query. The query will already be scoped for the project.
    //
    //Future<Object> viewDefaultQueryForProject(int id, { String filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, String timestamps, bool timelineVisible, bool showHierarchies }) async
    test('test viewDefaultQueryForProject', () async {
      // TODO
    });

    // View query
    //
    // Retrieve an individual query as identified by the id parameter. Then end point accepts a number of parameters that can be used to override the resources' persisted parameters.
    //
    //Future<QueryModel> viewQuery(int id, { String filters, int offset, int pageSize, String columns, String sortBy, String groupBy, bool showSums, String timestamps, bool timelineVisible, String timelineLabels, String highlightingMode, String highlightedAttributes, bool showHierarchies }) async
    test('test viewQuery', () async {
      // TODO
    });

    // View schema for global queries
    //
    // Retrieve the schema for global queries, those, that are not assigned to a project.
    //
    //Future<Object> viewSchemaForGlobalQueries() async
    test('test viewSchemaForGlobalQueries', () async {
      // TODO
    });

    // View schema for project queries
    //
    // Retrieve the schema for project queries.
    //
    //Future<Object> viewSchemaForProjectQueries(int id) async
    test('test viewSchemaForProjectQueries', () async {
      // TODO
    });

  });
}
