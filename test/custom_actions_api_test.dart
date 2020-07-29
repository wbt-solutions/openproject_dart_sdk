import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for CustomActionsApi
void main() {
  var instance = CustomActionsApi();

  group('tests for CustomActionsApi', () {
    // Execute custom action
    //
    // A POST to this end point executes the custom action on the WorkPackage provided in the payload. The altered WorkPackage will be returned. In order to avoid executing  the custom action unbeknown to a change that has already taken place, the client has to provide the WorkPackage's current lockVersion.
    //
    //Future apiV3CustomActionsCustomActionIdExecutePost(int customActionId, { InlineObject1 body }) async
    test('test apiV3CustomActionsCustomActionIdExecutePost', () async {
      // TODO
    });

    // View custom action
    //
    //Future apiV3CustomActionsCustomActionIdGet(int customActionId) async
    test('test apiV3CustomActionsCustomActionIdGet', () async {
      // TODO
    });

  });
}
