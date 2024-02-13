# openproject_dart_sdk.api.NotificationsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listNotifications**](NotificationsApi.md#listnotifications) | **GET** /api/v3/notifications | Get notification collection
[**readNotification**](NotificationsApi.md#readnotification) | **POST** /api/v3/notifications/{id}/read_ian | Read notification
[**readNotifications**](NotificationsApi.md#readnotifications) | **POST** /api/v3/notifications/read_ian | Read all notifications
[**unreadNotification**](NotificationsApi.md#unreadnotification) | **POST** /api/v3/notifications/{id}/unread_ian | Unread notification
[**unreadNotifications**](NotificationsApi.md#unreadnotifications) | **POST** /api/v3/notifications/unread_ian | Unread all notifications
[**viewNotification**](NotificationsApi.md#viewnotification) | **GET** /api/v3/notifications/{id} | Get the notification
[**viewNotificationDetail**](NotificationsApi.md#viewnotificationdetail) | **GET** /api/v3/notifications/{notification_id}/details/{id} | Get a notification detail


# **listNotifications**
> NotificationCollectionModel listNotifications(offset, pageSize, sortBy, groupBy, filters)

Get notification collection

Returns the collection of available in-app notifications. The notifications returned depend on the provided parameters and also on the requesting user's permissions.  Contrary to most collections, this one also links to and embeds schemas for the `details` properties of the notifications returned. This is an optimization. Clients will receive the information necessary to display the various types of details that a notification can carry.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = NotificationsApi();
final offset = 25; // int | Page number inside the requested collection.
final pageSize = 25; // int | Number of elements to display per page.
final sortBy = [["reason", "asc"]]; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key  + reason: Sort by notification reason  + readIAN: Sort by read status
final groupBy = reason; // String | string specifying group_by criteria.  + reason: Group by notification reason  + project: Sort by associated project
final filters = [{ "readIAN": { "operator": "=", "values": ["t"] } }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: Filter by primary key  + project: Filter by the project the notification was created in  + readIAN: Filter by read status  + reason: Filter by the reason, e.g. 'mentioned' or 'assigned' the notification was created because of  + resourceId: Filter by the id of the resource the notification was created for. Ideally used together with the `resourceType` filter.  + resourceType: Filter by the type of the resource the notification was created for. Ideally used together with the `resourceId` filter.

try {
    final result = api_instance.listNotifications(offset, pageSize, sortBy, groupBy, filters);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->listNotifications: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Page number inside the requested collection. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page. | [optional] [default to 20]
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key  + reason: Sort by notification reason  + readIAN: Sort by read status | [optional] 
 **groupBy** | **String**| string specifying group_by criteria.  + reason: Group by notification reason  + project: Sort by associated project | [optional] 
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: Filter by primary key  + project: Filter by the project the notification was created in  + readIAN: Filter by read status  + reason: Filter by the reason, e.g. 'mentioned' or 'assigned' the notification was created because of  + resourceId: Filter by the id of the resource the notification was created for. Ideally used together with the `resourceType` filter.  + resourceType: Filter by the type of the resource the notification was created for. Ideally used together with the `resourceId` filter. | [optional] 

### Return type

[**NotificationCollectionModel**](NotificationCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readNotification**
> readNotification(id)

Read notification

Marks the given notification as read.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = NotificationsApi();
final id = 1; // int | notification id

try {
    api_instance.readNotification(id);
} catch (e) {
    print('Exception when calling NotificationsApi->readNotification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| notification id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readNotifications**
> readNotifications(filters)

Read all notifications

Marks the whole notification collection as read. The collection contains only elements the authenticated user can see, and can be further reduced with filters.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = NotificationsApi();
final filters = [{ "reason": { "operator": "=", "values": ["mentioned"] } }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: Filter by primary key  + project: Filter by the project the notification was created in  + reason: Filter by the reason, e.g. 'mentioned' or 'assigned' the notification was created because of  + resourceId: Filter by the id of the resource the notification was created for. Ideally used together with the   `resourceType` filter.  + resourceType: Filter by the type of the resource the notification was created for. Ideally used together with   the `resourceId` filter.

try {
    api_instance.readNotifications(filters);
} catch (e) {
    print('Exception when calling NotificationsApi->readNotifications: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: Filter by primary key  + project: Filter by the project the notification was created in  + reason: Filter by the reason, e.g. 'mentioned' or 'assigned' the notification was created because of  + resourceId: Filter by the id of the resource the notification was created for. Ideally used together with the   `resourceType` filter.  + resourceType: Filter by the type of the resource the notification was created for. Ideally used together with   the `resourceId` filter. | [optional] 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unreadNotification**
> unreadNotification(id)

Unread notification

Marks the given notification as unread.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = NotificationsApi();
final id = 1; // int | notification id

try {
    api_instance.unreadNotification(id);
} catch (e) {
    print('Exception when calling NotificationsApi->unreadNotification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| notification id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unreadNotifications**
> unreadNotifications(filters)

Unread all notifications

Marks the whole notification collection as unread. The collection contains only elements the authenticated user can see, and can be further reduced with filters.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = NotificationsApi();
final filters = [{ "reason": { "operator": "=", "values": ["mentioned"] } }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: Filter by primary key  + project: Filter by the project the notification was created in  + reason: Filter by the reason, e.g. 'mentioned' or 'assigned' the notification was created because of  + resourceId: Filter by the id of the resource the notification was created for. Ideally used together with the   `resourceType` filter.  + resourceType: Filter by the type of the resource the notification was created for. Ideally used together with   the `resourceId` filter.

try {
    api_instance.unreadNotifications(filters);
} catch (e) {
    print('Exception when calling NotificationsApi->unreadNotifications: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: Filter by primary key  + project: Filter by the project the notification was created in  + reason: Filter by the reason, e.g. 'mentioned' or 'assigned' the notification was created because of  + resourceId: Filter by the id of the resource the notification was created for. Ideally used together with the   `resourceType` filter.  + resourceType: Filter by the type of the resource the notification was created for. Ideally used together with   the `resourceId` filter. | [optional] 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewNotification**
> NotificationModel viewNotification(id)

Get the notification

Returns the notification identified by the notification id.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = NotificationsApi();
final id = 1; // int | notification id

try {
    final result = api_instance.viewNotification(id);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->viewNotification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| notification id | 

### Return type

[**NotificationModel**](NotificationModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewNotificationDetail**
> ValuesPropertyModel viewNotificationDetail(notificationId, id)

Get a notification detail

Returns an individual detail of a notification identified by the notification id and the id of the detail.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = NotificationsApi();
final notificationId = 1; // int | notification id
final id = 0; // int | detail id

try {
    final result = api_instance.viewNotificationDetail(notificationId, id);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->viewNotificationDetail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationId** | **int**| notification id | 
 **id** | **int**| detail id | 

### Return type

[**ValuesPropertyModel**](ValuesPropertyModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

