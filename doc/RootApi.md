# openproject_dart_sdk.api.RootApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**viewRoot**](RootApi.md#viewroot) | **GET** /api/v3 | View root


# **viewRoot**
> RootModel viewRoot()

View root

Returns the root resource, containing basic information about the server instance and a collection of useful links.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = RootApi();

try {
    final result = api_instance.viewRoot();
    print(result);
} catch (e) {
    print('Exception when calling RootApi->viewRoot: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RootModel**](RootModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

