# openproject_dart_sdk.api.TimeEntriesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3TimeEntriesGet**](TimeEntriesApi.md#apiv3timeentriesget) | **GET** /api/v3/time_entries | List Time entries
[**apiV3TimeEntriesIdDelete**](TimeEntriesApi.md#apiv3timeentriesiddelete) | **DELETE** /api/v3/time_entries/{id} | delete time entry
[**apiV3TimeEntriesIdGet**](TimeEntriesApi.md#apiv3timeentriesidget) | **GET** /api/v3/time_entries/{id} | View time entry
[**apiV3TimeEntriesPost**](TimeEntriesApi.md#apiv3timeentriespost) | **POST** /api/v3/time_entries | create time entry


# **apiV3TimeEntriesGet**
> TimeEntries apiV3TimeEntriesGet(offset, pageSize, filters)

List Time entries

Lists time entries. The time entries returned depend on the filters provided and also on the permission of the requesting user.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = TimeEntriesApi();
final offset = 56; // int | Page number inside the requested collection.
final pageSize = 56; // int | Number of elements to display per page.
final filters = []; // List<Map<String, Object>> | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + work_package: Filter time entries by work package  + project: Filter time entries by project  + user: Filter time entries by users

try { 
    final result = api_instance.apiV3TimeEntriesGet(offset, pageSize, filters);
    print(result);
} catch (e) {
    print('Exception when calling TimeEntriesApi->apiV3TimeEntriesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Page number inside the requested collection. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page. | [optional] 
 **filters** | [**List<Map<String, Object>>**](Map<String, Object>.md)| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + work_package: Filter time entries by work package  + project: Filter time entries by project  + user: Filter time entries by users | [optional] [default to const []]

### Return type

[**TimeEntries**](TimeEntries.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3TimeEntriesIdDelete**
> apiV3TimeEntriesIdDelete(id)

delete time entry

Permanently deletes the specified time entry.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = TimeEntriesApi();
final id = 56; // int | time entry id

try { 
    api_instance.apiV3TimeEntriesIdDelete(id);
} catch (e) {
    print('Exception when calling TimeEntriesApi->apiV3TimeEntriesIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| time entry id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3TimeEntriesIdGet**
> TimeEntry apiV3TimeEntriesIdGet(id)

View time entry

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = TimeEntriesApi();
final id = 56; // int | time entry id

try { 
    final result = api_instance.apiV3TimeEntriesIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling TimeEntriesApi->apiV3TimeEntriesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| time entry id | 

### Return type

[**TimeEntry**](TimeEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3TimeEntriesPost**
> TimeEntry apiV3TimeEntriesPost(timeEntry, filters, sortBy)

create time entry

Creates a new time entry applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a time entries’ attributes and are accepted by the endpoint.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = TimeEntriesApi();
final timeEntry = TimeEntry(); // TimeEntry | New time entry
final filters = []; // List<Map<String, Object>> | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + ancestor: filters projects by their ancestor. A project is not considered to be it's own ancestor.
final sortBy = sortBy_example; // String | JSON specifying sort criteria. Currently supported orders are: + id + name + created_on + public + latest_activity_at + required_disk_space: There might also be additional orders based on the custom fields that have been configured.

try { 
    final result = api_instance.apiV3TimeEntriesPost(timeEntry, filters, sortBy);
    print(result);
} catch (e) {
    print('Exception when calling TimeEntriesApi->apiV3TimeEntriesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeEntry** | [**TimeEntry**](TimeEntry.md)| New time entry | 
 **filters** | [**List<Map<String, Object>>**](Map<String, Object>.md)| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + ancestor: filters projects by their ancestor. A project is not considered to be it's own ancestor. | [optional] [default to const []]
 **sortBy** | **String**| JSON specifying sort criteria. Currently supported orders are: + id + name + created_on + public + latest_activity_at + required_disk_space: There might also be additional orders based on the custom fields that have been configured. | [optional] 

### Return type

[**TimeEntry**](TimeEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

