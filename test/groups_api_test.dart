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


/// tests for GroupsApi
void main() {
  // final instance = GroupsApi();

  group('tests for GroupsApi', () {
    // Create group
    //
    // Creates a new group applying the attributes provided in the body.
    //
    //Future<GroupModel> createGroup({ GroupWriteModel groupWriteModel }) async
    test('test createGroup', () async {
      // TODO
    });

    // Delete group
    //
    // Deletes the group.
    //
    //Future deleteGroup(int id) async
    test('test deleteGroup', () async {
      // TODO
    });

    // Get group
    //
    // Fetches a group resource.
    //
    //Future<GroupModel> getGroup(int id) async
    test('test getGroup', () async {
      // TODO
    });

    // List groups
    //
    // Returns a collection of groups. The client can choose to filter the groups similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain groups, for which the requesting client has sufficient permissions (*view_members*, *manage_members*).
    //
    //Future<GroupCollectionModel> listGroups({ String sortBy, String select }) async
    test('test listGroups', () async {
      // TODO
    });

    // Update group
    //
    // Updates the given group by applying the attributes provided in the body.  Please note that the `members` array provided will override the existing set of members (similar to a PUT). A client thus has to provide the complete list of members the group is to have after the PATCH even if only one member is to be added.
    //
    //Future<GroupModel> updateGroup(int id, { GroupWriteModel groupWriteModel }) async
    test('test updateGroup', () async {
      // TODO
    });

  });
}
