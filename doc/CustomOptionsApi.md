# openproject_dart_sdk.api.CustomOptionsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**viewCustomOption**](CustomOptionsApi.md#viewcustomoption) | **GET** /api/v3/custom_options/{id} | View Custom Option


# **viewCustomOption**
> CustomOptionModel viewCustomOption(id)

View Custom Option



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = CustomOptionsApi();
final id = 1; // int | The custom option's identifier

try {
    final result = api_instance.viewCustomOption(id);
    print(result);
} catch (e) {
    print('Exception when calling CustomOptionsApi->viewCustomOption: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The custom option's identifier | 

### Return type

[**CustomOptionModel**](CustomOptionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

