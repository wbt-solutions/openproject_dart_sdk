# openproject_dart_sdk.api.QueryFilterInstanceSchemaApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listQueryFilterInstanceSchemas**](QueryFilterInstanceSchemaApi.md#listqueryfilterinstanceschemas) | **GET** /api/v3/queries/filter_instance_schemas | List Query Filter Instance Schemas
[**listQueryFilterInstanceSchemasForProject**](QueryFilterInstanceSchemaApi.md#listqueryfilterinstanceschemasforproject) | **GET** /api/v3/projects/{id}/queries/filter_instance_schemas | List Query Filter Instance Schemas for Project
[**viewQueryFilterInstanceSchema**](QueryFilterInstanceSchemaApi.md#viewqueryfilterinstanceschema) | **GET** /api/v3/queries/filter_instance_schemas/{id} | View Query Filter Instance Schema


# **listQueryFilterInstanceSchemas**
> Object listQueryFilterInstanceSchemas()

List Query Filter Instance Schemas

Returns the list of QueryFilterInstanceSchemas defined for a global query. That is a query not assigned to a project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueryFilterInstanceSchemaApi();

try {
    final result = api_instance.listQueryFilterInstanceSchemas();
    print(result);
} catch (e) {
    print('Exception when calling QueryFilterInstanceSchemaApi->listQueryFilterInstanceSchemas: $e\n');
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

# **listQueryFilterInstanceSchemasForProject**
> Object listQueryFilterInstanceSchemasForProject(id)

List Query Filter Instance Schemas for Project

Returns the list of QueryFilterInstanceSchemas defined for a query of the specified project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueryFilterInstanceSchemaApi();
final id = 1; // int | Project id

try {
    final result = api_instance.listQueryFilterInstanceSchemasForProject(id);
    print(result);
} catch (e) {
    print('Exception when calling QueryFilterInstanceSchemaApi->listQueryFilterInstanceSchemasForProject: $e\n');
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

# **viewQueryFilterInstanceSchema**
> QueryFilterInstanceSchemaModel viewQueryFilterInstanceSchema(id)

View Query Filter Instance Schema

Retrieve an individual QueryFilterInstanceSchema as identified by the id parameter.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueryFilterInstanceSchemaApi();
final id = author; // String | QueryFilterInstanceSchema identifier. The identifier is the filter identifier.

try {
    final result = api_instance.viewQueryFilterInstanceSchema(id);
    print(result);
} catch (e) {
    print('Exception when calling QueryFilterInstanceSchemaApi->viewQueryFilterInstanceSchema: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| QueryFilterInstanceSchema identifier. The identifier is the filter identifier. | 

### Return type

[**QueryFilterInstanceSchemaModel**](QueryFilterInstanceSchemaModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

