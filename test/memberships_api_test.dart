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


/// tests for MembershipsApi
void main() {
  // final instance = MembershipsApi();

  group('tests for MembershipsApi', () {
    // Create a membership
    //
    // Creates a new membership applying the attributes provided in the body.  You can use the form and schema to retrieve the valid attribute values and by that be guided towards successful creation.  By providing a `notificationMessage` within the `_meta` block of the payload, the client can include a customized message to the user of the newly created membership. In case of a group, the message will be sent to every user belonging to the group.  By including `{ \"sendNotifications\": false }` within the `_meta` block of the payload, no notifications is send out at all.
    //
    //Future<MembershipReadModel> createMembership({ MembershipWriteModel membershipWriteModel }) async
    test('test createMembership', () async {
      // TODO
    });

    // Delete membership
    //
    // Deletes the membership.
    //
    //Future deleteMembership(int id) async
    test('test deleteMembership', () async {
      // TODO
    });

    // Form create membership
    //
    // Requests and validates the creation form for memberships. The request payload, if sent, is validated. The form endpoint itself does not create a membership.
    //
    //Future<MembershipFormModel> formCreateMembership({ MembershipWriteModel membershipWriteModel }) async
    test('test formCreateMembership', () async {
      // TODO
    });

    // Form update membership
    //
    // Requests and validates the update form for a membership identified by the given id. The request payload, if sent, is validated. The form endpoint itself does not change the membership.
    //
    //Future<MembershipReadModel> formUpdateMembership(int id, { MembershipWriteModel membershipWriteModel }) async
    test('test formUpdateMembership', () async {
      // TODO
    });

    // Get a membership
    //
    // Retrieves a membership resource identified by the given id.
    //
    //Future<MembershipReadModel> getMembership(int id) async
    test('test getMembership', () async {
      // TODO
    });

    // Schema membership
    //
    // Retrieves the schema for the membership resource object.
    //
    //Future<MembershipSchemaModel> getMembershipSchema() async
    test('test getMembershipSchema', () async {
      // TODO
    });

    // Available projects for memberships
    //
    // Gets a list of projects in which a membership can be created in. The list contains all projects in which the user issuing the request has the manage members permissions.
    //
    //Future<ProjectCollectionModel> getMembershipsAvailableProjects() async
    test('test getMembershipsAvailableProjects', () async {
      // TODO
    });

    // List memberships
    //
    // Returns a collection of memberships. The client can choose to filter the memberships similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain memberships, for which the requesting client has sufficient permissions (*view_members*, *manage_members*).
    //
    //Future<MembershipCollectionModel> listMemberships({ String filters, String sortBy }) async
    test('test listMemberships', () async {
      // TODO
    });

    // Update membership
    //
    // Updates the given membership by applying the attributes provided in the body.  By providing a `notificationMessage` within the `_meta` block of the payload, the client can include a customized message to the user of the updated membership. In case of a group, the message will be sent to every user belonging to the group.  By including `{ \"sendNotifications\": false }` within the `_meta` block of the payload, no notifications is send out at all.
    //
    //Future<MembershipReadModel> updateMembership(int id, { MembershipWriteModel membershipWriteModel }) async
    test('test updateMembership', () async {
      // TODO
    });

  });
}
