//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PrincipalsApi
void main() {
  // final instance = PrincipalsApi();

  group('tests for PrincipalsApi', () {
    // Create placeholder user
    //
    // Creates a new placeholder user. Only administrators and users with `manage_placeholder_user` global permission are allowed to do so. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.
    //
    //Future<PlaceholderUserModel> createPlaceholderUser({ PlaceholderUserCreateModel placeholderUserCreateModel }) async
    test('test createPlaceholderUser', () async {
      // TODO
    });

    // Create User
    //
    // Creates a new user. Only administrators and users with manage_user global permission are allowed to do so. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.  Valid values for `status`:  1) \"active\" - In this case a password has to be provided in addition to the other attributes.  2) \"invited\" - In this case nothing but the email address is required. The rest is optional. An invitation will be sent to the user.
    //
    //Future<UserModel> createUser({ UserCreateModel userCreateModel }) async
    test('test createUser', () async {
      // TODO
    });

    // Delete placeholder user
    //
    // Set the specified placeholder user to deleted status.
    //
    //Future deletePlaceholderUser(int id) async
    test('test deletePlaceholderUser', () async {
      // TODO
    });

    // Delete user
    //
    // Permanently deletes the specified user account.
    //
    //Future deleteUser(int id) async
    test('test deleteUser', () async {
      // TODO
    });

    // List placehoder users
    //
    // List all placeholder users. This can only be accessed if the requesting user has the global permission `manage_placeholder_user` or `manage_members` in any project.
    //
    //Future<PrincipalCollectionModel> listPlaceholderUsers({ String filters, String select }) async
    test('test listPlaceholderUsers', () async {
      // TODO
    });

    // List principals
    //
    // List all principals. The client can choose to filter the principals similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain principals who are members in projects the client is allowed to see.
    //
    //Future<PrincipalCollectionModel> listPrincipals({ String filters, String select }) async
    test('test listPrincipals', () async {
      // TODO
    });

    // List Users
    //
    // Lists users. Only administrators or users with any of the following can access this resource:  - `manage_members` - `manage_user` - `share_work_packages`
    //
    //Future<UserCollectionModel> listUsers({ int offset, int pageSize, String filters, String sortBy, String select }) async
    test('test listUsers', () async {
      // TODO
    });

    // Update placeholder user
    //
    // Updates the placeholder user's writable attributes. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.
    //
    //Future<PlaceholderUserModel> updatePlaceholderUser(int id, { PlaceholderUserCreateModel placeholderUserCreateModel }) async
    test('test updatePlaceholderUser', () async {
      // TODO
    });

    // Update user
    //
    // Updates the user's writable attributes. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.
    //
    //Future<UserModel> updateUser(int id, { UserCreateModel userCreateModel }) async
    test('test updateUser', () async {
      // TODO
    });

    // View placeholder user
    //
    // Return the placeholder user resource.
    //
    //Future<PlaceholderUserModel> viewPlaceholderUser(String id) async
    test('test viewPlaceholderUser', () async {
      // TODO
    });

    // View user
    //
    // 
    //
    //Future<UserModel> viewUser(String id) async
    test('test viewUser', () async {
      // TODO
    });

  });
}
