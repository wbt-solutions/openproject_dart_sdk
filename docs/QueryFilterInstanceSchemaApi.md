# swagger.api.QueryFilterInstanceSchemaApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ProjectsIdQueriesFilterInstanceSchemasGet**](QueryFilterInstanceSchemaApi.md#apiV3ProjectsIdQueriesFilterInstanceSchemasGet) | **GET** /api/v3/projects/{id}/queries/filter_instance_schemas | List Query Filter Instance Schemas for Project
[**apiV3QueriesFilterInstanceSchemasGet**](QueryFilterInstanceSchemaApi.md#apiV3QueriesFilterInstanceSchemasGet) | **GET** /api/v3/queries/filter_instance_schemas | List Query Filter Instance Schemas
[**apiV3QueriesFilterInstanceSchemasIdentifierGet**](QueryFilterInstanceSchemaApi.md#apiV3QueriesFilterInstanceSchemasIdentifierGet) | **GET** /api/v3/queries/filter_instance_schemas/{identifier} | View Query Filter Instance Schema


# **apiV3ProjectsIdQueriesFilterInstanceSchemasGet**
> apiV3ProjectsIdQueriesFilterInstanceSchemasGet(id)

List Query Filter Instance Schemas for Project

Returns the list of QueryFilterInstanceSchemas defined for a query of the specified project.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new QueryFilterInstanceSchemaApi();
var id = 56; // int | Id of the project.

try { 
    api_instance.apiV3ProjectsIdQueriesFilterInstanceSchemasGet(id);
} catch (e) {
    print("Exception when calling QueryFilterInstanceSchemaApi->apiV3ProjectsIdQueriesFilterInstanceSchemasGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id of the project. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QueriesFilterInstanceSchemasGet**
> apiV3QueriesFilterInstanceSchemasGet()

List Query Filter Instance Schemas

Returns the list of QueryFilterInstanceSchemas defined for a global query. That is a query not assigned to a project.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new QueryFilterInstanceSchemaApi();

try { 
    api_instance.apiV3QueriesFilterInstanceSchemasGet();
} catch (e) {
    print("Exception when calling QueryFilterInstanceSchemaApi->apiV3QueriesFilterInstanceSchemasGet: $e\n");
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

# **apiV3QueriesFilterInstanceSchemasIdentifierGet**
> apiV3QueriesFilterInstanceSchemasIdentifierGet(identifier)

View Query Filter Instance Schema

Retreive an individual QueryFilterInstanceSchema as identified by the id parameter.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new QueryFilterInstanceSchemaApi();
var identifier = identifier_example; // String | QueryFilterInstanceSchema identifier. The identifier is the filter identifier.

try { 
    api_instance.apiV3QueriesFilterInstanceSchemasIdentifierGet(identifier);
} catch (e) {
    print("Exception when calling QueryFilterInstanceSchemaApi->apiV3QueriesFilterInstanceSchemasIdentifierGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| QueryFilterInstanceSchema identifier. The identifier is the filter identifier. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

