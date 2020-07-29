import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PrincipalsApi
void main() {
  var instance = PrincipalsApi();

  group('tests for PrincipalsApi', () {
    // List principals
    //
    // List all principals. The client can choose to filter the principals similar to how WorkPackages are filtered. In addition to the provided filters, the server will reduce the result set to only contain principals who are members in projects the client is allowed to see.
    //
    //Future apiV3PrincipalsGet({ String filters }) async
    test('test apiV3PrincipalsGet', () async {
      // TODO
    });

  });
}
