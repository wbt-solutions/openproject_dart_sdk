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

// tests for WorkPackageModel
void main() {
  // final instance = WorkPackageModel();

  group('test WorkPackageModel', () {
    // Work package id
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // The version of the item as used for optimistic locking
    // int lockVersion
    test('to test the property `lockVersion`', () async {
      // TODO
    });

    // Work package subject
    // String subject
    test('to test the property `subject`', () async {
      // TODO
    });

    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // WorkPackageModelDescription description
    test('to test the property `description`', () async {
      // TODO
    });

    // If false (default) schedule automatically.
    // bool scheduleManually
    test('to test the property `scheduleManually`', () async {
      // TODO
    });

    // If true, the work package is in a readonly status so with the exception of the status, no other property can be altered.
    // bool readonly
    test('to test the property `readonly`', () async {
      // TODO
    });

    // Scheduled beginning of a work package
    // DateTime startDate
    test('to test the property `startDate`', () async {
      // TODO
    });

    // Scheduled end of a work package
    // DateTime dueDate
    test('to test the property `dueDate`', () async {
      // TODO
    });

    // Date on which a milestone is achieved
    // DateTime date
    test('to test the property `date`', () async {
      // TODO
    });

    // Similar to start date but is not set by a client but rather deduced by the work packages' descendants. If manual scheduleManually is active, the two dates can deviate.
    // DateTime derivedStartDate
    test('to test the property `derivedStartDate`', () async {
      // TODO
    });

    // Similar to due date but is not set by a client but rather deduced by the work packages' descendants. If manual scheduleManually is active, the two dates can deviate.
    // DateTime derivedDueDate
    test('to test the property `derivedDueDate`', () async {
      // TODO
    });

    // **(NOT IMPLEMENTED)** The amount of time in hours the work package needs to be completed. Not available for milestone type of work packages.
    // String duration
    test('to test the property `duration`', () async {
      // TODO
    });

    // Time a work package likely needs to be completed excluding its descendants
    // String estimatedTime
    test('to test the property `estimatedTime`', () async {
      // TODO
    });

    // Time a work package likely needs to be completed including its descendants
    // String derivedEstimatedTime
    test('to test the property `derivedEstimatedTime`', () async {
      // TODO
    });

    // **(NOT IMPLEMENTED)** When scheduling, whether or not to ignore the non working days being defined. A work package with the flag set to true will be allowed to be scheduled to a non working day.
    // bool ignoreNonWorkingDays
    test('to test the property `ignoreNonWorkingDays`', () async {
      // TODO
    });

    // The time booked for this work package by users working on it  # Conditions  **Permission** view time entries
    // String spentTime
    test('to test the property `spentTime`', () async {
      // TODO
    });

    // Amount of total completion for a work package
    // int percentageDone
    test('to test the property `percentageDone`', () async {
      // TODO
    });

    // Amount of total completion for a work package derived from itself and its descendant work packages
    // int derivedPercentageDone
    test('to test the property `derivedPercentageDone`', () async {
      // TODO
    });

    // Time of creation
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Time of the most recent change to the work package
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // WorkPackageModelLinks links
    test('to test the property `links`', () async {
      // TODO
    });


  });

}
