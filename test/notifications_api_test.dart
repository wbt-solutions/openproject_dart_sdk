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


/// tests for NotificationsApi
void main() {
  // final instance = NotificationsApi();

  group('tests for NotificationsApi', () {
    // Get notification collection
    //
    // Returns the collection of available in-app notifications. The notifications returned depend on the provided parameters and also on the requesting user's permissions.  Contrary to most collections, this one also links to and embeds schemas for the `details` properties of the notifications returned. This is an optimization. Clients will receive the information necessary to display the various types of details that a notification can carry.
    //
    //Future<NotificationCollectionModel> listNotifications({ int offset, int pageSize, String sortBy, String groupBy, String filters }) async
    test('test listNotifications', () async {
      // TODO
    });

    // Read notification
    //
    // Marks the given notification as read.
    //
    //Future readNotification(int id) async
    test('test readNotification', () async {
      // TODO
    });

    // Read all notifications
    //
    // Marks the whole notification collection as read. The collection contains only elements the authenticated user can see, and can be further reduced with filters.
    //
    //Future readNotifications({ String filters }) async
    test('test readNotifications', () async {
      // TODO
    });

    // Unread notification
    //
    // Marks the given notification as unread.
    //
    //Future unreadNotification(int id) async
    test('test unreadNotification', () async {
      // TODO
    });

    // Unread all notifications
    //
    // Marks the whole notification collection as unread. The collection contains only elements the authenticated user can see, and can be further reduced with filters.
    //
    //Future unreadNotifications({ String filters }) async
    test('test unreadNotifications', () async {
      // TODO
    });

    // Get the notification
    //
    // Returns the notification identified by the notification id.
    //
    //Future<NotificationModel> viewNotification(int id) async
    test('test viewNotification', () async {
      // TODO
    });

    // Get a notification detail
    //
    // Returns an individual detail of a notification identified by the notification id and the id of the detail.
    //
    //Future<ValuesPropertyModel> viewNotificationDetail(int notificationId, int id) async
    test('test viewNotificationDetail', () async {
      // TODO
    });

  });
}
