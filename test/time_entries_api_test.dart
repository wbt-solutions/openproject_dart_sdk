import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for TimeEntriesApi
void main() {
  var instance = TimeEntriesApi();

  group('tests for TimeEntriesApi', () {
    // List Time entries
    //
    // Lists time entries. The time entries returned depend on the filters provided and also on the permission of the requesting user.
    //
    //Future<TimeEntries> apiV3TimeEntriesGet({ int offset, int pageSize, String filters }) async 
    test('test apiV3TimeEntriesGet', () async {
      // TODO
    });

    // View time entry
    //
    //Future<TimeEntry> apiV3TimeEntriesIdGet(int id) async 
    test('test apiV3TimeEntriesIdGet', () async {
      // TODO
    });

  });
}
