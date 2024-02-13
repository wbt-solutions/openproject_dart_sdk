//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class NotificationsApi {
  NotificationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get notification collection
  ///
  /// Returns the collection of available in-app notifications. The notifications returned depend on the provided parameters and also on the requesting user's permissions.  Contrary to most collections, this one also links to and embeds schemas for the `details` properties of the notifications returned. This is an optimization. Clients will receive the information necessary to display the various types of details that a notification can carry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Page number inside the requested collection.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key  + reason: Sort by notification reason  + readIAN: Sort by read status
  ///
  /// * [String] groupBy:
  ///   string specifying group_by criteria.  + reason: Group by notification reason  + project: Sort by associated project
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: Filter by primary key  + project: Filter by the project the notification was created in  + readIAN: Filter by read status  + reason: Filter by the reason, e.g. 'mentioned' or 'assigned' the notification was created because of  + resourceId: Filter by the id of the resource the notification was created for. Ideally used together with the `resourceType` filter.  + resourceType: Filter by the type of the resource the notification was created for. Ideally used together with the `resourceId` filter.
  Future<Response> listNotificationsWithHttpInfo({ int? offset, int? pageSize, String? sortBy, String? groupBy, String? filters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/notifications';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
    }
    if (groupBy != null) {
      queryParams.addAll(_queryParams('', 'groupBy', groupBy));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get notification collection
  ///
  /// Returns the collection of available in-app notifications. The notifications returned depend on the provided parameters and also on the requesting user's permissions.  Contrary to most collections, this one also links to and embeds schemas for the `details` properties of the notifications returned. This is an optimization. Clients will receive the information necessary to display the various types of details that a notification can carry.
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Page number inside the requested collection.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key  + reason: Sort by notification reason  + readIAN: Sort by read status
  ///
  /// * [String] groupBy:
  ///   string specifying group_by criteria.  + reason: Group by notification reason  + project: Sort by associated project
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: Filter by primary key  + project: Filter by the project the notification was created in  + readIAN: Filter by read status  + reason: Filter by the reason, e.g. 'mentioned' or 'assigned' the notification was created because of  + resourceId: Filter by the id of the resource the notification was created for. Ideally used together with the `resourceType` filter.  + resourceType: Filter by the type of the resource the notification was created for. Ideally used together with the `resourceId` filter.
  Future<NotificationCollectionModel?> listNotifications({ int? offset, int? pageSize, String? sortBy, String? groupBy, String? filters, }) async {
    final response = await listNotificationsWithHttpInfo( offset: offset, pageSize: pageSize, sortBy: sortBy, groupBy: groupBy, filters: filters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationCollectionModel',) as NotificationCollectionModel;
    
    }
    return null;
  }

  /// Read notification
  ///
  /// Marks the given notification as read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   notification id
  Future<Response> readNotificationWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/notifications/{id}/read_ian'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Read notification
  ///
  /// Marks the given notification as read.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   notification id
  Future<void> readNotification(int id,) async {
    final response = await readNotificationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read all notifications
  ///
  /// Marks the whole notification collection as read. The collection contains only elements the authenticated user can see, and can be further reduced with filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: Filter by primary key  + project: Filter by the project the notification was created in  + reason: Filter by the reason, e.g. 'mentioned' or 'assigned' the notification was created because of  + resourceId: Filter by the id of the resource the notification was created for. Ideally used together with the   `resourceType` filter.  + resourceType: Filter by the type of the resource the notification was created for. Ideally used together with   the `resourceId` filter.
  Future<Response> readNotificationsWithHttpInfo({ String? filters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/notifications/read_ian';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Read all notifications
  ///
  /// Marks the whole notification collection as read. The collection contains only elements the authenticated user can see, and can be further reduced with filters.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: Filter by primary key  + project: Filter by the project the notification was created in  + reason: Filter by the reason, e.g. 'mentioned' or 'assigned' the notification was created because of  + resourceId: Filter by the id of the resource the notification was created for. Ideally used together with the   `resourceType` filter.  + resourceType: Filter by the type of the resource the notification was created for. Ideally used together with   the `resourceId` filter.
  Future<void> readNotifications({ String? filters, }) async {
    final response = await readNotificationsWithHttpInfo( filters: filters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Unread notification
  ///
  /// Marks the given notification as unread.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   notification id
  Future<Response> unreadNotificationWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/notifications/{id}/unread_ian'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Unread notification
  ///
  /// Marks the given notification as unread.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   notification id
  Future<void> unreadNotification(int id,) async {
    final response = await unreadNotificationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Unread all notifications
  ///
  /// Marks the whole notification collection as unread. The collection contains only elements the authenticated user can see, and can be further reduced with filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: Filter by primary key  + project: Filter by the project the notification was created in  + reason: Filter by the reason, e.g. 'mentioned' or 'assigned' the notification was created because of  + resourceId: Filter by the id of the resource the notification was created for. Ideally used together with the   `resourceType` filter.  + resourceType: Filter by the type of the resource the notification was created for. Ideally used together with   the `resourceId` filter.
  Future<Response> unreadNotificationsWithHttpInfo({ String? filters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/notifications/unread_ian';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Unread all notifications
  ///
  /// Marks the whole notification collection as unread. The collection contains only elements the authenticated user can see, and can be further reduced with filters.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: Filter by primary key  + project: Filter by the project the notification was created in  + reason: Filter by the reason, e.g. 'mentioned' or 'assigned' the notification was created because of  + resourceId: Filter by the id of the resource the notification was created for. Ideally used together with the   `resourceType` filter.  + resourceType: Filter by the type of the resource the notification was created for. Ideally used together with   the `resourceId` filter.
  Future<void> unreadNotifications({ String? filters, }) async {
    final response = await unreadNotificationsWithHttpInfo( filters: filters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get the notification
  ///
  /// Returns the notification identified by the notification id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   notification id
  Future<Response> viewNotificationWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/notifications/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the notification
  ///
  /// Returns the notification identified by the notification id.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   notification id
  Future<NotificationModel?> viewNotification(int id,) async {
    final response = await viewNotificationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationModel',) as NotificationModel;
    
    }
    return null;
  }

  /// Get a notification detail
  ///
  /// Returns an individual detail of a notification identified by the notification id and the id of the detail.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] notificationId (required):
  ///   notification id
  ///
  /// * [int] id (required):
  ///   detail id
  Future<Response> viewNotificationDetailWithHttpInfo(int notificationId, int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/notifications/{notification_id}/details/{id}'
      .replaceAll('{notification_id}', notificationId.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a notification detail
  ///
  /// Returns an individual detail of a notification identified by the notification id and the id of the detail.
  ///
  /// Parameters:
  ///
  /// * [int] notificationId (required):
  ///   notification id
  ///
  /// * [int] id (required):
  ///   detail id
  Future<ValuesPropertyModel?> viewNotificationDetail(int notificationId, int id,) async {
    final response = await viewNotificationDetailWithHttpInfo(notificationId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ValuesPropertyModel',) as ValuesPropertyModel;
    
    }
    return null;
  }
}
