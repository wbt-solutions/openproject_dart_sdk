# openproject_dart_sdk.api.PreviewingApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**previewMarkdownDocument**](PreviewingApi.md#previewmarkdowndocument) | **POST** /api/v3/render/markdown | Preview Markdown document
[**previewPlainDocument**](PreviewingApi.md#previewplaindocument) | **POST** /api/v3/render/plain | Preview plain document


# **previewMarkdownDocument**
> String previewMarkdownDocument(context)

Preview Markdown document



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = PreviewingApi();
final context = /api/v3/work_packages/42; // String | API-Link to the context in which the rendering occurs, for example a specific work package.  If left out only context-agnostic rendering takes place. Please note that OpenProject features markdown-extensions on top of the extensions GitHub Flavored Markdown (gfm) already provides that can only work given a context (e.g. display attached images).  **Supported contexts:**  * `/api/v3/work_packages/{id}` - an existing work package

try {
    final result = api_instance.previewMarkdownDocument(context);
    print(result);
} catch (e) {
    print('Exception when calling PreviewingApi->previewMarkdownDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **context** | **String**| API-Link to the context in which the rendering occurs, for example a specific work package.  If left out only context-agnostic rendering takes place. Please note that OpenProject features markdown-extensions on top of the extensions GitHub Flavored Markdown (gfm) already provides that can only work given a context (e.g. display attached images).  **Supported contexts:**  * `/api/v3/work_packages/{id}` - an existing work package | [optional] 

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html, application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **previewPlainDocument**
> String previewPlainDocument()

Preview plain document



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = PreviewingApi();

try {
    final result = api_instance.previewPlainDocument();
    print(result);
} catch (e) {
    print('Exception when calling PreviewingApi->previewPlainDocument: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html, application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

