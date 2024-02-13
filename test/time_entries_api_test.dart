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


/// tests for TimeEntriesApi
void main() {
  // final instance = TimeEntriesApi();

  group('tests for TimeEntriesApi', () {
    // Available projects for time entries
    //
    // Gets a list of projects in which a time entry can be created in or be assigned to on update. The list contains all projects in which the user issuing the request has the necessary permissions.
    //
    //Future<Object> availableProjectsForTimeEntries() async
    test('test availableProjectsForTimeEntries', () async {
      // TODO
    });

    // Create time entry
    //
    // Creates a new time entry applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a time entries' attributes and are accepted by the endpoint.
    //
    //Future<TimeEntryModel> createTimeEntry() async
    test('test createTimeEntry', () async {
      // TODO
    });

    // Delete time entry
    //
    // Permanently deletes the specified time entry.
    //
    //Future deleteTimeEntry(int id) async
    test('test deleteTimeEntry', () async {
      // TODO
    });

    // Get time entry
    //
    // Retrieves a single time entry identified by the given id.
    //
    //Future<TimeEntryModel> getTimeEntry(int id) async
    test('test getTimeEntry', () async {
      // TODO
    });

    // List time entries
    //
    // Lists time entries. The time entries returned depend on the filters provided and also on the permission of the requesting user.
    //
    //Future<TimeEntryCollectionModel> listTimeEntries({ int offset, int pageSize, String sortBy, String filters }) async
    test('test listTimeEntries', () async {
      // TODO
    });

    // Time entry create form
    //
    // 
    //
    //Future timeEntryCreateForm() async
    test('test timeEntryCreateForm', () async {
      // TODO
    });

    // Time entry update form
    //
    // 
    //
    //Future timeEntryUpdateForm(int id, int body) async
    test('test timeEntryUpdateForm', () async {
      // TODO
    });

    // update time entry
    //
    // Updates the given time entry by applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a time entries' attributes and are accepted by the endpoint.
    //
    //Future<TimeEntryModel> updateTimeEntry(int id) async
    test('test updateTimeEntry', () async {
      // TODO
    });

    // View time entry schema
    //
    // 
    //
    //Future<Object> viewTimeEntrySchema() async
    test('test viewTimeEntrySchema', () async {
      // TODO
    });

  });
}
