# openproject_dart_sdk.api.ViewsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createViews**](ViewsApi.md#createviews) | **POST** /api/v3/views/{id} | Create view
[**listViews**](ViewsApi.md#listviews) | **GET** /api/v3/views | List views
[**viewView**](ViewsApi.md#viewview) | **GET** /api/v3/views/{id} | View view


# **createViews**
> Object createViews(id, createViewsRequest)

Create view

When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a View can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  There are different subtypes of `Views` (e.g. `Views::WorkPackagesTable`) with each having its own endpoint for creating that subtype e.g.  * `/api/v3/views/work_packages_table` for `Views::WorkPackagesTable` * `/api/v3/views/team_planner` for `Views::TeamPlanner` * `/api/v3/views/work_packages_calendar` for `Views::WorkPackagesCalendar`  **Not yet implemented** To get the list of available subtypes and by that the endpoints for creating a subtype, use the ```   /api/v3/views/schemas ``` endpoint.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = ViewsApi();
final id = 1; // String | The view identifier
final createViewsRequest = CreateViewsRequest(); // CreateViewsRequest | 

try {
    final result = api_instance.createViews(id, createViewsRequest);
    print(result);
} catch (e) {
    print('Exception when calling ViewsApi->createViews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The view identifier | 
 **createViewsRequest** | [**CreateViewsRequest**](CreateViewsRequest.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listViews**
> listViews(filters)

List views

Returns a collection of Views. The collection can be filtered via query parameters similar to how work packages are filtered.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = ViewsApi();
final filters = [{ "project_id": { "operator": "!*", "values": null }" }]; // String | JSON specifying filter conditions. Currently supported filters are:  + project: filters views by the project their associated query is assigned to. If the project filter is passed with the `!*` (not any) operator, global views are returned.  + id: filters views based on their id  + type: filters views based on their type

try {
    api_instance.listViews(filters);
} catch (e) {
    print('Exception when calling ViewsApi->listViews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Currently supported filters are:  + project: filters views by the project their associated query is assigned to. If the project filter is passed with the `!*` (not any) operator, global views are returned.  + id: filters views based on their id  + type: filters views based on their type | [optional] 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewView**
> viewView(id)

View view



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = ViewsApi();
final id = 42; // int | View id

try {
    api_instance.viewView(id);
} catch (e) {
    print('Exception when calling ViewsApi->viewView: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| View id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

