# openproject_dart_sdk.api.GroupsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroup**](GroupsApi.md#creategroup) | **POST** /api/v3/groups | Create group
[**deleteGroup**](GroupsApi.md#deletegroup) | **DELETE** /api/v3/groups/{id} | Delete group
[**getGroup**](GroupsApi.md#getgroup) | **GET** /api/v3/groups/{id} | Get group
[**listGroups**](GroupsApi.md#listgroups) | **GET** /api/v3/groups | List groups
[**updateGroup**](GroupsApi.md#updategroup) | **PATCH** /api/v3/groups/{id} | Update group


# **createGroup**
> GroupModel createGroup(groupWriteModel)

Create group

Creates a new group applying the attributes provided in the body.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupsApi();
final groupWriteModel = GroupWriteModel(); // GroupWriteModel | 

try {
    final result = api_instance.createGroup(groupWriteModel);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->createGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupWriteModel** | [**GroupWriteModel**](GroupWriteModel.md)|  | [optional] 

### Return type

[**GroupModel**](GroupModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroup**
> deleteGroup(id)

Delete group

Deletes the group.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupsApi();
final id = 1; // int | Group id

try {
    api_instance.deleteGroup(id);
} catch (e) {
    print('Exception when calling GroupsApi->deleteGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Group id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroup**
> GroupModel getGroup(id)

Get group

Fetches a group resource.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupsApi();
final id = 1; // int | Group id

try {
    final result = api_instance.getGroup(id);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Group id | 

### Return type

[**GroupModel**](GroupModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGroups**
> GroupCollectionModel listGroups(sortBy, select)

List groups

Returns a collection of groups. The client can choose to filter the groups similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain groups, for which the requesting client has sufficient permissions (*view_members*, *manage_members*).

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupsApi();
final sortBy = [["id", "asc"]]; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key  + created_at: Sort by group creation datetime  + updated_at: Sort by the time the group was updated last
final select = total,elements/name,elements/self,self; // String | Comma separated list of properties to include.

try {
    final result = api_instance.listGroups(sortBy, select);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->listGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key  + created_at: Sort by group creation datetime  + updated_at: Sort by the time the group was updated last | [optional] [default to '[["id", "asc"]]']
 **select** | **String**| Comma separated list of properties to include. | [optional] 

### Return type

[**GroupCollectionModel**](GroupCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroup**
> GroupModel updateGroup(id, groupWriteModel)

Update group

Updates the given group by applying the attributes provided in the body.  Please note that the `members` array provided will override the existing set of members (similar to a PUT). A client thus has to provide the complete list of members the group is to have after the PATCH even if only one member is to be added.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = GroupsApi();
final id = 1; // int | Group id
final groupWriteModel = GroupWriteModel(); // GroupWriteModel | 

try {
    final result = api_instance.updateGroup(id, groupWriteModel);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->updateGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Group id | 
 **groupWriteModel** | [**GroupWriteModel**](GroupWriteModel.md)|  | [optional] 

### Return type

[**GroupModel**](GroupModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

