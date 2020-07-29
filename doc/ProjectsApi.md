# openproject_dart_sdk.api.ProjectsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ProjectsAvailableParentProjectsGet**](ProjectsApi.md#apiV3ProjectsAvailableParentProjectsGet) | **GET** /api/v3/projects/available_parent_projects | list available parent project candidates
[**apiV3ProjectsGet**](ProjectsApi.md#apiV3ProjectsGet) | **GET** /api/v3/projects | List projects
[**apiV3ProjectsIdDelete**](ProjectsApi.md#apiV3ProjectsIdDelete) | **DELETE** /api/v3/projects/{id} | delete project
[**apiV3ProjectsIdGet**](ProjectsApi.md#apiV3ProjectsIdGet) | **GET** /api/v3/projects/{id} | View project
[**apiV3ProjectsIdPatch**](ProjectsApi.md#apiV3ProjectsIdPatch) | **PATCH** /api/v3/projects/{id} | update project
[**apiV3ProjectsPost**](ProjectsApi.md#apiV3ProjectsPost) | **POST** /api/v3/projects | create project
[**apiV3VersionsIdProjectsGet**](ProjectsApi.md#apiV3VersionsIdProjectsGet) | **GET** /api/v3/versions/{id}/projects | List projects with version


# **apiV3ProjectsAvailableParentProjectsGet**
> Projects apiV3ProjectsAvailableParentProjectsGet(filters, of_, sortBy)

list available parent project candidates

Lists projects which can become parent to another project. Only sound candidates are returned. For instance a project cannot become parent of itself or it’s children.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = ProjectsApi();
var filters = filters_example; // String | JSON specifying filter conditions.
var of_ = of__example; // String | The id or identifier of the project the parent candidate is determined for
var sortBy = sortBy_example; // String | JSON specifying sort criteria. Accepts the same format as returned by the queries endpoint and allows all the filters and sortBy supported by the project list end point.

try { 
    var result = api_instance.apiV3ProjectsAvailableParentProjectsGet(filters, of_, sortBy);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->apiV3ProjectsAvailableParentProjectsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. | [optional] 
 **of_** | **String**| The id or identifier of the project the parent candidate is determined for | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same format as returned by the queries endpoint and allows all the filters and sortBy supported by the project list end point. | [optional] 

### Return type

[**Projects**](Projects.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsGet**
> Projects apiV3ProjectsGet(filters, sortBy)

List projects

Returns a collection of projects. The collection can be filtered via query parameters similar to how WorkPackages are filtered. In addition to the provided filter, the result set is always limited to only contain projects the client is allowed to see.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = ProjectsApi();
var filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + ancestor: filters projects by their ancestor. A project is not considered to be it's own ancestor.
var sortBy = sortBy_example; // String | JSON specifying sort criteria. Currently supported orders are: + id + name + created_on + public + latest_activity_at + required_disk_space: There might also be additional orders based on the custom fields that have been configured.

try { 
    var result = api_instance.apiV3ProjectsGet(filters, sortBy);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->apiV3ProjectsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + ancestor: filters projects by their ancestor. A project is not considered to be it&#39;s own ancestor. | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. Currently supported orders are: + id + name + created_on + public + latest_activity_at + required_disk_space: There might also be additional orders based on the custom fields that have been configured. | [optional] 

### Return type

[**Projects**](Projects.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsIdDelete**
> apiV3ProjectsIdDelete(id)

delete project

Deletes the project permanently. As this is a lengthy process, the actual deletion is carried out asynchronously. So the project might exist well after the request has returned successfully. To prevent unwanted changes to the project scheduled for deletion, it is archived at once.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = ProjectsApi();
var id = 56; // int | Project id

try { 
    api_instance.apiV3ProjectsIdDelete(id);
} catch (e) {
    print("Exception when calling ProjectsApi->apiV3ProjectsIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsIdGet**
> Project apiV3ProjectsIdGet(id)

View project

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = ProjectsApi();
var id = 56; // int | Project id

try { 
    var result = api_instance.apiV3ProjectsIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->apiV3ProjectsIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project id | 

### Return type

[**Project**](Project.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsIdPatch**
> Project apiV3ProjectsIdPatch(id, project)

update project

Updates the given project by applying the attributes provided in the body.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = ProjectsApi();
var id = 56; // int | Project id
var project = Project(); // Project | Project changes

try { 
    var result = api_instance.apiV3ProjectsIdPatch(id, project);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->apiV3ProjectsIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project id | 
 **project** | [**Project**](Project.md)| Project changes | 

### Return type

[**Project**](Project.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsPost**
> Project apiV3ProjectsPost(project, filters, sortBy)

create project

Creates a new project, applying the attributes provided in the body. You can use the form and schema to be retrieve the valid attribute values and by that be guided towards successful creation.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = ProjectsApi();
var project = Project(); // Project | New project attributes
var filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + ancestor: filters projects by their ancestor. A project is not considered to be it's own ancestor.
var sortBy = sortBy_example; // String | JSON specifying sort criteria. Currently supported orders are: + id + name + created_on + public + latest_activity_at + required_disk_space: There might also be additional orders based on the custom fields that have been configured.

try { 
    var result = api_instance.apiV3ProjectsPost(project, filters, sortBy);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->apiV3ProjectsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | [**Project**](Project.md)| New project attributes | 
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + ancestor: filters projects by their ancestor. A project is not considered to be it&#39;s own ancestor. | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. Currently supported orders are: + id + name + created_on + public + latest_activity_at + required_disk_space: There might also be additional orders based on the custom fields that have been configured. | [optional] 

### Return type

[**Project**](Project.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3VersionsIdProjectsGet**
> apiV3VersionsIdProjectsGet(id)

List projects with version

This endpoint lists the projects where the given version is available.  The projects returned depend on the sharing settings of the given version, but are also limited to the projects that the current user is allowed to see.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = ProjectsApi();
var id = 56; // int | Version id

try { 
    api_instance.apiV3VersionsIdProjectsGet(id);
} catch (e) {
    print("Exception when calling ProjectsApi->apiV3VersionsIdProjectsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Version id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

