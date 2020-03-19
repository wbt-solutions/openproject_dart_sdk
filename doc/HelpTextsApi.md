# openapi.api.HelpTextsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3HelpTextsGet**](HelpTextsApi.md#apiV3HelpTextsGet) | **GET** /api/v3/help_texts | List all help texts
[**apiV3HelpTextsIdGet**](HelpTextsApi.md#apiV3HelpTextsIdGet) | **GET** /api/v3/help_texts/{id} | View help text


# **apiV3HelpTextsGet**
> apiV3HelpTextsGet()

List all help texts

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = HelpTextsApi();

try { 
    api_instance.apiV3HelpTextsGet();
} catch (e) {
    print("Exception when calling HelpTextsApi->apiV3HelpTextsGet: $e\n");
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3HelpTextsIdGet**
> apiV3HelpTextsIdGet(id)

View help text

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = HelpTextsApi();
var id = 56; // int | Help text id

try { 
    api_instance.apiV3HelpTextsIdGet(id);
} catch (e) {
    print("Exception when calling HelpTextsApi->apiV3HelpTextsIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Help text id | [default to null]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

