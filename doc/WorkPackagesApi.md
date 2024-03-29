# openproject_dart_sdk.api.WorkPackagesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ProjectsIdWorkPackagesFormPost**](WorkPackagesApi.md#apiv3projectsidworkpackagesformpost) | **POST** /api/v3/projects/{id}/work_packages/form | Work Package Create Form
[**apiV3ProjectsIdWorkPackagesGet**](WorkPackagesApi.md#apiv3projectsidworkpackagesget) | **GET** /api/v3/projects/{id}/work_packages | List Work Packages
[**apiV3ProjectsIdWorkPackagesPost**](WorkPackagesApi.md#apiv3projectsidworkpackagespost) | **POST** /api/v3/projects/{id}/work_packages | Create Work Package
[**apiV3ProjectsProjectIdAvailableAssigneesGet**](WorkPackagesApi.md#apiv3projectsprojectidavailableassigneesget) | **GET** /api/v3/projects/{project_id}/available_assignees | Available assignees
[**apiV3ProjectsProjectIdAvailableResponsiblesGet**](WorkPackagesApi.md#apiv3projectsprojectidavailableresponsiblesget) | **GET** /api/v3/projects/{project_id}/available_responsibles | Available responsibles
[**apiV3WorkPackagesFormPost**](WorkPackagesApi.md#apiv3workpackagesformpost) | **POST** /api/v3/work_packages/form | Work Package Create Form
[**apiV3WorkPackagesGet**](WorkPackagesApi.md#apiv3workpackagesget) | **GET** /api/v3/work_packages | List Work Packages
[**apiV3WorkPackagesIdActivitiesGet**](WorkPackagesApi.md#apiv3workpackagesidactivitiesget) | **GET** /api/v3/work_packages/{id}/activities | List work package activities
[**apiV3WorkPackagesIdActivitiesPost**](WorkPackagesApi.md#apiv3workpackagesidactivitiespost) | **POST** /api/v3/work_packages/{id}/activities | Comment work package
[**apiV3WorkPackagesIdAvailableProjectsGet**](WorkPackagesApi.md#apiv3workpackagesidavailableprojectsget) | **GET** /api/v3/work_packages/{id}/available_projects | Available projects
[**apiV3WorkPackagesIdAvailableRelationCandidatesGet**](WorkPackagesApi.md#apiv3workpackagesidavailablerelationcandidatesget) | **GET** /api/v3/work_packages/{id}/available_relation_candidates | Available relation candidates
[**apiV3WorkPackagesIdAvailableWatchersGet**](WorkPackagesApi.md#apiv3workpackagesidavailablewatchersget) | **GET** /api/v3/work_packages/{id}/available_watchers | Available watchers
[**apiV3WorkPackagesIdDelete**](WorkPackagesApi.md#apiv3workpackagesiddelete) | **DELETE** /api/v3/work_packages/{id} | Delete Work Package
[**apiV3WorkPackagesIdFormPost**](WorkPackagesApi.md#apiv3workpackagesidformpost) | **POST** /api/v3/work_packages/{id}/form | Work Package Edit Form
[**apiV3WorkPackagesIdGet**](WorkPackagesApi.md#apiv3workpackagesidget) | **GET** /api/v3/work_packages/{id} | View Work Package
[**apiV3WorkPackagesIdPatch**](WorkPackagesApi.md#apiv3workpackagesidpatch) | **PATCH** /api/v3/work_packages/{id} | Edit Work Package
[**apiV3WorkPackagesIdRelationsFormPost**](WorkPackagesApi.md#apiv3workpackagesidrelationsformpost) | **POST** /api/v3/work_packages/{id}/relations/form | Relation create form
[**apiV3WorkPackagesIdRevisionsGet**](WorkPackagesApi.md#apiv3workpackagesidrevisionsget) | **GET** /api/v3/work_packages/{id}/revisions | Revisions
[**apiV3WorkPackagesPost**](WorkPackagesApi.md#apiv3workpackagespost) | **POST** /api/v3/work_packages | Create Work Package
[**apiV3WorkPackagesSchemasGet**](WorkPackagesApi.md#apiv3workpackagesschemasget) | **GET** /api/v3/work_packages/schemas/ | List Work Package Schemas
[**apiV3WorkPackagesSchemasIdentifierGet**](WorkPackagesApi.md#apiv3workpackagesschemasidentifierget) | **GET** /api/v3/work_packages/schemas/{identifier} | View Work Package Schema
[**apiV3WorkPackagesWorkPackageIdRelationsGet**](WorkPackagesApi.md#apiv3workpackagesworkpackageidrelationsget) | **GET** /api/v3/work_packages/{work_package_id}/relations | List relations
[**apiV3WorkPackagesWorkPackageIdRelationsPost**](WorkPackagesApi.md#apiv3workpackagesworkpackageidrelationspost) | **POST** /api/v3/work_packages/{work_package_id}/relations | Create Relation
[**apiV3WorkPackagesWorkPackageIdWatchersGet**](WorkPackagesApi.md#apiv3workpackagesworkpackageidwatchersget) | **GET** /api/v3/work_packages/{work_package_id}/watchers | List watchers
[**apiV3WorkPackagesWorkPackageIdWatchersIdDelete**](WorkPackagesApi.md#apiv3workpackagesworkpackageidwatchersiddelete) | **DELETE** /api/v3/work_packages/{work_package_id}/watchers/{id} | Remove watcher
[**apiV3WorkPackagesWorkPackageIdWatchersPost**](WorkPackagesApi.md#apiv3workpackagesworkpackageidwatcherspost) | **POST** /api/v3/work_packages/{work_package_id}/watchers | Add watcher


# **apiV3ProjectsIdWorkPackagesFormPost**
> apiV3ProjectsIdWorkPackagesFormPost(id)

Work Package Create Form

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final id = 56; // int | ID of the project in which the work package will be created

try {
    api_instance.apiV3ProjectsIdWorkPackagesFormPost(id);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3ProjectsIdWorkPackagesFormPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the project in which the work package will be created | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsIdWorkPackagesGet**
> WorkPackages apiV3ProjectsIdWorkPackagesGet(id, offset, pageSize, filters, sortBy, groupBy, showSums)

List Work Packages

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final id = 56; // int | Project id
final offset = 56; // int | Page number inside the requested collection.
final pageSize = 56; // int | Number of elements to display per page.
final filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
final sortBy = sortBy_example; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.
final groupBy = groupBy_example; // String | The column to group by.
final showSums = true; // bool | Indicates whether properties should be summed up if they support it.

try {
    final result = api_instance.apiV3ProjectsIdWorkPackagesGet(id, offset, pageSize, filters, sortBy, groupBy, showSums);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3ProjectsIdWorkPackagesGet: $e\n');
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

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsIdWorkPackagesPost**
> WorkPackage apiV3ProjectsIdWorkPackagesPost(id, workPackage, notify)

Create Work Package

When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final id = 56; // int | Project id
final workPackage = WorkPackage(); // WorkPackage | Work package to add to the project
final notify = true; // bool | Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.

try {
    final result = api_instance.apiV3ProjectsIdWorkPackagesPost(id, workPackage, notify);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3ProjectsIdWorkPackagesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project id | 
 **workPackage** | [**WorkPackage**](WorkPackage.md)| Work package to add to the project | 
 **notify** | **bool**| Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user. | [optional] [default to true]

### Return type

[**WorkPackage**](WorkPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsProjectIdAvailableAssigneesGet**
> Users apiV3ProjectsProjectIdAvailableAssigneesGet(projectId)

Available assignees

Gets a list of users that can be assigned to work packages in the given project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final projectId = 56; // int | Project id

try {
    final result = api_instance.apiV3ProjectsProjectIdAvailableAssigneesGet(projectId);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3ProjectsProjectIdAvailableAssigneesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**| Project id | 

### Return type

[**Users**](Users.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsProjectIdAvailableResponsiblesGet**
> Users apiV3ProjectsProjectIdAvailableResponsiblesGet(projectId)

Available responsibles

Gets a list of users that can be assigned as the responsible of a work package in the given project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final projectId = 56; // int | Project id

try {
    final result = api_instance.apiV3ProjectsProjectIdAvailableResponsiblesGet(projectId);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3ProjectsProjectIdAvailableResponsiblesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**| Project id | 

### Return type

[**Users**](Users.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesFormPost**
> apiV3WorkPackagesFormPost()

Work Package Create Form

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();

try {
    api_instance.apiV3WorkPackagesFormPost();
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesFormPost: $e\n');
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

# **apiV3WorkPackagesGet**
> WorkPackages apiV3WorkPackagesGet(offset, pageSize, filters, sortBy, groupBy, showSums)

List Work Packages

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final offset = 56; // int | Page number inside the requested collection.
final pageSize = 56; // int | Number of elements to display per page.
final filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
final sortBy = sortBy_example; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.
final groupBy = groupBy_example; // String | The column to group by.
final showSums = true; // bool | Indicates whether properties should be summed up if they support it.

try {
    final result = api_instance.apiV3WorkPackagesGet(offset, pageSize, filters, sortBy, groupBy, showSums);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesGet: $e\n');
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

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdActivitiesGet**
> apiV3WorkPackagesIdActivitiesGet(id)

List work package activities

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final id = 56; // int | Work package id

try {
    api_instance.apiV3WorkPackagesIdActivitiesGet(id);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesIdActivitiesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdActivitiesPost**
> apiV3WorkPackagesIdActivitiesPost(id, notify, comment)

Comment work package

Creates an activity for the selected work package and, on success, returns the updated activity.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final id = 56; // int | Work package id
final notify = true; // bool | Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
final comment = Comment(); // Comment | 

try {
    api_instance.apiV3WorkPackagesIdActivitiesPost(id, notify, comment);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesIdActivitiesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 
 **notify** | **bool**| Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user. | [optional] [default to true]
 **comment** | [**Comment**](Comment.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdAvailableProjectsGet**
> apiV3WorkPackagesIdAvailableProjectsGet(id)

Available projects

Gets a list of projects that are available as projects to which the work package can be moved.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final id = 56; // int | work package id

try {
    api_instance.apiV3WorkPackagesIdAvailableProjectsGet(id);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesIdAvailableProjectsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| work package id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final id = 789; // int | ID of workpackage to return
final pageSize = 56; // int | Maximum number of candidates to list (default 10)
final filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
final query = query_example; // String | Shortcut for filtering by ID or subject
final type = type_example; // String | Type of relation to find candidates for (default \"relates\")

try {
    api_instance.apiV3WorkPackagesIdAvailableRelationCandidatesGet(id, pageSize, filters, query, type);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesIdAvailableRelationCandidatesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of workpackage to return | 
 **pageSize** | **int**| Maximum number of candidates to list (default 10) | [optional] 
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. | [optional] 
 **query** | **String**| Shortcut for filtering by ID or subject | [optional] 
 **type** | **String**| Type of relation to find candidates for (default \"relates\") | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdAvailableWatchersGet**
> apiV3WorkPackagesIdAvailableWatchersGet(id)

Available watchers

Gets a list of users that are able to be watchers of the specified work package.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final id = 56; // int | work package id

try {
    api_instance.apiV3WorkPackagesIdAvailableWatchersGet(id);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesIdAvailableWatchersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| work package id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdDelete**
> apiV3WorkPackagesIdDelete(id)

Delete Work Package

Deletes the work package, as well as:  * all associated time entries  * its hierarchy of child work packages

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final id = 56; // int | Work package id

try {
    api_instance.apiV3WorkPackagesIdDelete(id);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdFormPost**
> apiV3WorkPackagesIdFormPost(id)

Work Package Edit Form

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final id = 56; // int | ID of the work package being modified

try {
    api_instance.apiV3WorkPackagesIdFormPost(id);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesIdFormPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the work package being modified | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdGet**
> WorkPackage apiV3WorkPackagesIdGet(id)

View Work Package

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final id = 56; // int | Work package id

try {
    final result = api_instance.apiV3WorkPackagesIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 

### Return type

[**WorkPackage**](WorkPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdPatch**
> WorkPackage apiV3WorkPackagesIdPatch(id, notify, workPackage)

Edit Work Package

When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.  Additionally to the fields the client wants to change, it is mandatory to provide the value of `lockVersion` which was received by the `GET` request this change originates from.  The value of `lockVersion` is used to implement [optimistic locking](http://en.wikipedia.org/wiki/Optimistic_concurrency_control).

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final id = 56; // int | Work package id
final notify = true; // bool | Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
final workPackage = WorkPackage(); // WorkPackage | 

try {
    final result = api_instance.apiV3WorkPackagesIdPatch(id, notify, workPackage);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 
 **notify** | **bool**| Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user. | [optional] [default to true]
 **workPackage** | [**WorkPackage**](WorkPackage.md)|  | [optional] 

### Return type

[**WorkPackage**](WorkPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final id = 56; // int | ID of the relation being modified

try {
    api_instance.apiV3WorkPackagesIdRelationsFormPost(id);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesIdRelationsFormPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the relation being modified | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdRevisionsGet**
> apiV3WorkPackagesIdRevisionsGet(id)

Revisions

Gets a list of revisions that are linked to this work package, e.g., because it is referenced in the commit message of the revision. Only linked revisions from repositories are shown if the user has the view changesets permission in the defining project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final id = 56; // int | work package id

try {
    api_instance.apiV3WorkPackagesIdRevisionsGet(id);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesIdRevisionsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| work package id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesPost**
> WorkPackage apiV3WorkPackagesPost(workPackage, notify)

Create Work Package

When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  A project link must be set when creating work packages through this route.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final workPackage = WorkPackage(); // WorkPackage | Work package to add (a project link ist requried)
final notify = true; // bool | Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.

try {
    final result = api_instance.apiV3WorkPackagesPost(workPackage, notify);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workPackage** | [**WorkPackage**](WorkPackage.md)| Work package to add (a project link ist requried) | 
 **notify** | **bool**| Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user. | [optional] [default to true]

### Return type

[**WorkPackage**](WorkPackage.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesSchemasGet**
> apiV3WorkPackagesSchemasGet(filters)

List Work Package Schemas

List work package schemas.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + id: The schema's id

try {
    api_instance.apiV3WorkPackagesSchemasGet(filters);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesSchemasGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + id: The schema's id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesSchemasIdentifierGet**
> apiV3WorkPackagesSchemasIdentifierGet(identifier)

View Work Package Schema

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final identifier = identifier_example; // String | Identifier of the schema

try {
    api_instance.apiV3WorkPackagesSchemasIdentifierGet(identifier);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesSchemasIdentifierGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the schema | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesWorkPackageIdRelationsGet**
> apiV3WorkPackagesWorkPackageIdRelationsGet(workPackageId)

List relations

Lists all relations this work package is involved in.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final workPackageId = 56; // int | Work package id

try {
    api_instance.apiV3WorkPackagesWorkPackageIdRelationsGet(workPackageId);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesWorkPackageIdRelationsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workPackageId** | **int**| Work package id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final workPackageId = 56; // int | Work package id

try {
    api_instance.apiV3WorkPackagesWorkPackageIdRelationsPost(workPackageId);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesWorkPackageIdRelationsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workPackageId** | **int**| Work package id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

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
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final workPackageId = 56; // int | Work package id

try {
    api_instance.apiV3WorkPackagesWorkPackageIdWatchersGet(workPackageId);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesWorkPackageIdWatchersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workPackageId** | **int**| Work package id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesWorkPackageIdWatchersIdDelete**
> apiV3WorkPackagesWorkPackageIdWatchersIdDelete(workPackageId, id)

Remove watcher

Removes the specified user from the list of watchers for the given work package.  If the request succeeds, the specified user is not watching the work package anymore.  *Note: This might also be the case, if the specified user did not watch the work package prior to the request.*

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final workPackageId = 56; // int | Work package id
final id = 56; // int | User id

try {
    api_instance.apiV3WorkPackagesWorkPackageIdWatchersIdDelete(workPackageId, id);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesWorkPackageIdWatchersIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workPackageId** | **int**| Work package id | 
 **id** | **int**| User id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesWorkPackageIdWatchersPost**
> apiV3WorkPackagesWorkPackageIdWatchersPost(workPackageId, inlineObject6)

Add watcher

Adds a watcher to the specified work package.  The request is expected to contain a single JSON object, that contains a link object under the `user` key.  The response will be user added as watcher. In case the user was already watching the work package an `HTTP 200` is returned, an `HTTP 201` if the user was added as a new watcher.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = WorkPackagesApi();
final workPackageId = 56; // int | Work package id
final inlineObject6 = InlineObject6(); // InlineObject6 | 

try {
    api_instance.apiV3WorkPackagesWorkPackageIdWatchersPost(workPackageId, inlineObject6);
} catch (e) {
    print('Exception when calling WorkPackagesApi->apiV3WorkPackagesWorkPackageIdWatchersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workPackageId** | **int**| Work package id | 
 **inlineObject6** | [**InlineObject6**](InlineObject6.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

