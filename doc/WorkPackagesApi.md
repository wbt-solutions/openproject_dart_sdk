# openproject_dart_sdk.api.WorkPackagesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addWatcher**](WorkPackagesApi.md#addwatcher) | **POST** /api/v3/work_packages/{id}/watchers | Add watcher
[**availableProjectsForWorkPackage**](WorkPackagesApi.md#availableprojectsforworkpackage) | **GET** /api/v3/work_packages/{id}/available_projects | Available projects for work package
[**availableResponsibles**](WorkPackagesApi.md#availableresponsibles) | **GET** /api/v3/projects/{id}/available_responsibles | Available responsibles
[**availableWatchers**](WorkPackagesApi.md#availablewatchers) | **GET** /api/v3/work_packages/{id}/available_watchers | Available watchers
[**commentWorkPackage**](WorkPackagesApi.md#commentworkpackage) | **POST** /api/v3/work_packages/{id}/activities | Comment work package
[**createProjectWorkPackage**](WorkPackagesApi.md#createprojectworkpackage) | **POST** /api/v3/projects/{id}/work_packages | Create work package in project
[**createRelation**](WorkPackagesApi.md#createrelation) | **POST** /api/v3/work_packages/{id}/relations | Create Relation
[**createWorkPackage**](WorkPackagesApi.md#createworkpackage) | **POST** /api/v3/work_packages | Create Work Package
[**createWorkPackageFileLink**](WorkPackagesApi.md#createworkpackagefilelink) | **POST** /api/v3/work_packages/{id}/file_links | Creates file links.
[**deleteWorkPackage**](WorkPackagesApi.md#deleteworkpackage) | **DELETE** /api/v3/work_packages/{id} | Delete Work Package
[**getProjectWorkPackageCollection**](WorkPackagesApi.md#getprojectworkpackagecollection) | **GET** /api/v3/projects/{id}/work_packages | Get work packages of project
[**listAvailableRelationCandidates**](WorkPackagesApi.md#listavailablerelationcandidates) | **GET** /api/v3/work_packages/{id}/available_relation_candidates | Available relation candidates
[**listRelations**](WorkPackagesApi.md#listrelations) | **GET** /api/v3/work_packages/{id}/relations | List relations
[**listWatchers**](WorkPackagesApi.md#listwatchers) | **GET** /api/v3/work_packages/{id}/watchers | List watchers
[**listWorkPackageActivities**](WorkPackagesApi.md#listworkpackageactivities) | **GET** /api/v3/work_packages/{id}/activities | List work package activities
[**listWorkPackageFileLinks**](WorkPackagesApi.md#listworkpackagefilelinks) | **GET** /api/v3/work_packages/{id}/file_links | Gets all file links of a work package
[**listWorkPackageSchemas**](WorkPackagesApi.md#listworkpackageschemas) | **GET** /api/v3/work_packages/schemas | List Work Package Schemas
[**listWorkPackages**](WorkPackagesApi.md#listworkpackages) | **GET** /api/v3/work_packages | List work packages
[**projectAvailableAssignees**](WorkPackagesApi.md#projectavailableassignees) | **GET** /api/v3/projects/{id}/available_assignees | Project Available assignees
[**removeWatcher**](WorkPackagesApi.md#removewatcher) | **DELETE** /api/v3/work_packages/{id}/watchers/{user_id} | Remove watcher
[**revisions**](WorkPackagesApi.md#revisions) | **GET** /api/v3/work_packages/{id}/revisions | Revisions
[**updateWorkPackage**](WorkPackagesApi.md#updateworkpackage) | **PATCH** /api/v3/work_packages/{id} | Update a Work Package
[**viewWorkPackage**](WorkPackagesApi.md#viewworkpackage) | **GET** /api/v3/work_packages/{id} | View Work Package
[**viewWorkPackageSchema**](WorkPackagesApi.md#viewworkpackageschema) | **GET** /api/v3/work_packages/schemas/{identifier} | View Work Package Schema
[**workPackageAvailableAssignees**](WorkPackagesApi.md#workpackageavailableassignees) | **GET** /api/v3/work_packages/{id}/available_assignees | Work Package Available assignees
[**workPackageCreateForm**](WorkPackagesApi.md#workpackagecreateform) | **POST** /api/v3/work_packages/form | Work Package Create Form
[**workPackageCreateFormForProject**](WorkPackagesApi.md#workpackagecreateformforproject) | **POST** /api/v3/projects/{id}/work_packages/form | Work Package Create Form For Project
[**workPackageEditForm**](WorkPackagesApi.md#workpackageeditform) | **POST** /api/v3/work_packages/{id}/form | Work Package Edit Form


# **addWatcher**
> addWatcher(id, addWatcherRequest)

Add watcher

Adds a watcher to the specified work package.  The request is expected to contain a single JSON object, that contains a link object under the `user` key.  The response will be user added as watcher. In case the user was already watching the work package an `HTTP 200` is returned, an `HTTP 201` if the user was added as a new watcher.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Work package id
final addWatcherRequest = AddWatcherRequest(); // AddWatcherRequest | 

try {
    api_instance.addWatcher(id, addWatcherRequest);
} catch (e) {
    print('Exception when calling WorkPackagesApi->addWatcher: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 
 **addWatcherRequest** | [**AddWatcherRequest**](AddWatcherRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availableProjectsForWorkPackage**
> Object availableProjectsForWorkPackage(id)

Available projects for work package

Gets a list of projects that are available as projects to which the work package can be moved.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | work package id

try {
    final result = api_instance.availableProjectsForWorkPackage(id);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->availableProjectsForWorkPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| work package id | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availableResponsibles**
> Object availableResponsibles(id)

Available responsibles

Gets a list of users that can be assigned as the responsible of a work package in the given project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Project id

try {
    final result = api_instance.availableResponsibles(id);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->availableResponsibles: $e\n');
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

# **availableWatchers**
> Object availableWatchers(id)

Available watchers

Gets a list of users that are able to be watchers of the specified work package.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | work package id

try {
    final result = api_instance.availableWatchers(id);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->availableWatchers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| work package id | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **commentWorkPackage**
> commentWorkPackage(id, notify, commentWorkPackageRequest)

Comment work package

Creates an activity for the selected work package and, on success, returns the updated activity.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Work package id
final notify = false; // bool | Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
final commentWorkPackageRequest = CommentWorkPackageRequest(); // CommentWorkPackageRequest | 

try {
    api_instance.commentWorkPackage(id, notify, commentWorkPackageRequest);
} catch (e) {
    print('Exception when calling WorkPackagesApi->commentWorkPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 
 **notify** | **bool**| Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user. | [optional] [default to true]
 **commentWorkPackageRequest** | [**CommentWorkPackageRequest**](CommentWorkPackageRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProjectWorkPackage**
> WorkPackageModel createProjectWorkPackage(id, notify)

Create work package in project

When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Project id
final notify = false; // bool | Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.

try {
    final result = api_instance.createProjectWorkPackage(id, notify);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->createProjectWorkPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project id | 
 **notify** | **bool**| Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user. | [optional] [default to true]

### Return type

[**WorkPackageModel**](WorkPackageModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRelation**
> createRelation(id)

Create Relation

When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Relation can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Work package id

try {
    api_instance.createRelation(id);
} catch (e) {
    print('Exception when calling WorkPackagesApi->createRelation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkPackage**
> WorkPackageModel createWorkPackage(notify, workPackageModel)

Create Work Package

When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  A project link must be set when creating work packages through this route.  When setting start date, finish date, and duration together, their correctness will be checked and a 422 error will be returned if one value does not match with the two others. You can make the server compute a value: set only two values in the request and the third one will be computed and returned in the response. For instance, when sending `{ \"startDate\": \"2022-08-23\", duration: \"P2D\" }`, the response will include `{ \"dueDate\": \"2022-08-24\" }`.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final notify = false; // bool | Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
final workPackageModel = WorkPackageModel(); // WorkPackageModel | 

try {
    final result = api_instance.createWorkPackage(notify, workPackageModel);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->createWorkPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notify** | **bool**| Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user. | [optional] [default to true]
 **workPackageModel** | [**WorkPackageModel**](WorkPackageModel.md)|  | [optional] 

### Return type

[**WorkPackageModel**](WorkPackageModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkPackageFileLink**
> FileLinkCollectionReadModel createWorkPackageFileLink(id, fileLinkCollectionWriteModel)

Creates file links.

Creates file links on a work package.  The request is interpreted as a bulk insert, where every element of the collection is validated separately. Each element contains the origin meta data and a link to the storage, the file link is about to point to. The storage link can be provided as a resource link with id or as the host url.  The file's id and name are considered mandatory information. The rest of the origin meta data SHOULD be provided by the client. The _mimeType_ SHOULD be a standard mime type. An empty mime type will be handled as unknown. To link a folder, the custom mime type `application/x-op-directory` MUST be used.  Up to 20 file links can be submitted at once.  If any element data is invalid, no file links will be created.  If a file link with matching origin id, work package, and storage already exists, then it will not create an additional file link or update the meta data. Instead the information from the existing file link will be returned.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1337; // int | Work package id
final fileLinkCollectionWriteModel = FileLinkCollectionWriteModel(); // FileLinkCollectionWriteModel | 

try {
    final result = api_instance.createWorkPackageFileLink(id, fileLinkCollectionWriteModel);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->createWorkPackageFileLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 
 **fileLinkCollectionWriteModel** | [**FileLinkCollectionWriteModel**](FileLinkCollectionWriteModel.md)|  | [optional] 

### Return type

[**FileLinkCollectionReadModel**](FileLinkCollectionReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWorkPackage**
> deleteWorkPackage(id)

Delete Work Package

Deletes the work package, as well as:  - all associated time entries - its hierarchy of child work packages

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Work package id

try {
    api_instance.deleteWorkPackage(id);
} catch (e) {
    print('Exception when calling WorkPackagesApi->deleteWorkPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectWorkPackageCollection**
> WorkPackagesModel getProjectWorkPackageCollection(id, offset, pageSize, filters, sortBy, groupBy, showSums, select)

Get work packages of project

Returns the collection of work packages that are related to the given project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Project id
final offset = 25; // int | Page number inside the requested collection.
final pageSize = 25; // int | Number of elements to display per page.
final filters = [{ "type_id": { "operator": "=", "values": ['1', '2'] }}]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. If no filter is to be applied, the client should send an empty array (`[]`).
final sortBy = [["status", "asc"]]; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint.
final groupBy = status; // String | The column to group by.
final showSums = true; // bool | Indicates whether properties should be summed up if they support it.
final select = total,elements/subject,elements/id,self; // String | Comma separated list of properties to include.

try {
    final result = api_instance.getProjectWorkPackageCollection(id, offset, pageSize, filters, sortBy, groupBy, showSums, select);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->getProjectWorkPackageCollection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project id | 
 **offset** | **int**| Page number inside the requested collection. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page. | [optional] 
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. If no filter is to be applied, the client should send an empty array (`[]`). | [optional] [default to '[{ "status_id": { "operator": "o", "values": null }}]']
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. | [optional] [default to '[["id", "asc"]]']
 **groupBy** | **String**| The column to group by. | [optional] 
 **showSums** | **bool**| Indicates whether properties should be summed up if they support it. | [optional] [default to false]
 **select** | **String**| Comma separated list of properties to include. | [optional] 

### Return type

[**WorkPackagesModel**](WorkPackagesModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAvailableRelationCandidates**
> Object listAvailableRelationCandidates(id, pageSize, filters, query, type, sortBy)

Available relation candidates



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Project id
final pageSize = 25; // int | Maximum number of candidates to list (default 10)
final filters = [{ "status_id": { "operator": "o", "values": null } }]; // String | JSON specifying filter conditions. Accepts the same filters as the [work packages](https://www.openproject.org/docs/api/endpoints/work-packages/) endpoint.
final query = "rollout"; // String | Shortcut for filtering by ID or subject
final type = "follows"; // String | Type of relation to find candidates for (default \"relates\")
final sortBy = [["status", "asc"]]; // String | JSON specifying sort criteria. Accepts the same sort criteria as the [work packages](https://www.openproject.org/docs/api/endpoints/work-packages/) endpoint.

try {
    final result = api_instance.listAvailableRelationCandidates(id, pageSize, filters, query, type, sortBy);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->listAvailableRelationCandidates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project id | 
 **pageSize** | **int**| Maximum number of candidates to list (default 10) | [optional] 
 **filters** | **String**| JSON specifying filter conditions. Accepts the same filters as the [work packages](https://www.openproject.org/docs/api/endpoints/work-packages/) endpoint. | [optional] 
 **query** | **String**| Shortcut for filtering by ID or subject | [optional] 
 **type** | **String**| Type of relation to find candidates for (default \"relates\") | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same sort criteria as the [work packages](https://www.openproject.org/docs/api/endpoints/work-packages/) endpoint. | [optional] [default to '[["id", "asc"]]']

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRelations**
> listRelations(id)

List relations

Lists all relations this work package is involved in.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Work package id

try {
    api_instance.listRelations(id);
} catch (e) {
    print('Exception when calling WorkPackagesApi->listRelations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWatchers**
> WatchersModel listWatchers(id)

List watchers



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Work package id

try {
    final result = api_instance.listWatchers(id);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->listWatchers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 

### Return type

[**WatchersModel**](WatchersModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkPackageActivities**
> Object listWorkPackageActivities(id)

List work package activities



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Work package id

try {
    final result = api_instance.listWorkPackageActivities(id);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->listWorkPackageActivities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkPackageFileLinks**
> FileLinkCollectionReadModel listWorkPackageFileLinks(id, filters)

Gets all file links of a work package

Gets all file links of a work package.  As a side effect, for every file link a request is sent to the storage's origin to fetch live data and patch the file link's data before returning, as well as retrieving permissions of the user on this origin file. 

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1337; // int | Work package id
final filters = [{"storage":{"operator":"=","values":["42"]}}]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. The following filters are supported:  - storage

try {
    final result = api_instance.listWorkPackageFileLinks(id, filters);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->listWorkPackageFileLinks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. The following filters are supported:  - storage | [optional] 

### Return type

[**FileLinkCollectionReadModel**](FileLinkCollectionReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkPackageSchemas**
> Object listWorkPackageSchemas(filters)

List Work Package Schemas

List work package schemas.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final filters = [{ "id": { "operator": "=", "values": ["12-1", "14-2"] } }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: The schema's id  Schema id has the form `project_id-work_package_type_id`.

try {
    final result = api_instance.listWorkPackageSchemas(filters);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->listWorkPackageSchemas: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: The schema's id  Schema id has the form `project_id-work_package_type_id`. | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkPackages**
> WorkPackagesModel listWorkPackages(offset, pageSize, filters, sortBy, groupBy, showSums, select, timestamps)

List work packages

Returns a collection of work packages.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final offset = 25; // int | Page number inside the requested collection.
final pageSize = 25; // int | Number of elements to display per page.
final filters = [{ "type_id": { "operator": "=", "values": ["1", "2"] }}]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. If no filter is to be applied, the client should send an empty array (`[]`), otherwise a default filter is applied. A Currently supported filters are (there are additional filters added by modules):  - assigned_to - assignee_or_group - attachment_base - attachment_content - attachment_file_name - author - blocked - blocks - category - comment - created_at - custom_field - dates_interval - description - done_ratio - due_date - duplicated - duplicates - duration - estimated_hours - file_link_origin_id - follows - group - id - includes - linkable_to_storage_id - linkable_to_storage_url - manual_sort - milestone - only_subproject - parent - partof - precedes - principal_base - priority - project - relatable - relates - required - requires - responsible - role - search - start_date - status - storage_id - storage_url - subject - subject_or_id - subproject - type - typeahead - updated_at - version - watcher - work_package
final sortBy = [["status", "asc"]]; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint.
final groupBy = status; // String | The column to group by.
final showSums = true; // bool | Indicates whether properties should be summed up if they support it.
final select = total,elements/subject,elements/id,self; // String | Comma separated list of properties to include.
final timestamps = 2022-01-01T00:00:00Z,PT0S; // String | In order to perform a [baseline comparison](/docs/api/baseline-comparisons), you may provide one or several timestamps in ISO-8601 format as comma-separated list. The timestamps may be absolute or relative, such as ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\".  Usually, the first timestamp is the baseline date, the last timestamp is the current date. Values older than 1 day are accepted only with valid Enterprise Token available.

try {
    final result = api_instance.listWorkPackages(offset, pageSize, filters, sortBy, groupBy, showSums, select, timestamps);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->listWorkPackages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Page number inside the requested collection. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page. | [optional] 
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. If no filter is to be applied, the client should send an empty array (`[]`), otherwise a default filter is applied. A Currently supported filters are (there are additional filters added by modules):  - assigned_to - assignee_or_group - attachment_base - attachment_content - attachment_file_name - author - blocked - blocks - category - comment - created_at - custom_field - dates_interval - description - done_ratio - due_date - duplicated - duplicates - duration - estimated_hours - file_link_origin_id - follows - group - id - includes - linkable_to_storage_id - linkable_to_storage_url - manual_sort - milestone - only_subproject - parent - partof - precedes - principal_base - priority - project - relatable - relates - required - requires - responsible - role - search - start_date - status - storage_id - storage_url - subject - subject_or_id - subproject - type - typeahead - updated_at - version - watcher - work_package | [optional] [default to '[{ "status_id": { "operator": "o", "values": null }}]']
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. | [optional] [default to '[["id", "asc"]]']
 **groupBy** | **String**| The column to group by. | [optional] 
 **showSums** | **bool**| Indicates whether properties should be summed up if they support it. | [optional] [default to false]
 **select** | **String**| Comma separated list of properties to include. | [optional] 
 **timestamps** | **String**| In order to perform a [baseline comparison](/docs/api/baseline-comparisons), you may provide one or several timestamps in ISO-8601 format as comma-separated list. The timestamps may be absolute or relative, such as ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\".  Usually, the first timestamp is the baseline date, the last timestamp is the current date. Values older than 1 day are accepted only with valid Enterprise Token available. | [optional] [default to 'PT0S']

### Return type

[**WorkPackagesModel**](WorkPackagesModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectAvailableAssignees**
> Object projectAvailableAssignees(id)

Project Available assignees

Gets a list of users that can be assigned to work packages in the given project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Project id

try {
    final result = api_instance.projectAvailableAssignees(id);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->projectAvailableAssignees: $e\n');
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

# **removeWatcher**
> removeWatcher(id, userId)

Remove watcher

Removes the specified user from the list of watchers for the given work package.  If the request succeeds, the specified user is not watching the work package anymore.  *Note: This might also be the case, if the specified user did not watch the work package prior to the request.*

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Work package id
final userId = 1; // int | User id

try {
    api_instance.removeWatcher(id, userId);
} catch (e) {
    print('Exception when calling WorkPackagesApi->removeWatcher: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 
 **userId** | **int**| User id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revisions**
> Object revisions(id)

Revisions

Gets a list of revisions that are linked to this work package, e.g., because it is referenced in the commit message of the revision. Only linked revisions from repositories are shown if the user has the view changesets permission in the defining project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Work package id

try {
    final result = api_instance.revisions(id);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->revisions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkPackage**
> WorkPackagePatchModel updateWorkPackage(id, notify, workPackageModel)

Update a Work Package

When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.  Additionally to the fields the client wants to change, it is mandatory to provide the value of `lockVersion` which was received by the `GET` request this change originates from.  The value of `lockVersion` is used to implement [optimistic locking](https://en.wikipedia.org/wiki/Optimistic_concurrency_control).

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 42; // int | Work package id
final notify = false; // bool | Indicates whether change notifications should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
final workPackageModel = WorkPackageModel(); // WorkPackageModel | 

try {
    final result = api_instance.updateWorkPackage(id, notify, workPackageModel);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->updateWorkPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 
 **notify** | **bool**| Indicates whether change notifications should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user. | [optional] [default to true]
 **workPackageModel** | [**WorkPackageModel**](WorkPackageModel.md)|  | [optional] 

### Return type

[**WorkPackagePatchModel**](WorkPackagePatchModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewWorkPackage**
> WorkPackageModel viewWorkPackage(id, timestamps)

View Work Package

Returns the specified work package.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Work package id
final timestamps = 2022-01-01T00:00:00Z,PT0S; // String | In order to perform a [baseline comparison](/docs/api/baseline-comparisons) of the work-package attributes, you may provide one or several timestamps in ISO-8601 format as comma-separated list. The timestamps may be absolute or relative, such as ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\".  Usually, the first timestamp is the baseline date, the last timestamp is the current date. Values older than 1 day are accepted only with valid Enterprise Token available.

try {
    final result = api_instance.viewWorkPackage(id, timestamps);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->viewWorkPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 
 **timestamps** | **String**| In order to perform a [baseline comparison](/docs/api/baseline-comparisons) of the work-package attributes, you may provide one or several timestamps in ISO-8601 format as comma-separated list. The timestamps may be absolute or relative, such as ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\".  Usually, the first timestamp is the baseline date, the last timestamp is the current date. Values older than 1 day are accepted only with valid Enterprise Token available. | [optional] [default to 'PT0S']

### Return type

[**WorkPackageModel**](WorkPackageModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewWorkPackageSchema**
> viewWorkPackageSchema(identifier)

View Work Package Schema



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final identifier = 12-13; // String | Identifier of the schema

try {
    api_instance.viewWorkPackageSchema(identifier);
} catch (e) {
    print('Exception when calling WorkPackagesApi->viewWorkPackageSchema: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the schema | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workPackageAvailableAssignees**
> Object workPackageAvailableAssignees(id)

Work Package Available assignees

Gets a list of users that can be assigned to the given work package.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | Work package id

try {
    final result = api_instance.workPackageAvailableAssignees(id);
    print(result);
} catch (e) {
    print('Exception when calling WorkPackagesApi->workPackageAvailableAssignees: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workPackageCreateForm**
> workPackageCreateForm()

Work Package Create Form



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();

try {
    api_instance.workPackageCreateForm();
} catch (e) {
    print('Exception when calling WorkPackagesApi->workPackageCreateForm: $e\n');
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workPackageCreateFormForProject**
> workPackageCreateFormForProject(id)

Work Package Create Form For Project



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | ID of the project in which the work package will be created

try {
    api_instance.workPackageCreateFormForProject(id);
} catch (e) {
    print('Exception when calling WorkPackagesApi->workPackageCreateFormForProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the project in which the work package will be created | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workPackageEditForm**
> workPackageEditForm(id, workPackageModel)

Work Package Edit Form

When calling this endpoint, the client provides a single object containing the properties and links to be edited, in the body.  Note that it is only allowed to provide properties or links supporting the write operation.  When setting start date, finish date, and duration together, their correctness will be checked and a 422 error will be returned if one value does not match with the two others. You can make the server compute a value: set only two values in the request and the third one will be computed and returned in the response. For instance, when sending `{ \"startDate\": \"2022-08-23\", duration: \"P2D\" }`, the response will include `{ \"dueDate\": \"2022-08-24\" }`.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkPackagesApi();
final id = 1; // int | ID of the work package being modified
final workPackageModel = WorkPackageModel(); // WorkPackageModel | 

try {
    api_instance.workPackageEditForm(id, workPackageModel);
} catch (e) {
    print('Exception when calling WorkPackagesApi->workPackageEditForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the work package being modified | 
 **workPackageModel** | [**WorkPackageModel**](WorkPackageModel.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

