# openproject_dart_sdk.api.QueriesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ProjectsIdQueriesDefaultGet**](QueriesApi.md#apiv3projectsidqueriesdefaultget) | **GET** /api/v3/projects/{id}/queries/default | View default query for project
[**apiV3ProjectsIdQueriesSchemaGet**](QueriesApi.md#apiv3projectsidqueriesschemaget) | **GET** /api/v3/projects/{id}/queries/schema | View schema for project queries
[**apiV3QueriesAvailableProjectsGet**](QueriesApi.md#apiv3queriesavailableprojectsget) | **GET** /api/v3/queries/available_projects | Available projects
[**apiV3QueriesDefaultGet**](QueriesApi.md#apiv3queriesdefaultget) | **GET** /api/v3/queries/default | View default query
[**apiV3QueriesFormPost**](QueriesApi.md#apiv3queriesformpost) | **POST** /api/v3/queries/form | Query Create Form
[**apiV3QueriesGet**](QueriesApi.md#apiv3queriesget) | **GET** /api/v3/queries | List queries
[**apiV3QueriesIdDelete**](QueriesApi.md#apiv3queriesiddelete) | **DELETE** /api/v3/queries/{id} | Delete query
[**apiV3QueriesIdGet**](QueriesApi.md#apiv3queriesidget) | **GET** /api/v3/queries/{id} | View query
[**apiV3QueriesIdPatch**](QueriesApi.md#apiv3queriesidpatch) | **PATCH** /api/v3/queries/{id} | Edit Query
[**apiV3QueriesIdStarPatch**](QueriesApi.md#apiv3queriesidstarpatch) | **PATCH** /api/v3/queries/{id}/star | Star query
[**apiV3QueriesIdUnstarPatch**](QueriesApi.md#apiv3queriesidunstarpatch) | **PATCH** /api/v3/queries/{id}/unstar | Unstar query
[**apiV3QueriesPost**](QueriesApi.md#apiv3queriespost) | **POST** /api/v3/queries | Create query
[**apiV3QueriesSchemaGet**](QueriesApi.md#apiv3queriesschemaget) | **GET** /api/v3/queries/schema | View schema for global queries


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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = QueriesApi();
final id = 56; // int | Id of the project the default query is requested for
final filters = filters_example; // String | JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted.
final offset = 56; // int | Page number inside the queries' result collection of work packages.
final pageSize = 56; // int | Number of elements to display per page for the queries' result collection of work packages.
final sortBy = sortBy_example; // String | JSON specifying sort criteria. The sort criteria is applied to the querie's result collection of work packages overriding the query's persisted sort criteria.
final groupBy = groupBy_example; // String | The column to group by. The grouping criteria is applied to the to the querie's result collection of work packages overriding the query's persisted group criteria.
final showSums = true; // bool | Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie's result collection of work packages overriding the query's persisted sums property.
final timelineVisible = true; // bool | Indicates whether the timeline should be shown.
final showHierarchies = true; // bool | Indicates whether the hierarchy mode should be enabled.

try {
    api_instance.apiV3ProjectsIdQueriesDefaultGet(id, filters, offset, pageSize, sortBy, groupBy, showSums, timelineVisible, showHierarchies);
} catch (e) {
    print('Exception when calling QueriesApi->apiV3ProjectsIdQueriesDefaultGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id of the project the default query is requested for | 
 **filters** | **String**| JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted. | [optional] 
 **offset** | **int**| Page number inside the queries' result collection of work packages. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page for the queries' result collection of work packages. | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. The sort criteria is applied to the querie's result collection of work packages overriding the query's persisted sort criteria. | [optional] 
 **groupBy** | **String**| The column to group by. The grouping criteria is applied to the to the querie's result collection of work packages overriding the query's persisted group criteria. | [optional] 
 **showSums** | **bool**| Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie's result collection of work packages overriding the query's persisted sums property. | [optional] [default to false]
 **timelineVisible** | **bool**| Indicates whether the timeline should be shown. | [optional] [default to false]
 **showHierarchies** | **bool**| Indicates whether the hierarchy mode should be enabled. | [optional] [default to true]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = QueriesApi();
final id = 789; // int | ID of project to return

try {
    api_instance.apiV3ProjectsIdQueriesSchemaGet(id);
} catch (e) {
    print('Exception when calling QueriesApi->apiV3ProjectsIdQueriesSchemaGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of project to return | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = QueriesApi();

try {
    api_instance.apiV3QueriesAvailableProjectsGet();
} catch (e) {
    print('Exception when calling QueriesApi->apiV3QueriesAvailableProjectsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = QueriesApi();
final filters = filters_example; // String | JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted.
final offset = 56; // int | Page number inside the queries' result collection of work packages.
final pageSize = 56; // int | Number of elements to display per page for the queries' result collection of work packages.
final sortBy = sortBy_example; // String | JSON specifying sort criteria. The sort criteria is applied to the querie's result collection of work packages overriding the query's persisted sort criteria.
final groupBy = groupBy_example; // String | The column to group by. The grouping criteria is applied to the to the querie's result collection of work packages overriding the query's persisted group criteria.
final showSums = true; // bool | Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie's result collection of work packages overriding the query's persisted sums property.
final timelineVisible = true; // bool | Indicates whether the timeline should be shown.
final timelineZoomLevel = timelineZoomLevel_example; // String | Indicates in what zoom level the timeline should be shown. Valid values are  `days`, `weeks`, `months`, `quarters`, and `years`.
final showHierarchies = true; // bool | Indicates whether the hierarchy mode should be enabled.

try {
    api_instance.apiV3QueriesDefaultGet(filters, offset, pageSize, sortBy, groupBy, showSums, timelineVisible, timelineZoomLevel, showHierarchies);
} catch (e) {
    print('Exception when calling QueriesApi->apiV3QueriesDefaultGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted. | [optional] 
 **offset** | **int**| Page number inside the queries' result collection of work packages. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page for the queries' result collection of work packages. | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. The sort criteria is applied to the querie's result collection of work packages overriding the query's persisted sort criteria. | [optional] 
 **groupBy** | **String**| The column to group by. The grouping criteria is applied to the to the querie's result collection of work packages overriding the query's persisted group criteria. | [optional] 
 **showSums** | **bool**| Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie's result collection of work packages overriding the query's persisted sums property. | [optional] [default to false]
 **timelineVisible** | **bool**| Indicates whether the timeline should be shown. | [optional] [default to false]
 **timelineZoomLevel** | **String**| Indicates in what zoom level the timeline should be shown. Valid values are  `days`, `weeks`, `months`, `quarters`, and `years`. | [optional] [default to 'days']
 **showHierarchies** | **bool**| Indicates whether the hierarchy mode should be enabled. | [optional] [default to true]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = QueriesApi();

try {
    api_instance.apiV3QueriesFormPost();
} catch (e) {
    print('Exception when calling QueriesApi->apiV3QueriesFormPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = QueriesApi();
final filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + project: filters queries by the project they are assigned to. If the project filter is passed with the `!*` (not any) operator, global queries are returned.

try {
    api_instance.apiV3QueriesGet(filters);
} catch (e) {
    print('Exception when calling QueriesApi->apiV3QueriesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + project: filters queries by the project they are assigned to. If the project filter is passed with the `!*` (not any) operator, global queries are returned. | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = QueriesApi();
final id = 56; // int | Query id

try {
    api_instance.apiV3QueriesIdDelete(id);
} catch (e) {
    print('Exception when calling QueriesApi->apiV3QueriesIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = QueriesApi();
final id = 56; // int | Query id
final filters = filters_example; // String | JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted.
final offset = 56; // int | Page number inside the queries' result collection of work packages.
final pageSize = 56; // int | Number of elements to display per page for the queries' result collection of work packages.
final sortBy = sortBy_example; // String | JSON specifying sort criteria. The sort criteria is applied to the querie's result collection of work packages overriding the query's persisted sort criteria.
final groupBy = groupBy_example; // String | The column to group by. The grouping criteria is applied to the to the querie's result collection of work packages overriding the query's persisted group criteria.
final showSums = true; // bool | Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie's result collection of work packages overriding the query's persisted sums property.
final timelineVisible = true; // bool | Indicates whether the timeline should be shown.
final timelineLabels = timelineLabels_example; // String | Overridden labels in the timeline view
final showHierarchies = true; // bool | Indicates whether the hierarchy mode should be enabled.

try {
    api_instance.apiV3QueriesIdGet(id, filters, offset, pageSize, sortBy, groupBy, showSums, timelineVisible, timelineLabels, showHierarchies);
} catch (e) {
    print('Exception when calling QueriesApi->apiV3QueriesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | 
 **filters** | **String**| JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted. | [optional] 
 **offset** | **int**| Page number inside the queries' result collection of work packages. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page for the queries' result collection of work packages. | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. The sort criteria is applied to the querie's result collection of work packages overriding the query's persisted sort criteria. | [optional] 
 **groupBy** | **String**| The column to group by. The grouping criteria is applied to the to the querie's result collection of work packages overriding the query's persisted group criteria. | [optional] 
 **showSums** | **bool**| Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie's result collection of work packages overriding the query's persisted sums property. | [optional] [default to false]
 **timelineVisible** | **bool**| Indicates whether the timeline should be shown. | [optional] [default to false]
 **timelineLabels** | **String**| Overridden labels in the timeline view | [optional] [default to '{}']
 **showHierarchies** | **bool**| Indicates whether the hierarchy mode should be enabled. | [optional] [default to true]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QueriesIdPatch**
> apiV3QueriesIdPatch(id, inlineObject2)

Edit Query

When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = QueriesApi();
final id = 56; // int | Query id
final inlineObject2 = InlineObject2(); // InlineObject2 | 

try {
    api_instance.apiV3QueriesIdPatch(id, inlineObject2);
} catch (e) {
    print('Exception when calling QueriesApi->apiV3QueriesIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | 
 **inlineObject2** | [**InlineObject2**](InlineObject2.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = QueriesApi();
final id = 56; // int | Query id

try {
    api_instance.apiV3QueriesIdStarPatch(id);
} catch (e) {
    print('Exception when calling QueriesApi->apiV3QueriesIdStarPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = QueriesApi();
final id = 56; // int | Query id

try {
    api_instance.apiV3QueriesIdUnstarPatch(id);
} catch (e) {
    print('Exception when calling QueriesApi->apiV3QueriesIdUnstarPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = QueriesApi();

try {
    api_instance.apiV3QueriesPost();
} catch (e) {
    print('Exception when calling QueriesApi->apiV3QueriesPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = QueriesApi();

try {
    api_instance.apiV3QueriesSchemaGet();
} catch (e) {
    print('Exception when calling QueriesApi->apiV3QueriesSchemaGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

