# openproject_dart_sdk.api.QueryFiltersApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3QueriesFiltersIdGet**](QueryFiltersApi.md#apiv3queriesfiltersidget) | **GET** /api/v3/queries/filters/{id} | View Query Filter


# **apiV3QueriesFiltersIdGet**
> apiV3QueriesFiltersIdGet(id)

View Query Filter

Retreive an individual QueryFilter as identified by the id parameter.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = QueryFiltersApi();
final id = id_example; // String | QueryFilter identifier.

try { 
    api_instance.apiV3QueriesFiltersIdGet(id);
} catch (e) {
    print('Exception when calling QueryFiltersApi->apiV3QueriesFiltersIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| QueryFilter identifier. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

