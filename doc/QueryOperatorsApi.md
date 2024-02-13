# openproject_dart_sdk.api.QueryOperatorsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**viewQueryOperator**](QueryOperatorsApi.md#viewqueryoperator) | **GET** /api/v3/queries/operators/{id} | View Query Operator


# **viewQueryOperator**
> QueryOperatorModel viewQueryOperator(id)

View Query Operator

Retrieve an individual QueryOperator as identified by the `id` parameter.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueryOperatorsApi();
final id = !; // String | QueryOperator id

try {
    final result = api_instance.viewQueryOperator(id);
    print(result);
} catch (e) {
    print('Exception when calling QueryOperatorsApi->viewQueryOperator: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| QueryOperator id | 

### Return type

[**QueryOperatorModel**](QueryOperatorModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

