# openproject_dart_sdk.api.QueriesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ProjectsIdQueriesDefaultGet**](QueriesApi.md#apiV3ProjectsIdQueriesDefaultGet) | **GET** /api/v3/projects/{id}/queries/default | View default query for project
[**apiV3ProjectsIdQueriesSchemaGet**](QueriesApi.md#apiV3ProjectsIdQueriesSchemaGet) | **GET** /api/v3/projects/{id}/queries/schema | View schema for project queries
[**apiV3QueriesAvailableProjectsGet**](QueriesApi.md#apiV3QueriesAvailableProjectsGet) | **GET** /api/v3/queries/available_projects | Available projects
[**apiV3QueriesDefaultGet**](QueriesApi.md#apiV3QueriesDefaultGet) | **GET** /api/v3/queries/default | View default query
[**apiV3QueriesFormPost**](QueriesApi.md#apiV3QueriesFormPost) | **POST** /api/v3/queries/form | Query Create Form
[**apiV3QueriesGet**](QueriesApi.md#apiV3QueriesGet) | **GET** /api/v3/queries | List queries
[**apiV3QueriesIdDelete**](QueriesApi.md#apiV3QueriesIdDelete) | **DELETE** /api/v3/queries/{id} | Delete query
[**apiV3QueriesIdGet**](QueriesApi.md#apiV3QueriesIdGet) | **GET** /api/v3/queries/{id} | View query
[**apiV3QueriesIdPatch**](QueriesApi.md#apiV3QueriesIdPatch) | **PATCH** /api/v3/queries/{id} | Edit Query
[**apiV3QueriesIdStarPatch**](QueriesApi.md#apiV3QueriesIdStarPatch) | **PATCH** /api/v3/queries/{id}/star | Star query
[**apiV3QueriesIdUnstarPatch**](QueriesApi.md#apiV3QueriesIdUnstarPatch) | **PATCH** /api/v3/queries/{id}/unstar | Unstar query
[**apiV3QueriesPost**](QueriesApi.md#apiV3QueriesPost) | **POST** /api/v3/queries | Create query
[**apiV3QueriesSchemaGet**](QueriesApi.md#apiV3QueriesSchemaGet) | **GET** /api/v3/queries/schema | View schema for global queries


# **apiV3ProjectsIdQueriesDefaultGet**
> apiV3ProjectsIdQueriesDefaultGet(id, filters, offset, pageSize, sortBy, groupBy, showSums, timelineVisible, showHierarchies)

View default query for project

Same as [viewing an existing, persisted Query](#queries-query-get) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query. The query will already be scoped for the project.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QueriesApi();
var id = 56; // int | Id of the project the default query is requested for
var filters = filters_example; // String | JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted.
var offset = 56; // int | Page number inside the queries' result collection of work packages.
var pageSize = 56; // int | Number of elements to display per page for the queries' result collection of work packages.
var sortBy = sortBy_example; // String | JSON specifying sort criteria. The sort criteria is applied to the querie's result collection of work packages overriding the query's persisted sort criteria.
var groupBy = groupBy_example; // String | The column to group by. The grouping criteria is applied to the to the querie's result collection of work packages overriding the query's persisted group criteria.
var showSums = true; // bool | Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie's result collection of work packages overriding the query's persisted sums property.
var timelineVisible = true; // bool | Indicates whether the timeline should be shown.
var showHierarchies = true; // bool | Indicates whether the hierarchy mode should be enabled.

try { 
    api_instance.apiV3ProjectsIdQueriesDefaultGet(id, filters, offset, pageSize, sortBy, groupBy, showSums, timelineVisible, showHierarchies);
} catch (e) {
    print("Exception when calling QueriesApi->apiV3ProjectsIdQueriesDefaultGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id of the project the default query is requested for | [default to null]
 **filters** | **String**| JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query&#39;s persisted filters. All filters also accepted by the work packages endpoint are accepted. | [optional] [default to null]
 **offset** | **int**| Page number inside the queries&#39; result collection of work packages. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page for the queries&#39; result collection of work packages. | [optional] [default to null]
 **sortBy** | **String**| JSON specifying sort criteria. The sort criteria is applied to the querie&#39;s result collection of work packages overriding the query&#39;s persisted sort criteria. | [optional] [default to null]
 **groupBy** | **String**| The column to group by. The grouping criteria is applied to the to the querie&#39;s result collection of work packages overriding the query&#39;s persisted group criteria. | [optional] [default to null]
 **showSums** | **bool**| Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie&#39;s result collection of work packages overriding the query&#39;s persisted sums property. | [optional] [default to false]
 **timelineVisible** | **bool**| Indicates whether the timeline should be shown. | [optional] [default to false]
 **showHierarchies** | **bool**| Indicates whether the hierarchy mode should be enabled. | [optional] [default to true]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsIdQueriesSchemaGet**
> apiV3ProjectsIdQueriesSchemaGet(id)

View schema for project queries

Retrieve the schema for project queries.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QueriesApi();
var id = 789; // int | ID of project to return

try { 
    api_instance.apiV3ProjectsIdQueriesSchemaGet(id);
} catch (e) {
    print("Exception when calling QueriesApi->apiV3ProjectsIdQueriesSchemaGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of project to return | [default to null]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QueriesAvailableProjectsGet**
> apiV3QueriesAvailableProjectsGet()

Available projects

Gets a list of projects that are available as projects a query can be assigned to.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QueriesApi();

try { 
    api_instance.apiV3QueriesAvailableProjectsGet();
} catch (e) {
    print("Exception when calling QueriesApi->apiV3QueriesAvailableProjectsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QueriesDefaultGet**
> apiV3QueriesDefaultGet(filters, offset, pageSize, sortBy, groupBy, showSums, timelineVisible, timelineZoomLevel, showHierarchies)

View default query

Same as [viewing an existing, persisted Query](#queries-query-get) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QueriesApi();
var filters = filters_example; // String | JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted.
var offset = 56; // int | Page number inside the queries' result collection of work packages.
var pageSize = 56; // int | Number of elements to display per page for the queries' result collection of work packages.
var sortBy = sortBy_example; // String | JSON specifying sort criteria. The sort criteria is applied to the querie's result collection of work packages overriding the query's persisted sort criteria.
var groupBy = groupBy_example; // String | The column to group by. The grouping criteria is applied to the to the querie's result collection of work packages overriding the query's persisted group criteria.
var showSums = true; // bool | Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie's result collection of work packages overriding the query's persisted sums property.
var timelineVisible = true; // bool | Indicates whether the timeline should be shown.
var timelineZoomLevel = timelineZoomLevel_example; // String | Indicates in what zoom level the timeline should be shown. Valid values are  `days`, `weeks`, `months`, `quarters`, and `years`.
var showHierarchies = true; // bool | Indicates whether the hierarchy mode should be enabled.

try { 
    api_instance.apiV3QueriesDefaultGet(filters, offset, pageSize, sortBy, groupBy, showSums, timelineVisible, timelineZoomLevel, showHierarchies);
} catch (e) {
    print("Exception when calling QueriesApi->apiV3QueriesDefaultGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query&#39;s persisted filters. All filters also accepted by the work packages endpoint are accepted. | [optional] [default to null]
 **offset** | **int**| Page number inside the queries&#39; result collection of work packages. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page for the queries&#39; result collection of work packages. | [optional] [default to null]
 **sortBy** | **String**| JSON specifying sort criteria. The sort criteria is applied to the querie&#39;s result collection of work packages overriding the query&#39;s persisted sort criteria. | [optional] [default to null]
 **groupBy** | **String**| The column to group by. The grouping criteria is applied to the to the querie&#39;s result collection of work packages overriding the query&#39;s persisted group criteria. | [optional] [default to null]
 **showSums** | **bool**| Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie&#39;s result collection of work packages overriding the query&#39;s persisted sums property. | [optional] [default to false]
 **timelineVisible** | **bool**| Indicates whether the timeline should be shown. | [optional] [default to false]
 **timelineZoomLevel** | **String**| Indicates in what zoom level the timeline should be shown. Valid values are  &#x60;days&#x60;, &#x60;weeks&#x60;, &#x60;months&#x60;, &#x60;quarters&#x60;, and &#x60;years&#x60;. | [optional] [default to &quot;days&quot;]
 **showHierarchies** | **bool**| Indicates whether the hierarchy mode should be enabled. | [optional] [default to true]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QueriesFormPost**
> apiV3QueriesFormPost()

Query Create Form

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QueriesApi();

try { 
    api_instance.apiV3QueriesFormPost();
} catch (e) {
    print("Exception when calling QueriesApi->apiV3QueriesFormPost: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QueriesGet**
> apiV3QueriesGet(filters)

List queries

Returns a collection of queries. The collection can be filtered via query parameters similar to how work packages are filtered. Please note however, that the filters are applied to the queries and not to the work packages the queries in turn might return.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QueriesApi();
var filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + project: filters queries by the project they are assigned to. If the project filter is passed with the `!*` (not any) operator, global queries are returned.

try { 
    api_instance.apiV3QueriesGet(filters);
} catch (e) {
    print("Exception when calling QueriesApi->apiV3QueriesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + project: filters queries by the project they are assigned to. If the project filter is passed with the &#x60;!*&#x60; (not any) operator, global queries are returned. | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QueriesIdDelete**
> apiV3QueriesIdDelete(id)

Delete query

Delete the query identified by the id parameter

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QueriesApi();
var id = 56; // int | Query id

try { 
    api_instance.apiV3QueriesIdDelete(id);
} catch (e) {
    print("Exception when calling QueriesApi->apiV3QueriesIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | [default to null]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QueriesIdGet**
> apiV3QueriesIdGet(id, filters, offset, pageSize, sortBy, groupBy, showSums, timelineVisible, timelineLabels, showHierarchies)

View query

Retreive an individual query as identified by the id parameter. Then end point accepts a number of parameters that can be used to override the resources' persisted parameters.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QueriesApi();
var id = 56; // int | Query id
var filters = filters_example; // String | JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted.
var offset = 56; // int | Page number inside the queries' result collection of work packages.
var pageSize = 56; // int | Number of elements to display per page for the queries' result collection of work packages.
var sortBy = sortBy_example; // String | JSON specifying sort criteria. The sort criteria is applied to the querie's result collection of work packages overriding the query's persisted sort criteria.
var groupBy = groupBy_example; // String | The column to group by. The grouping criteria is applied to the to the querie's result collection of work packages overriding the query's persisted group criteria.
var showSums = true; // bool | Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie's result collection of work packages overriding the query's persisted sums property.
var timelineVisible = true; // bool | Indicates whether the timeline should be shown.
var timelineLabels = timelineLabels_example; // String | Overridden labels in the timeline view
var showHierarchies = true; // bool | Indicates whether the hierarchy mode should be enabled.

try { 
    api_instance.apiV3QueriesIdGet(id, filters, offset, pageSize, sortBy, groupBy, showSums, timelineVisible, timelineLabels, showHierarchies);
} catch (e) {
    print("Exception when calling QueriesApi->apiV3QueriesIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | [default to null]
 **filters** | **String**| JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query&#39;s persisted filters. All filters also accepted by the work packages endpoint are accepted. | [optional] [default to null]
 **offset** | **int**| Page number inside the queries&#39; result collection of work packages. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page for the queries&#39; result collection of work packages. | [optional] [default to null]
 **sortBy** | **String**| JSON specifying sort criteria. The sort criteria is applied to the querie&#39;s result collection of work packages overriding the query&#39;s persisted sort criteria. | [optional] [default to null]
 **groupBy** | **String**| The column to group by. The grouping criteria is applied to the to the querie&#39;s result collection of work packages overriding the query&#39;s persisted group criteria. | [optional] [default to null]
 **showSums** | **bool**| Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie&#39;s result collection of work packages overriding the query&#39;s persisted sums property. | [optional] [default to false]
 **timelineVisible** | **bool**| Indicates whether the timeline should be shown. | [optional] [default to false]
 **timelineLabels** | **String**| Overridden labels in the timeline view | [optional] [default to &quot;{}&quot;]
 **showHierarchies** | **bool**| Indicates whether the hierarchy mode should be enabled. | [optional] [default to true]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QueriesIdPatch**
> apiV3QueriesIdPatch(id, body)

Edit Query

When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QueriesApi();
var id = 56; // int | Query id
var body = InlineObject3(); // InlineObject3 | 

try { 
    api_instance.apiV3QueriesIdPatch(id, body);
} catch (e) {
    print("Exception when calling QueriesApi->apiV3QueriesIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | [default to null]
 **body** | [**InlineObject3**](InlineObject3.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QueriesIdStarPatch**
> apiV3QueriesIdStarPatch(id)

Star query

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QueriesApi();
var id = 56; // int | Query id

try { 
    api_instance.apiV3QueriesIdStarPatch(id);
} catch (e) {
    print("Exception when calling QueriesApi->apiV3QueriesIdStarPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | [default to null]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QueriesIdUnstarPatch**
> apiV3QueriesIdUnstarPatch(id)

Unstar query

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QueriesApi();
var id = 56; // int | Query id

try { 
    api_instance.apiV3QueriesIdUnstarPatch(id);
} catch (e) {
    print("Exception when calling QueriesApi->apiV3QueriesIdUnstarPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | [default to null]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QueriesPost**
> apiV3QueriesPost()

Create query

When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Query can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QueriesApi();

try { 
    api_instance.apiV3QueriesPost();
} catch (e) {
    print("Exception when calling QueriesApi->apiV3QueriesPost: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QueriesSchemaGet**
> apiV3QueriesSchemaGet()

View schema for global queries

Retrieve the schema for global queries, those, that are not assigned to a project.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QueriesApi();

try { 
    api_instance.apiV3QueriesSchemaGet();
} catch (e) {
    print("Exception when calling QueriesApi->apiV3QueriesSchemaGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

