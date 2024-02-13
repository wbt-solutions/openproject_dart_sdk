# openproject_dart_sdk.api.HelpTextsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHelpText**](HelpTextsApi.md#gethelptext) | **GET** /api/v3/help_texts/{id} | Get help text
[**listHelpTexts**](HelpTextsApi.md#listhelptexts) | **GET** /api/v3/help_texts | List help texts


# **getHelpText**
> HelpTextModel getHelpText(id)

Get help text

Fetches the help text from the given id.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = HelpTextsApi();
final id = 1; // int | Help text id

try {
    final result = api_instance.getHelpText(id);
    print(result);
} catch (e) {
    print('Exception when calling HelpTextsApi->getHelpText: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Help text id | 

### Return type

[**HelpTextModel**](HelpTextModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listHelpTexts**
> HelpTextCollectionModel listHelpTexts()

List help texts

List the complete collection of help texts.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = HelpTextsApi();

try {
    final result = api_instance.listHelpTexts();
    print(result);
} catch (e) {
    print('Exception when calling HelpTextsApi->listHelpTexts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HelpTextCollectionModel**](HelpTextCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

