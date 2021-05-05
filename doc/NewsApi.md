# openproject_dart_sdk.api.NewsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3NewsGet**](NewsApi.md#apiv3newsget) | **GET** /api/v3/news | list news
[**apiV3NewsIdGet**](NewsApi.md#apiv3newsidget) | **GET** /api/v3/news/{id} | view news


# **apiV3NewsGet**
> NewsList apiV3NewsGet(offset, pageSize, sortBy, filters)

list news

Lists news. The news returned depend on the provided parameters and also on the requesting user’s permissions.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = NewsApi();
final offset = 56; // int | Page number inside the requested collection.
final pageSize = 56; // int | Number of elements to display per page.
final sortBy = sortBy_example; // String | JSON specifying sort criteria. Accepts the same format as returned by the queries endpoint.
final filters = []; // List<Map<String, Object>> | JSON specifying filter conditions. Accepts the same format as returned by the queries endpoint.

try { 
    final result = api_instance.apiV3NewsGet(offset, pageSize, sortBy, filters);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->apiV3NewsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Page number inside the requested collection. | [optional] 
 **pageSize** | **int**| Number of elements to display per page. | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same format as returned by the queries endpoint. | [optional] 
 **filters** | [**List<Map<String, Object>>**](Map<String, Object>.md)| JSON specifying filter conditions. Accepts the same format as returned by the queries endpoint. | [optional] [default to const []]

### Return type

[**NewsList**](NewsList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3NewsIdGet**
> News apiV3NewsIdGet(id)

view news

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = NewsApi();
final id = 56; // int | news id

try { 
    final result = api_instance.apiV3NewsIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->apiV3NewsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| news id | 

### Return type

[**News**](News.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

