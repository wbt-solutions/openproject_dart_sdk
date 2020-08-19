import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for UsersApi
void main() {
  var instance = UsersApi();

  group('tests for UsersApi', () {
    // List Users
    //
    // Lists users. Only administrators have permission to do this.
    //
    //Future<Users> apiV3UsersGet({ int offset, int pageSize, String filters, String sortBy }) async 
    test('test apiV3UsersGet', () async {
      // TODO
    });

    // Delete user
    //
    // Permanently deletes the specified user account.
    //
    //Future apiV3UsersIdDelete(int id) async 
    test('test apiV3UsersIdDelete', () async {
      // TODO
    });

    // View user
    //
    //Future<User> apiV3UsersIdGet(String id) async 
    test('test apiV3UsersIdGet', () async {
      // TODO
    });

    // Remove Lock
    //
    //Future apiV3UsersIdLockDelete(int id) async 
    test('test apiV3UsersIdLockDelete', () async {
      // TODO
    });

    // Set Lock
    //
    //Future apiV3UsersIdLockPost(int id) async 
    test('test apiV3UsersIdLockPost', () async {
      // TODO
    });

    // Update user
    //
    // Updates the user's writable attributes. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.
    //
    //Future apiV3UsersIdPatch(int id, { InlineObject4 inlineObject4 }) async 
    test('test apiV3UsersIdPatch', () async {
      // TODO
    });

    // Create User
    //
    // Creates a new user. Only administrators have permission to do so. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.  Valid values for `status`:  1) \"active\" - In this case a password has to be provided in addition to the other attributes. 2) \"invited\" - In this case nothing but the email address is required. The rest is optional. An invitation will be sent to the user.
    //
    //Future apiV3UsersPost({ InlineObject5 inlineObject5 }) async 
    test('test apiV3UsersPost', () async {
      // TODO
    });

  });
}
