# openproject_dart_sdk.api.RolesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listRoles**](RolesApi.md#listroles) | **GET** /api/v3/roles | List roles
[**viewRole**](RolesApi.md#viewrole) | **GET** /api/v3/roles/{id} | View role


# **listRoles**
> Object listRoles(filters)

List roles

List all defined roles. This includes built in roles like 'Anonymous' and 'Non member'.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = RolesApi();
final filters = [{ "unit": { "operator": "=", "values": ["system"] }" }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + grantable: filters roles based on whether they are selectable for a membership  + unit: filters roles based on the unit ('project' or 'system') for which they are selectable for a membership

try {
    final result = api_instance.listRoles(filters);
    print(result);
} catch (e) {
    print('Exception when calling RolesApi->listRoles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + grantable: filters roles based on whether they are selectable for a membership  + unit: filters roles based on the unit ('project' or 'system') for which they are selectable for a membership | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewRole**
> RoleModel viewRole(id)

View role

Fetch an individual role.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = RolesApi();
final id = 1; // int | Role id

try {
    final result = api_instance.viewRole(id);
    print(result);
} catch (e) {
    print('Exception when calling RolesApi->viewRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Role id | 

### Return type

[**RoleModel**](RoleModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

