# openproject_dart_sdk.api.QuerySortBysApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3QueriesSortBysIdGet**](QuerySortBysApi.md#apiv3queriessortbysidget) | **GET** /api/v3/queries/sort_bys/{id} | View Query Sort By


# **apiV3QueriesSortBysIdGet**
> apiV3QueriesSortBysIdGet(id)

View Query Sort By

Retreive an individual QuerySortBy as identified by the id parameter.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = QuerySortBysApi();
final id = id_example; // String | QuerySortBy identifier. The identifier is a combination of the column identifier and the direction.

try {
    api_instance.apiV3QueriesSortBysIdGet(id);
} catch (e) {
    print('Exception when calling QuerySortBysApi->apiV3QueriesSortBysIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| QuerySortBy identifier. The identifier is a combination of the column identifier and the direction. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

