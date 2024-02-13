# openproject_dart_sdk.api.QueriesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**availableProjectsForQuery**](QueriesApi.md#availableprojectsforquery) | **GET** /api/v3/queries/available_projects | Available projects for query
[**createQuery**](QueriesApi.md#createquery) | **POST** /api/v3/queries | Create query
[**deleteQuery**](QueriesApi.md#deletequery) | **DELETE** /api/v3/queries/{id} | Delete query
[**editQuery**](QueriesApi.md#editquery) | **PATCH** /api/v3/queries/{id} | Edit Query
[**listQueries**](QueriesApi.md#listqueries) | **GET** /api/v3/queries | List queries
[**queryCreateForm**](QueriesApi.md#querycreateform) | **POST** /api/v3/queries/form | Query Create Form
[**queryUpdateForm**](QueriesApi.md#queryupdateform) | **POST** /api/v3/queries/{id}/form | Query Update Form
[**starQuery**](QueriesApi.md#starquery) | **PATCH** /api/v3/queries/{id}/star | Star query
[**unstarQuery**](QueriesApi.md#unstarquery) | **PATCH** /api/v3/queries/{id}/unstar | Unstar query
[**viewDefaultQuery**](QueriesApi.md#viewdefaultquery) | **GET** /api/v3/queries/default | View default query
[**viewDefaultQueryForProject**](QueriesApi.md#viewdefaultqueryforproject) | **GET** /api/v3/projects/{id}/queries/default | View default query for project
[**viewQuery**](QueriesApi.md#viewquery) | **GET** /api/v3/queries/{id} | View query
[**viewSchemaForGlobalQueries**](QueriesApi.md#viewschemaforglobalqueries) | **GET** /api/v3/queries/schema | View schema for global queries
[**viewSchemaForProjectQueries**](QueriesApi.md#viewschemaforprojectqueries) | **GET** /api/v3/projects/{id}/queries/schema | View schema for project queries


# **availableProjectsForQuery**
> Object availableProjectsForQuery()

Available projects for query

Gets a list of projects that are available as projects a query can be assigned to.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueriesApi();

try {
    final result = api_instance.availableProjectsForQuery();
    print(result);
} catch (e) {
    print('Exception when calling QueriesApi->availableProjectsForQuery: $e\n');
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

# **createQuery**
> QueryModel createQuery(queryCreateForm)

Create query

When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Query can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueriesApi();
final queryCreateForm = QueryCreateForm(); // QueryCreateForm | 

try {
    final result = api_instance.createQuery(queryCreateForm);
    print(result);
} catch (e) {
    print('Exception when calling QueriesApi->createQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queryCreateForm** | [**QueryCreateForm**](QueryCreateForm.md)|  | [optional] 

### Return type

[**QueryModel**](QueryModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteQuery**
> deleteQuery(id)

Delete query

Delete the query identified by the id parameter

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueriesApi();
final id = 1; // int | Query id

try {
    api_instance.deleteQuery(id);
} catch (e) {
    print('Exception when calling QueriesApi->deleteQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editQuery**
> QueryModel editQuery(id, queryUpdateForm)

Edit Query

When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueriesApi();
final id = 1; // int | Query id
final queryUpdateForm = QueryUpdateForm(); // QueryUpdateForm | 

try {
    final result = api_instance.editQuery(id, queryUpdateForm);
    print(result);
} catch (e) {
    print('Exception when calling QueriesApi->editQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | 
 **queryUpdateForm** | [**QueryUpdateForm**](QueryUpdateForm.md)|  | [optional] 

### Return type

[**QueryModel**](QueryModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listQueries**
> Object listQueries(filters)

List queries

Returns a collection of queries. The collection can be filtered via query parameters similar to how work packages are filtered. Please note however, that the filters are applied to the queries and not to the work packages the queries in turn might return.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueriesApi();
final filters = [{ "project_id": { "operator": "!*", "values": null }" }]; // String | JSON specifying filter conditions. Currently supported filters are:  + project: filters queries by the project they are assigned to. If the project filter is passed with the `!*` (not any) operator, global queries are returned.  + id: filters queries based on their id  + updated_at: filters queries based on the last time they where updated

try {
    final result = api_instance.listQueries(filters);
    print(result);
} catch (e) {
    print('Exception when calling QueriesApi->listQueries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Currently supported filters are:  + project: filters queries by the project they are assigned to. If the project filter is passed with the `!*` (not any) operator, global queries are returned.  + id: filters queries based on their id  + updated_at: filters queries based on the last time they where updated | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryCreateForm**
> queryCreateForm(queryCreateForm)

Query Create Form



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueriesApi();
final queryCreateForm = QueryCreateForm(); // QueryCreateForm | 

try {
    api_instance.queryCreateForm(queryCreateForm);
} catch (e) {
    print('Exception when calling QueriesApi->queryCreateForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queryCreateForm** | [**QueryCreateForm**](QueryCreateForm.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryUpdateForm**
> queryUpdateForm(id, queryUpdateForm)

Query Update Form



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueriesApi();
final id = 1; // int | Query id
final queryUpdateForm = QueryUpdateForm(); // QueryUpdateForm | 

try {
    api_instance.queryUpdateForm(id, queryUpdateForm);
} catch (e) {
    print('Exception when calling QueriesApi->queryUpdateForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | 
 **queryUpdateForm** | [**QueryUpdateForm**](QueryUpdateForm.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **starQuery**
> Object starQuery(id)

Star query



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueriesApi();
final id = 1; // int | Query id

try {
    final result = api_instance.starQuery(id);
    print(result);
} catch (e) {
    print('Exception when calling QueriesApi->starQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unstarQuery**
> Object unstarQuery(id)

Unstar query



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueriesApi();
final id = 1; // int | Query id

try {
    final result = api_instance.unstarQuery(id);
    print(result);
} catch (e) {
    print('Exception when calling QueriesApi->unstarQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewDefaultQuery**
> Object viewDefaultQuery(filters, offset, pageSize, sortBy, groupBy, showSums, timestamps, timelineVisible, timelineZoomLevel, showHierarchies)

View default query

Same as [viewing an existing, persisted Query](https://www.openproject.org/docs/api/endpoints/queries/#list-queries) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueriesApi();
final filters = [{ "assignee": { "operator": "=", "values": ["1", "5"] }" }]; // String | JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted. If no filter is to be applied, the client should send an empty array (`[]`).
final offset = 25; // int | Page number inside the queries' result collection of work packages.
final pageSize = 25; // int | Number of elements to display per page for the queries' result collection of work packages.
final sortBy = [["status", "asc"]]; // String | JSON specifying sort criteria. The sort criteria is applied to the query's result collection of work packages overriding the query's persisted sort criteria.
final groupBy = status; // String | The column to group by. The grouping criteria is applied to the to the query's result collection of work packages overriding the query's persisted group criteria.
final showSums = true; // bool | Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the query's result collection of work packages overriding the query's persisted sums property.
final timestamps = 2023-01-01,P-1Y,PT0S,lastWorkingDay@12:00; // String | Indicates the timestamps to filter by when showing changed attributes on work packages. Values can be either ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\". Values older than 1 day are accepted only with valid Enterprise Token available. 
final timelineVisible = true; // bool | Indicates whether the timeline should be shown.
final timelineZoomLevel = days; // String | Indicates in what zoom level the timeline should be shown. Valid values are  `days`, `weeks`, `months`, `quarters`, and `years`.
final showHierarchies = true; // bool | Indicates whether the hierarchy mode should be enabled.

try {
    final result = api_instance.viewDefaultQuery(filters, offset, pageSize, sortBy, groupBy, showSums, timestamps, timelineVisible, timelineZoomLevel, showHierarchies);
    print(result);
} catch (e) {
    print('Exception when calling QueriesApi->viewDefaultQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted. If no filter is to be applied, the client should send an empty array (`[]`). | [optional] [default to '[{ "status_id": { "operator": "o", "values": null }}]']
 **offset** | **int**| Page number inside the queries' result collection of work packages. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page for the queries' result collection of work packages. | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. The sort criteria is applied to the query's result collection of work packages overriding the query's persisted sort criteria. | [optional] [default to '[["id", "asc"]]']
 **groupBy** | **String**| The column to group by. The grouping criteria is applied to the to the query's result collection of work packages overriding the query's persisted group criteria. | [optional] 
 **showSums** | **bool**| Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the query's result collection of work packages overriding the query's persisted sums property. | [optional] [default to false]
 **timestamps** | **String**| Indicates the timestamps to filter by when showing changed attributes on work packages. Values can be either ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\". Values older than 1 day are accepted only with valid Enterprise Token available.  | [optional] [default to 'PT0S']
 **timelineVisible** | **bool**| Indicates whether the timeline should be shown. | [optional] [default to false]
 **timelineZoomLevel** | **String**| Indicates in what zoom level the timeline should be shown. Valid values are  `days`, `weeks`, `months`, `quarters`, and `years`. | [optional] [default to 'days']
 **showHierarchies** | **bool**| Indicates whether the hierarchy mode should be enabled. | [optional] [default to true]

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewDefaultQueryForProject**
> Object viewDefaultQueryForProject(id, filters, offset, pageSize, sortBy, groupBy, showSums, timestamps, timelineVisible, showHierarchies)

View default query for project

Same as [viewing an existing, persisted Query](https://www.openproject.org/docs/api/endpoints/queries/#list-queries) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query. The query will already be scoped for the project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueriesApi();
final id = 1; // int | Id of the project the default query is requested for
final filters = [{ "assignee": { "operator": "=", "values": ["1", "5"] }" }]; // String | JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted. If no filter is to be applied, the client should send an empty array (`[]`).
final offset = 25; // int | Page number inside the queries' result collection of work packages.
final pageSize = 25; // int | Number of elements to display per page for the queries' result collection of work packages.
final sortBy = [["status", "asc"]]; // String | JSON specifying sort criteria. The sort criteria is applied to the query's result collection of work packages overriding the query's persisted sort criteria.
final groupBy = status; // String | The column to group by. The grouping criteria is applied to the to the query's result collection of work packages overriding the query's persisted group criteria.
final showSums = true; // bool | Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the query's result collection of work packages overriding the query's persisted sums property.
final timestamps = 2023-01-01,P-1Y,PT0S,lastWorkingDay@12:00; // String | Indicates the timestamps to filter by when showing changed attributes on work packages. Values can be either ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time. Values older than 1 day are accepted only with valid Enterprise Token available. 
final timelineVisible = true; // bool | Indicates whether the timeline should be shown.
final showHierarchies = true; // bool | Indicates whether the hierarchy mode should be enabled.

try {
    final result = api_instance.viewDefaultQueryForProject(id, filters, offset, pageSize, sortBy, groupBy, showSums, timestamps, timelineVisible, showHierarchies);
    print(result);
} catch (e) {
    print('Exception when calling QueriesApi->viewDefaultQueryForProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id of the project the default query is requested for | 
 **filters** | **String**| JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted. If no filter is to be applied, the client should send an empty array (`[]`). | [optional] [default to '[{ "status_id": { "operator": "o", "values": null }}]']
 **offset** | **int**| Page number inside the queries' result collection of work packages. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page for the queries' result collection of work packages. | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. The sort criteria is applied to the query's result collection of work packages overriding the query's persisted sort criteria. | [optional] [default to '[["id", "asc"]]']
 **groupBy** | **String**| The column to group by. The grouping criteria is applied to the to the query's result collection of work packages overriding the query's persisted group criteria. | [optional] 
 **showSums** | **bool**| Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the query's result collection of work packages overriding the query's persisted sums property. | [optional] [default to false]
 **timestamps** | **String**| Indicates the timestamps to filter by when showing changed attributes on work packages. Values can be either ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time. Values older than 1 day are accepted only with valid Enterprise Token available.  | [optional] [default to 'PT0S']
 **timelineVisible** | **bool**| Indicates whether the timeline should be shown. | [optional] [default to false]
 **showHierarchies** | **bool**| Indicates whether the hierarchy mode should be enabled. | [optional] [default to true]

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewQuery**
> QueryModel viewQuery(id, filters, offset, pageSize, columns, sortBy, groupBy, showSums, timestamps, timelineVisible, timelineLabels, highlightingMode, highlightedAttributes, showHierarchies)

View query

Retrieve an individual query as identified by the id parameter. Then end point accepts a number of parameters that can be used to override the resources' persisted parameters.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueriesApi();
final id = 1; // int | Query id
final filters = [{ "assignee": { "operator": "=", "values": ["1", "5"] }" }]; // String | JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted. If no filter is to be applied, the client should send an empty array (`[]`).
final offset = 25; // int | Page number inside the queries' result collection of work packages.
final pageSize = 25; // int | Number of elements to display per page for the queries' result collection of work packages.
final columns = []; // String | Selected columns for the table view.
final sortBy = [["status", "asc"]]; // String | JSON specifying sort criteria. The sort criteria is applied to the query's result collection of work packages overriding the query's persisted sort criteria.
final groupBy = status; // String | The column to group by. The grouping criteria is applied to the to the query's result collection of work packages overriding the query's persisted group criteria.
final showSums = true; // bool | Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the query's result collection of work packages overriding the query's persisted sums property.
final timestamps = 2023-01-01,P-1Y,PT0S,lastWorkingDay@12:00; // String | Indicates the timestamps to filter by when showing changed attributes on work packages. Values can be either ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\". Values older than 1 day are accepted only with valid Enterprise Token available. 
final timelineVisible = true; // bool | Indicates whether the timeline should be shown.
final timelineLabels = {}; // String | Overridden labels in the timeline view
final highlightingMode = inline; // String | Highlighting mode for the table view.
final highlightedAttributes = []; // String | Highlighted attributes mode for the table view when `highlightingMode` is `inline`. When set to `[]` all highlightable attributes will be returned as `highlightedAttributes`.
final showHierarchies = true; // bool | Indicates whether the hierarchy mode should be enabled.

try {
    final result = api_instance.viewQuery(id, filters, offset, pageSize, columns, sortBy, groupBy, showSums, timestamps, timelineVisible, timelineLabels, highlightingMode, highlightedAttributes, showHierarchies);
    print(result);
} catch (e) {
    print('Exception when calling QueriesApi->viewQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Query id | 
 **filters** | **String**| JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted. If no filter is to be applied, the client should send an empty array (`[]`). | [optional] [default to '[{ "status_id": { "operator": "o", "values": null }}]']
 **offset** | **int**| Page number inside the queries' result collection of work packages. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page for the queries' result collection of work packages. | [optional] 
 **columns** | **String**| Selected columns for the table view. | [optional] [default to '[\'type\', \'priority\']']
 **sortBy** | **String**| JSON specifying sort criteria. The sort criteria is applied to the query's result collection of work packages overriding the query's persisted sort criteria. | [optional] [default to '[["id", "asc"]]']
 **groupBy** | **String**| The column to group by. The grouping criteria is applied to the to the query's result collection of work packages overriding the query's persisted group criteria. | [optional] 
 **showSums** | **bool**| Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the query's result collection of work packages overriding the query's persisted sums property. | [optional] [default to false]
 **timestamps** | **String**| Indicates the timestamps to filter by when showing changed attributes on work packages. Values can be either ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\". Values older than 1 day are accepted only with valid Enterprise Token available.  | [optional] [default to 'PT0S']
 **timelineVisible** | **bool**| Indicates whether the timeline should be shown. | [optional] [default to false]
 **timelineLabels** | **String**| Overridden labels in the timeline view | [optional] [default to '{}']
 **highlightingMode** | **String**| Highlighting mode for the table view. | [optional] [default to 'inline']
 **highlightedAttributes** | **String**| Highlighted attributes mode for the table view when `highlightingMode` is `inline`. When set to `[]` all highlightable attributes will be returned as `highlightedAttributes`. | [optional] [default to '[\'type\', \'priority\']']
 **showHierarchies** | **bool**| Indicates whether the hierarchy mode should be enabled. | [optional] [default to true]

### Return type

[**QueryModel**](QueryModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewSchemaForGlobalQueries**
> Object viewSchemaForGlobalQueries()

View schema for global queries

Retrieve the schema for global queries, those, that are not assigned to a project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueriesApi();

try {
    final result = api_instance.viewSchemaForGlobalQueries();
    print(result);
} catch (e) {
    print('Exception when calling QueriesApi->viewSchemaForGlobalQueries: $e\n');
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

# **viewSchemaForProjectQueries**
> Object viewSchemaForProjectQueries(id)

View schema for project queries

Retrieve the schema for project queries.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueriesApi();
final id = 1; // int | Project id

try {
    final result = api_instance.viewSchemaForProjectQueries(id);
    print(result);
} catch (e) {
    print('Exception when calling QueriesApi->viewSchemaForProjectQueries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project id | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

