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


/// tests for RelationsApi
void main() {
  // final instance = RelationsApi();

  group('tests for RelationsApi', () {
    // Delete Relation
    //
    // Deletes the relation.
    //
    //Future deleteRelation(int id) async
    test('test deleteRelation', () async {
      // TODO
    });

    // Edit Relation
    //
    // When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. It is only allowed to provide properties or links supporting the **write** operation.  Note that changing the `type` of a relation invariably also changes the respective `reverseType` as well as the \"name\" of it. The returned Relation object will reflect that change. For instance if you change a Relation's `type` to \"follows\" then the `reverseType` will be changed to `precedes`.
    //
    //Future<RelationModel> editRelation(int id) async
    test('test editRelation', () async {
      // TODO
    });

    // List Relations
    //
    // Lists all relations according to the given (optional, logically conjunctive) filters and ordered by ID. The response only includes relations between work packages which the user is allowed to see.
    //
    //Future<Object> listRelations({ String filters, String sortBy }) async
    test('test listRelations', () async {
      // TODO
    });

    // Relation edit form
    //
    // 
    //
    //Future<Object> relationEditForm(int id) async
    test('test relationEditForm', () async {
      // TODO
    });

    // View Relation
    //
    // 
    //
    //Future<RelationModel> viewRelation(int id) async
    test('test viewRelation', () async {
      // TODO
    });

    // View relation schema
    //
    // 
    //
    //Future<Object> viewRelationSchema() async
    test('test viewRelationSchema', () async {
      // TODO
    });

    // View relation schema for type
    //
    // 
    //
    //Future<Object> viewRelationSchemaForType(String type) async
    test('test viewRelationSchemaForType', () async {
      // TODO
    });

  });
}
