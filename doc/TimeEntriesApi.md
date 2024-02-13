# openproject_dart_sdk.api.TimeEntriesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**availableProjectsForTimeEntries**](TimeEntriesApi.md#availableprojectsfortimeentries) | **GET** /api/v3/time_entries/available_projects | Available projects for time entries
[**createTimeEntry**](TimeEntriesApi.md#createtimeentry) | **POST** /api/v3/time_entries | Create time entry
[**deleteTimeEntry**](TimeEntriesApi.md#deletetimeentry) | **DELETE** /api/v3/time_entries/{id} | Delete time entry
[**getTimeEntry**](TimeEntriesApi.md#gettimeentry) | **GET** /api/v3/time_entries/{id} | Get time entry
[**listTimeEntries**](TimeEntriesApi.md#listtimeentries) | **GET** /api/v3/time_entries | List time entries
[**timeEntryCreateForm**](TimeEntriesApi.md#timeentrycreateform) | **POST** /api/v3/time_entries/form | Time entry create form
[**timeEntryUpdateForm**](TimeEntriesApi.md#timeentryupdateform) | **POST** /api/v3/time_entries/{id}/form | Time entry update form
[**updateTimeEntry**](TimeEntriesApi.md#updatetimeentry) | **PATCH** /api/v3/time_entries/{id} | update time entry
[**viewTimeEntrySchema**](TimeEntriesApi.md#viewtimeentryschema) | **GET** /api/v3/time_entries/schema | View time entry schema


# **availableProjectsForTimeEntries**
> Object availableProjectsForTimeEntries()

Available projects for time entries

Gets a list of projects in which a time entry can be created in or be assigned to on update. The list contains all projects in which the user issuing the request has the necessary permissions.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = TimeEntriesApi();

try {
    final result = api_instance.availableProjectsForTimeEntries();
    print(result);
} catch (e) {
    print('Exception when calling TimeEntriesApi->availableProjectsForTimeEntries: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTimeEntry**
> TimeEntryModel createTimeEntry()

Create time entry

Creates a new time entry applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a time entries' attributes and are accepted by the endpoint.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = TimeEntriesApi();

try {
    final result = api_instance.createTimeEntry();
    print(result);
} catch (e) {
    print('Exception when calling TimeEntriesApi->createTimeEntry: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TimeEntryModel**](TimeEntryModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTimeEntry**
> deleteTimeEntry(id)

Delete time entry

Permanently deletes the specified time entry.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = TimeEntriesApi();
final id = 1; // int | Time entry id

try {
    api_instance.deleteTimeEntry(id);
} catch (e) {
    print('Exception when calling TimeEntriesApi->deleteTimeEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Time entry id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimeEntry**
> TimeEntryModel getTimeEntry(id)

Get time entry

Retrieves a single time entry identified by the given id.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = TimeEntriesApi();
final id = 1; // int | time entry id

try {
    final result = api_instance.getTimeEntry(id);
    print(result);
} catch (e) {
    print('Exception when calling TimeEntriesApi->getTimeEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| time entry id | 

### Return type

[**TimeEntryModel**](TimeEntryModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTimeEntries**
> TimeEntryCollectionModel listTimeEntries(offset, pageSize, sortBy, filters)

List time entries

Lists time entries. The time entries returned depend on the filters provided and also on the permission of the requesting user.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = TimeEntriesApi();
final offset = 25; // int | Page number inside the requested collection.
final pageSize = 25; // int | Number of elements to display per page.
final sortBy = [["spent_on", "asc"]]; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key  + hours: Sort by logged hours  + spent_on: Sort by spent on date  + created_at: Sort by time entry creation datetime  + updated_at: Sort by the time the time entry was updated last
final filters = [{ "work_package": { "operator": "=", "values": ["1", "2"] } }, { "project": { "operator": "=", "values": ["1"] } }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + work_package: Filter time entries by work package  + project: Filter time entries by project  + user: Filter time entries by users  + ongoing: Filter for your ongoing timers  + spent_on: Filter time entries by spent on date  + created_at: Filter time entries by creation datetime  + updated_at: Filter time entries by the last time they where updated  + activity: Filter time entries by time entry activity

try {
    final result = api_instance.listTimeEntries(offset, pageSize, sortBy, filters);
    print(result);
} catch (e) {
    print('Exception when calling TimeEntriesApi->listTimeEntries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Page number inside the requested collection. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page. | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key  + hours: Sort by logged hours  + spent_on: Sort by spent on date  + created_at: Sort by time entry creation datetime  + updated_at: Sort by the time the time entry was updated last | [optional] [default to '["spent_on", "asc"]']
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + work_package: Filter time entries by work package  + project: Filter time entries by project  + user: Filter time entries by users  + ongoing: Filter for your ongoing timers  + spent_on: Filter time entries by spent on date  + created_at: Filter time entries by creation datetime  + updated_at: Filter time entries by the last time they where updated  + activity: Filter time entries by time entry activity | [optional] 

### Return type

[**TimeEntryCollectionModel**](TimeEntryCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeEntryCreateForm**
> timeEntryCreateForm()

Time entry create form



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = TimeEntriesApi();

try {
    api_instance.timeEntryCreateForm();
} catch (e) {
    print('Exception when calling TimeEntriesApi->timeEntryCreateForm: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timeEntryUpdateForm**
> timeEntryUpdateForm(id, body)

Time entry update form



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = TimeEntriesApi();
final id = 1; // int | Time entries activity id
final body = int(); // int | Time entries activity id

try {
    api_instance.timeEntryUpdateForm(id, body);
} catch (e) {
    print('Exception when calling TimeEntriesApi->timeEntryUpdateForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Time entries activity id | 
 **body** | **int**| Time entries activity id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTimeEntry**
> TimeEntryModel updateTimeEntry(id)

update time entry

Updates the given time entry by applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a time entries' attributes and are accepted by the endpoint.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = TimeEntriesApi();
final id = 1; // int | Time entry id

try {
    final result = api_instance.updateTimeEntry(id);
    print(result);
} catch (e) {
    print('Exception when calling TimeEntriesApi->updateTimeEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Time entry id | 

### Return type

[**TimeEntryModel**](TimeEntryModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewTimeEntrySchema**
> Object viewTimeEntrySchema()

View time entry schema



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = TimeEntriesApi();

try {
    final result = api_instance.viewTimeEntrySchema();
    print(result);
} catch (e) {
    print('Exception when calling TimeEntriesApi->viewTimeEntrySchema: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

