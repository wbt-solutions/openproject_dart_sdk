# openproject_dart_sdk.api.WikiPagesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**viewWikiPage**](WikiPagesApi.md#viewwikipage) | **GET** /api/v3/wiki_pages/{id} | View Wiki Page


# **viewWikiPage**
> WikiPageModel viewWikiPage(id)

View Wiki Page

Retrieve an individual wiki page as identified by the id parameter

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WikiPagesApi();
final id = 1; // int | Wiki page identifier

try {
    final result = api_instance.viewWikiPage(id);
    print(result);
} catch (e) {
    print('Exception when calling WikiPagesApi->viewWikiPage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Wiki page identifier | 

### Return type

[**WikiPageModel**](WikiPageModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

