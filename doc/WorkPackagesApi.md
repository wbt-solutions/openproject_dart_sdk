# openproject_dart_sdk.api.WorkPackagesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ProjectsIdWorkPackagesFormPost**](WorkPackagesApi.md#apiV3ProjectsIdWorkPackagesFormPost) | **POST** /api/v3/projects/{id}/work_packages/form | WorkPackage Create Form
[**apiV3ProjectsIdWorkPackagesGet**](WorkPackagesApi.md#apiV3ProjectsIdWorkPackagesGet) | **GET** /api/v3/projects/{id}/work_packages | List WorkPackages
[**apiV3ProjectsIdWorkPackagesPost**](WorkPackagesApi.md#apiV3ProjectsIdWorkPackagesPost) | **POST** /api/v3/projects/{id}/work_packages | Create WorkPackage
[**apiV3ProjectsProjectIdWorkPackagesAvailableAssigneesGet**](WorkPackagesApi.md#apiV3ProjectsProjectIdWorkPackagesAvailableAssigneesGet) | **GET** /api/v3/projects/{project_id}/work_packages/available_assignees | Available assignees
[**apiV3ProjectsProjectIdWorkPackagesAvailableResponsiblesGet**](WorkPackagesApi.md#apiV3ProjectsProjectIdWorkPackagesAvailableResponsiblesGet) | **GET** /api/v3/projects/{project_id}/work_packages/available_responsibles | Available responsibles
[**apiV3WorkPackagesFormPost**](WorkPackagesApi.md#apiV3WorkPackagesFormPost) | **POST** /api/v3/work_packages/form | WorkPackage Create Form
[**apiV3WorkPackagesGet**](WorkPackagesApi.md#apiV3WorkPackagesGet) | **GET** /api/v3/work_packages | List WorkPackages
[**apiV3WorkPackagesIdActivitiesGet**](WorkPackagesApi.md#apiV3WorkPackagesIdActivitiesGet) | **GET** /api/v3/work_packages/{id}/activities | List WorkPackage activities
[**apiV3WorkPackagesIdActivitiesPost**](WorkPackagesApi.md#apiV3WorkPackagesIdActivitiesPost) | **POST** /api/v3/work_packages/{id}/activities | Comment WorkPackage
[**apiV3WorkPackagesIdAvailableProjectsGet**](WorkPackagesApi.md#apiV3WorkPackagesIdAvailableProjectsGet) | **GET** /api/v3/work_packages/{id}/available_projects | Available projects
[**apiV3WorkPackagesIdAvailableRelationCandidatesGet**](WorkPackagesApi.md#apiV3WorkPackagesIdAvailableRelationCandidatesGet) | **GET** /api/v3/work_packages/{id}/available_relation_candidates | Available relation candidates
[**apiV3WorkPackagesIdAvailableWatchersGet**](WorkPackagesApi.md#apiV3WorkPackagesIdAvailableWatchersGet) | **GET** /api/v3/work_packages/{id}/available_watchers | Available watchers
[**apiV3WorkPackagesIdDelete**](WorkPackagesApi.md#apiV3WorkPackagesIdDelete) | **DELETE** /api/v3/work_packages/{id} | Delete WorkPackage
[**apiV3WorkPackagesIdFormPost**](WorkPackagesApi.md#apiV3WorkPackagesIdFormPost) | **POST** /api/v3/work_packages/{id}/form | WorkPackage Edit Form
[**apiV3WorkPackagesIdGet**](WorkPackagesApi.md#apiV3WorkPackagesIdGet) | **GET** /api/v3/work_packages/{id} | View WorkPackage
[**apiV3WorkPackagesIdPatch**](WorkPackagesApi.md#apiV3WorkPackagesIdPatch) | **PATCH** /api/v3/work_packages/{id} | Edit WorkPackage
[**apiV3WorkPackagesIdRelationsFormPost**](WorkPackagesApi.md#apiV3WorkPackagesIdRelationsFormPost) | **POST** /api/v3/work_packages/{id}/relations/form | Relation create form
[**apiV3WorkPackagesIdRevisionsGet**](WorkPackagesApi.md#apiV3WorkPackagesIdRevisionsGet) | **GET** /api/v3/work_packages/{id}/revisions | Revisions
[**apiV3WorkPackagesPost**](WorkPackagesApi.md#apiV3WorkPackagesPost) | **POST** /api/v3/work_packages | Create WorkPackage
[**apiV3WorkPackagesSchemasGet**](WorkPackagesApi.md#apiV3WorkPackagesSchemasGet) | **GET** /api/v3/work_packages/schemas/ | List WorkPackage Schemas
[**apiV3WorkPackagesSchemasIdentifierGet**](WorkPackagesApi.md#apiV3WorkPackagesSchemasIdentifierGet) | **GET** /api/v3/work_packages/schemas/{identifier} | View WorkPackage Schema
[**apiV3WorkPackagesWorkPackageIdRelationsGet**](WorkPackagesApi.md#apiV3WorkPackagesWorkPackageIdRelationsGet) | **GET** /api/v3/work_packages/{work_package_id}/relations | List relations
[**apiV3WorkPackagesWorkPackageIdRelationsPost**](WorkPackagesApi.md#apiV3WorkPackagesWorkPackageIdRelationsPost) | **POST** /api/v3/work_packages/{work_package_id}/relations | Create Relation
[**apiV3WorkPackagesWorkPackageIdWatchersGet**](WorkPackagesApi.md#apiV3WorkPackagesWorkPackageIdWatchersGet) | **GET** /api/v3/work_packages/{work_package_id}/watchers | List watchers
[**apiV3WorkPackagesWorkPackageIdWatchersIdDelete**](WorkPackagesApi.md#apiV3WorkPackagesWorkPackageIdWatchersIdDelete) | **DELETE** /api/v3/work_packages/{work_package_id}/watchers/{id} | Remove watcher
[**apiV3WorkPackagesWorkPackageIdWatchersPost**](WorkPackagesApi.md#apiV3WorkPackagesWorkPackageIdWatchersPost) | **POST** /api/v3/work_packages/{work_package_id}/watchers | Add watcher


# **apiV3ProjectsIdWorkPackagesFormPost**
> apiV3ProjectsIdWorkPackagesFormPost(id)

WorkPackage Create Form

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var id = 56; // int | ID of the project in which the WorkPackage will be created

try { 
    api_instance.apiV3ProjectsIdWorkPackagesFormPost(id);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3ProjectsIdWorkPackagesFormPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the project in which the WorkPackage will be created | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsIdWorkPackagesGet**
> WorkPackages apiV3ProjectsIdWorkPackagesGet(id, offset, pageSize, filters, sortBy, groupBy, showSums)

List WorkPackages

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var id = 56; // int | Project id
var offset = 56; // int | Page number inside the requested collection.
var pageSize = 56; // int | Number of elements to display per page.
var filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
var sortBy = sortBy_example; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.
var groupBy = groupBy_example; // String | The column to group by.
var showSums = true; // bool | Indicates whether properties should be summed up if they support it.

try { 
    var result = api_instance.apiV3ProjectsIdWorkPackagesGet(id, offset, pageSize, filters, sortBy, groupBy, showSums);
    print(result);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3ProjectsIdWorkPackagesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project id | 
 **offset** | **int**| Page number inside the requested collection. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page. | [optional] 
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint. | [optional] 
 **groupBy** | **String**| The column to group by. | [optional] 
 **showSums** | **bool**| Indicates whether properties should be summed up if they support it. | [optional] [default to false]

### Return type

[**WorkPackages**](WorkPackages.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsIdWorkPackagesPost**
> WorkPackage apiV3ProjectsIdWorkPackagesPost(id, workPackage, notify)

Create WorkPackage

When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var id = 56; // int | Project id
var workPackage = WorkPackage(); // WorkPackage | WorkPackage to add to the project
var notify = true; // bool | Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the WorkPackage (e.g. watchers, author and assignee), not just the current user.

try { 
    var result = api_instance.apiV3ProjectsIdWorkPackagesPost(id, workPackage, notify);
    print(result);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3ProjectsIdWorkPackagesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project id | 
 **workPackage** | **WorkPackage**| WorkPackage to add to the project | 
 **notify** | **bool**| Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the WorkPackage (e.g. watchers, author and assignee), not just the current user. | [optional] [default to true]

### Return type

[**WorkPackage**](WorkPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsProjectIdWorkPackagesAvailableAssigneesGet**
> Users apiV3ProjectsProjectIdWorkPackagesAvailableAssigneesGet(projectId)

Available assignees

Gets a list of users that can be assigned to WorkPackages in the given project.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var projectId = 56; // int | Project id

try { 
    var result = api_instance.apiV3ProjectsProjectIdWorkPackagesAvailableAssigneesGet(projectId);
    print(result);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3ProjectsProjectIdWorkPackagesAvailableAssigneesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**| Project id | 

### Return type

[**Users**](Users.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsProjectIdWorkPackagesAvailableResponsiblesGet**
> Users apiV3ProjectsProjectIdWorkPackagesAvailableResponsiblesGet(projectId)

Available responsibles

Gets a list of users that can be assigned as the responsible of a WorkPackage in the given project.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var projectId = 56; // int | Project id

try { 
    var result = api_instance.apiV3ProjectsProjectIdWorkPackagesAvailableResponsiblesGet(projectId);
    print(result);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3ProjectsProjectIdWorkPackagesAvailableResponsiblesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**| Project id | 

### Return type

[**Users**](Users.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesFormPost**
> apiV3WorkPackagesFormPost()

WorkPackage Create Form

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();

try { 
    api_instance.apiV3WorkPackagesFormPost();
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesFormPost: $e\n");
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

# **apiV3WorkPackagesGet**
> WorkPackages apiV3WorkPackagesGet(offset, pageSize, filters, sortBy, groupBy, showSums)

List WorkPackages

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var offset = 56; // int | Page number inside the requested collection.
var pageSize = 56; // int | Number of elements to display per page.
var filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
var sortBy = sortBy_example; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.
var groupBy = groupBy_example; // String | The column to group by.
var showSums = true; // bool | Indicates whether properties should be summed up if they support it.

try { 
    var result = api_instance.apiV3WorkPackagesGet(offset, pageSize, filters, sortBy, groupBy, showSums);
    print(result);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Page number inside the requested collection. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page. | [optional] 
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint. | [optional] 
 **groupBy** | **String**| The column to group by. | [optional] 
 **showSums** | **bool**| Indicates whether properties should be summed up if they support it. | [optional] [default to false]

### Return type

[**WorkPackages**](WorkPackages.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdActivitiesGet**
> apiV3WorkPackagesIdActivitiesGet(id)

List WorkPackage activities

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var id = 56; // int | WorkPackage id

try { 
    api_instance.apiV3WorkPackagesIdActivitiesGet(id);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesIdActivitiesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| WorkPackage id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdActivitiesPost**
> apiV3WorkPackagesIdActivitiesPost(id, notify, body)

Comment WorkPackage

Creates an activity for the selected WorkPackage and, on success, returns the updated activity.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var id = 56; // int | WorkPackage id
var notify = true; // bool | Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the WorkPackage (e.g. watchers, author and assignee), not just the current user.
var body = InlineObject8(); // InlineObject8 | 

try { 
    api_instance.apiV3WorkPackagesIdActivitiesPost(id, notify, body);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesIdActivitiesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| WorkPackage id | 
 **notify** | **bool**| Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the WorkPackage (e.g. watchers, author and assignee), not just the current user. | [optional] [default to true]
 **body** | [**InlineObject8**](InlineObject8.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdAvailableProjectsGet**
> apiV3WorkPackagesIdAvailableProjectsGet(id)

Available projects

Gets a list of projects that are available as projects to which the WorkPackage can be moved.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var id = 56; // int | WorkPackage id

try { 
    api_instance.apiV3WorkPackagesIdAvailableProjectsGet(id);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesIdAvailableProjectsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| WorkPackage id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdAvailableRelationCandidatesGet**
> apiV3WorkPackagesIdAvailableRelationCandidatesGet(id, pageSize, filters, query, type)

Available relation candidates

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var id = 789; // int | ID of workpackage to return
var pageSize = 56; // int | Maximum number of candidates to list (default 10)
var filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
var query = query_example; // String | Shortcut for filtering by ID or subject
var type = type_example; // String | Type of relation to find candidates for (default \"relates\")

try { 
    api_instance.apiV3WorkPackagesIdAvailableRelationCandidatesGet(id, pageSize, filters, query, type);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesIdAvailableRelationCandidatesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of workpackage to return | 
 **pageSize** | **int**| Maximum number of candidates to list (default 10) | [optional] 
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. | [optional] 
 **query** | **String**| Shortcut for filtering by ID or subject | [optional] 
 **type** | **String**| Type of relation to find candidates for (default \&quot;relates\&quot;) | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdAvailableWatchersGet**
> apiV3WorkPackagesIdAvailableWatchersGet(id)

Available watchers

Gets a list of users that are able to be watchers of the specified WorkPackage.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var id = 56; // int | WorkPackage id

try { 
    api_instance.apiV3WorkPackagesIdAvailableWatchersGet(id);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesIdAvailableWatchersGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| WorkPackage id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdDelete**
> apiV3WorkPackagesIdDelete(id)

Delete WorkPackage

Deletes the WorkPackage, as well as:  * all associated TimeEntries  * its hierarchy of child WorkPackages

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var id = 56; // int | WorkPackage id

try { 
    api_instance.apiV3WorkPackagesIdDelete(id);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| WorkPackage id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdFormPost**
> apiV3WorkPackagesIdFormPost(id)

WorkPackage Edit Form

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var id = 56; // int | ID of the WorkPackage being modified

try { 
    api_instance.apiV3WorkPackagesIdFormPost(id);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesIdFormPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the WorkPackage being modified | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdGet**
> WorkPackage apiV3WorkPackagesIdGet(id)

View WorkPackage

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var id = 56; // int | WorkPackage id

try { 
    var result = api_instance.apiV3WorkPackagesIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| WorkPackage id | 

### Return type

[**WorkPackage**](WorkPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdPatch**
> WorkPackage apiV3WorkPackagesIdPatch(id, notify, body)

Edit WorkPackage

When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.  Additionally to the fields the client wants to change, it is mandatory to provide the value of `lockVersion` which was received by the `GET` request this change originates from.  The value of `lockVersion` is used to implement [optimistic locking](http://en.wikipedia.org/wiki/Optimistic_concurrency_control).

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var id = 56; // int | WorkPackage id
var notify = true; // bool | Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the WorkPackage (e.g. watchers, author and assignee), not just the current user.
var body = WorkPackage(); // WorkPackage | 

try { 
    var result = api_instance.apiV3WorkPackagesIdPatch(id, notify, body);
    print(result);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| WorkPackage id | 
 **notify** | **bool**| Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the WorkPackage (e.g. watchers, author and assignee), not just the current user. | [optional] [default to true]
 **body** | **WorkPackage**|  | [optional] 

### Return type

[**WorkPackage**](WorkPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdRelationsFormPost**
> apiV3WorkPackagesIdRelationsFormPost(id)

Relation create form

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var id = 56; // int | ID of the relation being modified

try { 
    api_instance.apiV3WorkPackagesIdRelationsFormPost(id);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesIdRelationsFormPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the relation being modified | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdRevisionsGet**
> apiV3WorkPackagesIdRevisionsGet(id)

Revisions

Gets a list of revisions that are linked to this WorkPackage, e.g., because it is referenced in the commit message of the revision. Only linked revisions from repositories are shown if the user has the view changesets permission in the defining project.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var id = 56; // int | WorkPackage id

try { 
    api_instance.apiV3WorkPackagesIdRevisionsGet(id);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesIdRevisionsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| WorkPackage id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesPost**
> WorkPackage apiV3WorkPackagesPost(workPackage, notify)

Create WorkPackage

When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  A project link must be set when creating WorkPackages through this route.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var workPackage = WorkPackage(); // WorkPackage | WorkPackage to add (a project link ist requried)
var notify = true; // bool | Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the WorkPackage (e.g. watchers, author and assignee), not just the current user.

try { 
    var result = api_instance.apiV3WorkPackagesPost(workPackage, notify);
    print(result);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workPackage** | **WorkPackage**| WorkPackage to add (a project link ist requried) | 
 **notify** | **bool**| Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the WorkPackage (e.g. watchers, author and assignee), not just the current user. | [optional] [default to true]

### Return type

[**WorkPackage**](WorkPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesSchemasGet**
> apiV3WorkPackagesSchemasGet(filters)

List WorkPackage Schemas

List WorkPackage schemas.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + id: The schema's id

try { 
    api_instance.apiV3WorkPackagesSchemasGet(filters);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesSchemasGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + id: The schema&#39;s id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesSchemasIdentifierGet**
> apiV3WorkPackagesSchemasIdentifierGet(identifier)

View WorkPackage Schema

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var identifier = identifier_example; // String | Identifier of the schema

try { 
    api_instance.apiV3WorkPackagesSchemasIdentifierGet(identifier);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesSchemasIdentifierGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the schema | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesWorkPackageIdRelationsGet**
> apiV3WorkPackagesWorkPackageIdRelationsGet(workPackageId)

List relations

Lists all relations this WorkPackage is involved in.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var workPackageId = 56; // int | WorkPackage id

try { 
    api_instance.apiV3WorkPackagesWorkPackageIdRelationsGet(workPackageId);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesWorkPackageIdRelationsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workPackageId** | **int**| WorkPackage id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesWorkPackageIdRelationsPost**
> apiV3WorkPackagesWorkPackageIdRelationsPost(workPackageId)

Create Relation

When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Relation can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var workPackageId = 56; // int | WorkPackage id

try { 
    api_instance.apiV3WorkPackagesWorkPackageIdRelationsPost(workPackageId);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesWorkPackageIdRelationsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workPackageId** | **int**| WorkPackage id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesWorkPackageIdWatchersGet**
> apiV3WorkPackagesWorkPackageIdWatchersGet(workPackageId)

List watchers

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var workPackageId = 56; // int | WorkPackage id

try { 
    api_instance.apiV3WorkPackagesWorkPackageIdWatchersGet(workPackageId);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesWorkPackageIdWatchersGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workPackageId** | **int**| WorkPackage id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesWorkPackageIdWatchersIdDelete**
> apiV3WorkPackagesWorkPackageIdWatchersIdDelete(workPackageId, id)

Remove watcher

Removes the specified user from the list of watchers for the given WorkPackage.  If the request succeeds, the specified user is not watching the WorkPackage anymore.  *Note: This might also be the case, if the specified user did not watch the WorkPackage prior to the request.*

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var workPackageId = 56; // int | WorkPackage id
var id = 56; // int | User id

try { 
    api_instance.apiV3WorkPackagesWorkPackageIdWatchersIdDelete(workPackageId, id);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesWorkPackageIdWatchersIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workPackageId** | **int**| WorkPackage id | 
 **id** | **int**| User id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesWorkPackageIdWatchersPost**
> apiV3WorkPackagesWorkPackageIdWatchersPost(workPackageId, body)

Add watcher

Adds a watcher to the specified WorkPackage.  The request is expected to contain a single JSON object, that contains a link object under the `user` key.  The response will be user added as watcher. In case the user was already watching the WorkPackage an `HTTP 200` is returned, an `HTTP 201` if the user was added as a new watcher.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = WorkPackagesApi();
var workPackageId = 56; // int | WorkPackage id
var body = InlineObject7(); // InlineObject7 | 

try { 
    api_instance.apiV3WorkPackagesWorkPackageIdWatchersPost(workPackageId, body);
} catch (e) {
    print("Exception when calling WorkPackagesApi->apiV3WorkPackagesWorkPackageIdWatchersPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workPackageId** | **int**| WorkPackage id | 
 **body** | [**InlineObject7**](InlineObject7.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

