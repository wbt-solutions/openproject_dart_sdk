# openproject_dart_sdk.api.ConfigurationApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**viewConfiguration**](ConfigurationApi.md#viewconfiguration) | **GET** /api/v3/configuration | View configuration


# **viewConfiguration**
> ConfigurationModel viewConfiguration()

View configuration



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = ConfigurationApi();

try {
    final result = api_instance.viewConfiguration();
    print(result);
} catch (e) {
    print('Exception when calling ConfigurationApi->viewConfiguration: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConfigurationModel**](ConfigurationModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

