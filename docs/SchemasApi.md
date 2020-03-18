# swagger.api.SchemasApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ExampleSchemaGet**](SchemasApi.md#apiV3ExampleSchemaGet) | **GET** /api/v3/example/schema | view the schema


# **apiV3ExampleSchemaGet**
> apiV3ExampleSchemaGet()

view the schema

This is an example of how a schema might look like. Note that this endpoint does not exist in the actual implementation.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new SchemasApi();

try { 
    api_instance.apiV3ExampleSchemaGet();
} catch (e) {
    print("Exception when calling SchemasApi->apiV3ExampleSchemaGet: $e\n");
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

