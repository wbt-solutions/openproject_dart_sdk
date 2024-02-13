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


/// tests for UsersApi
void main() {
  // final instance = UsersApi();

  group('tests for UsersApi', () {
    // Create User
    //
    // Creates a new user. Only administrators and users with manage_user global permission are allowed to do so. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.  Valid values for `status`:  1) \"active\" - In this case a password has to be provided in addition to the other attributes.  2) \"invited\" - In this case nothing but the email address is required. The rest is optional. An invitation will be sent to the user.
    //
    //Future<UserModel> createUser({ UserCreateModel userCreateModel }) async
    test('test createUser', () async {
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

    // List Users
    //
    // Lists users. Only administrators or users with any of the following can access this resource: 'manage_members', 'manage_user', 'share_work_packages'.
    //
    //Future<UserCollectionModel> listUsers({ int offset, int pageSize, String filters, String sortBy, String select }) async
    test('test listUsers', () async {
      // TODO
    });

    // Lock user
    //
    //Future<UserModel> lockUser(int id) async
    test('test lockUser', () async {
      // TODO
    });

    // Unlock user
    //
    //Future<UserModel> unlockUser(int id) async
    test('test unlockUser', () async {
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

    // User update form
    //
    // 
    //
    //Future userUpdateForm(int id) async
    test('test userUpdateForm', () async {
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

    // View user schema
    //
    // The schema response use two exemplary custom fields that extend the schema response. Depending on your instance and custom field configuration, the response will look somewhat different.
    //
    //Future<Object> viewUserSchema() async
    test('test viewUserSchema', () async {
      // TODO
    });

  });
}
