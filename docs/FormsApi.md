# swagger.api.FormsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ExampleFormPost**](FormsApi.md#apiV3ExampleFormPost) | **POST** /api/v3/example/form | show or validate form


# **apiV3ExampleFormPost**
> apiV3ExampleFormPost(body)

show or validate form

This is an example of how a form might look like. Note that this endpoint does not exist in the actual implementation.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new FormsApi();
var body = new Body2(); // Body2 | 

try { 
    api_instance.apiV3ExampleFormPost(body);
} catch (e) {
    print("Exception when calling FormsApi->apiV3ExampleFormPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body2**](Body2.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

