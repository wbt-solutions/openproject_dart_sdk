# openproject_dart_sdk.api.FormsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**showOrValidateForm**](FormsApi.md#showorvalidateform) | **POST** /api/v3/example/form | show or validate form


# **showOrValidateForm**
> Object showOrValidateForm(showOrValidateFormRequest)

show or validate form

This is an example of how a form might look like. Note that this endpoint does not exist in the actual implementation.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FormsApi();
final showOrValidateFormRequest = ShowOrValidateFormRequest(); // ShowOrValidateFormRequest | 

try {
    final result = api_instance.showOrValidateForm(showOrValidateFormRequest);
    print(result);
} catch (e) {
    print('Exception when calling FormsApi->showOrValidateForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **showOrValidateFormRequest** | [**ShowOrValidateFormRequest**](ShowOrValidateFormRequest.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

