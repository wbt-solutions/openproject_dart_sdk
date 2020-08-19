import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for RelationsApi
void main() {
  var instance = RelationsApi();

  group('tests for RelationsApi', () {
    // List Relations
    //
    // Lists all relations according to the given (optional, logically conjunctive) filters and ordered by ID. The response only includes relations between work packages which the user is allowed to see.
    //
    //Future apiV3RelationsGet({ String filters, String sortBy }) async 
    test('test apiV3RelationsGet', () async {
      // TODO
    });

    // Delete Relation
    //
    // Deletes the relation.
    //
    //Future apiV3RelationsIdDelete(int id) async 
    test('test apiV3RelationsIdDelete', () async {
      // TODO
    });

    // Relation edit form
    //
    //Future apiV3RelationsIdFormPost(int id) async 
    test('test apiV3RelationsIdFormPost', () async {
      // TODO
    });

    // View Relation
    //
    //Future apiV3RelationsIdGet(int id) async 
    test('test apiV3RelationsIdGet', () async {
      // TODO
    });

    // Edit Relation
    //
    // When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. It is only allowed to provide properties or links supporting the **write** operation.  Note that changing the `type` of a relation invariably also changes the respective `reverseType` as well as the \"name\" of it. The returned Relation object will reflect that change. For instance if you change a Relation's `type` to \"follows\" then the `reverseType` will be changed to `precedes`.
    //
    //Future apiV3RelationsIdPatch(int id) async 
    test('test apiV3RelationsIdPatch', () async {
      // TODO
    });

    // View relation schema
    //
    //Future apiV3RelationsSchemaGet() async 
    test('test apiV3RelationsSchemaGet', () async {
      // TODO
    });

    // View relation schema for type
    //
    //Future apiV3RelationsSchemaTypeGet(String type) async 
    test('test apiV3RelationsSchemaTypeGet', () async {
      // TODO
    });

  });
}
