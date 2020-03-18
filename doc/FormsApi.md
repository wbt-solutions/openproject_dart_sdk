# openapi.api.FormsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ExampleFormPost**](FormsApi.md#apiV3ExampleFormPost) | **POST** /api/v3/example/form | show or validate form


# **apiV3ExampleFormPost**
> apiV3ExampleFormPost(body)

show or validate form

This is an example of how a form might look like. Note that this endpoint does not exist in the actual implementation.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = FormsApi();
var body = InlineObject2(); // InlineObject2 | 

try { 
    api_instance.apiV3ExampleFormPost(body);
} catch (e) {
    print("Exception when calling FormsApi->apiV3ExampleFormPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InlineObject2**](InlineObject2.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

