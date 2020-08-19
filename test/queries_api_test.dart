import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for QueriesApi
void main() {
  var instance = QueriesApi();

  group('tests for QueriesApi', () {
    // View default query for project
    //
    // Same as [viewing an existing, persisted Query](#queries-query-get) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query. The query will already be scoped for the project.
    //
    //Future apiV3ProjectsIdQueriesDefaultGet(int id, { List<Map<String, Object>> filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, bool timelineVisible, bool showHierarchies }) async 
    test('test apiV3ProjectsIdQueriesDefaultGet', () async {
      // TODO
    });

    // View schema for project queries
    //
    // Retrieve the schema for project queries.
    //
    //Future apiV3ProjectsIdQueriesSchemaGet(int id) async 
    test('test apiV3ProjectsIdQueriesSchemaGet', () async {
      // TODO
    });

    // Available projects
    //
    // Gets a list of projects that are available as projects a query can be assigned to.
    //
    //Future apiV3QueriesAvailableProjectsGet() async 
    test('test apiV3QueriesAvailableProjectsGet', () async {
      // TODO
    });

    // View default query
    //
    // Same as [viewing an existing, persisted Query](#queries-query-get) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query.
    //
    //Future apiV3QueriesDefaultGet({ List<Map<String, Object>> filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, bool timelineVisible, String timelineZoomLevel, bool showHierarchies }) async 
    test('test apiV3QueriesDefaultGet', () async {
      // TODO
    });

    // Query Create Form
    //
    //Future apiV3QueriesFormPost() async 
    test('test apiV3QueriesFormPost', () async {
      // TODO
    });

    // List queries
    //
    // Returns a collection of queries. The collection can be filtered via query parameters similar to how work packages are filtered. Please note however, that the filters are applied to the queries and not to the work packages the queries in turn might return.
    //
    //Future apiV3QueriesGet({ List<Map<String, Object>> filters }) async 
    test('test apiV3QueriesGet', () async {
      // TODO
    });

    // Delete query
    //
    // Delete the query identified by the id parameter
    //
    //Future apiV3QueriesIdDelete(int id) async 
    test('test apiV3QueriesIdDelete', () async {
      // TODO
    });

    // View query
    //
    // Retreive an individual query as identified by the id parameter. Then end point accepts a number of parameters that can be used to override the resources' persisted parameters.
    //
    //Future apiV3QueriesIdGet(int id, { List<Map<String, Object>> filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, bool timelineVisible, String timelineLabels, bool showHierarchies }) async 
    test('test apiV3QueriesIdGet', () async {
      // TODO
    });

    // Edit Query
    //
    // When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.
    //
    //Future apiV3QueriesIdPatch(int id, { InlineObject2 inlineObject2 }) async 
    test('test apiV3QueriesIdPatch', () async {
      // TODO
    });

    // Star query
    //
    //Future apiV3QueriesIdStarPatch(int id) async 
    test('test apiV3QueriesIdStarPatch', () async {
      // TODO
    });

    // Unstar query
    //
    //Future apiV3QueriesIdUnstarPatch(int id) async 
    test('test apiV3QueriesIdUnstarPatch', () async {
      // TODO
    });

    // Create query
    //
    // When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Query can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
    //
    //Future apiV3QueriesPost() async 
    test('test apiV3QueriesPost', () async {
      // TODO
    });

    // View schema for global queries
    //
    // Retrieve the schema for global queries, those, that are not assigned to a project.
    //
    //Future apiV3QueriesSchemaGet() async 
    test('test apiV3QueriesSchemaGet', () async {
      // TODO
    });

  });
}
