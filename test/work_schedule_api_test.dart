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


/// tests for WorkScheduleApi
void main() {
  // final instance = WorkScheduleApi();

  group('tests for WorkScheduleApi', () {
    // Creates a non-working day (NOT IMPLEMENTED)
    //
    // **(NOT IMPLEMENTED)** Marks a day as being a non-working day.  Note: creating a non-working day will not affect the start and finish dates of work packages but will affect their duration.
    //
    //Future<NonWorkingDayModel> createNonWorkingDay({ NonWorkingDayModel nonWorkingDayModel }) async
    test('test createNonWorkingDay', () async {
      // TODO
    });

    // Removes a non-working day (NOT IMPLEMENTED)
    //
    // **(NOT IMPLEMENTED)** Removes the non-working day at the given date.  Note: deleting a non-working day will not affect the start and finish dates of work packages but will affect their duration.
    //
    //Future deleteNonWorkingDay(DateTime date) async
    test('test deleteNonWorkingDay', () async {
      // TODO
    });

    // Lists days
    //
    // Lists days information for a given date interval.  All days from the beginning of current month to the end of following month are returned by default.
    //
    //Future<DayCollectionModel> listDays({ String filters }) async
    test('test listDays', () async {
      // TODO
    });

    // Lists all non working days
    //
    // Lists all one-time non working days, such as holidays. It does not lists the non working weekdays, such as each Saturday, Sunday. For listing the weekends, the `/api/v3/days` endpoint should be used.  All days from current year are returned by default.
    //
    //Future<NonWorkingDayCollectionModel> listNonWorkingDays({ String filters }) async
    test('test listNonWorkingDays', () async {
      // TODO
    });

    // Lists week days
    //
    // Lists week days with work schedule information.
    //
    //Future<WeekDayCollectionModel> listWeekDays() async
    test('test listWeekDays', () async {
      // TODO
    });

    // Update a non-working day attributes (NOT IMPLEMENTED)
    //
    // **(NOT IMPLEMENTED)** Update the non-working day information for a given date.
    //
    //Future<NonWorkingDayModel> updateNonWorkingDay(DateTime date, { NonWorkingDayModel nonWorkingDayModel }) async
    test('test updateNonWorkingDay', () async {
      // TODO
    });

    // Update a week day attributes (NOT IMPLEMENTED)
    //
    // **(NOT IMPLEMENTED)** Makes a week day a working or non-working day.  Note: changing a week day working attribute will not affect the start and finish dates of work packages but will affect their duration attribute.
    //
    //Future<WeekDayModel> updateWeekDay(int day, { WeekDayWriteModel weekDayWriteModel }) async
    test('test updateWeekDay', () async {
      // TODO
    });

    // Update week days (NOT IMPLEMENTED)
    //
    // **(NOT IMPLEMENTED)** Update multiple week days with work schedule information.
    //
    //Future<WeekDayCollectionModel> updateWeekDays({ WeekDayCollectionWriteModel weekDayCollectionWriteModel }) async
    test('test updateWeekDays', () async {
      // TODO
    });

    // View day
    //
    // View the day information for a given date.
    //
    //Future<DayModel> viewDay(DateTime date) async
    test('test viewDay', () async {
      // TODO
    });

    // View a non-working day
    //
    // Returns the non-working day information for a given date.
    //
    //Future<NonWorkingDayModel> viewNonWorkingDay(DateTime date) async
    test('test viewNonWorkingDay', () async {
      // TODO
    });

    // View a week day
    //
    // View a week day and its attributes.
    //
    //Future<WeekDayModel> viewWeekDay(int day) async
    test('test viewWeekDay', () async {
      // TODO
    });

  });
}
