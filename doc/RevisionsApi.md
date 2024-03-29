# openproject_dart_sdk.api.RevisionsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3RevisionsIdGet**](RevisionsApi.md#apiv3revisionsidget) | **GET** /api/v3/revisions/{id} | View revision


# **apiV3RevisionsIdGet**
> apiV3RevisionsIdGet(id)

View revision

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RevisionsApi();
final id = 56; // int | Revision id

try {
    api_instance.apiV3RevisionsIdGet(id);
} catch (e) {
    print('Exception when calling RevisionsApi->apiV3RevisionsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Revision id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

