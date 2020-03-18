# swagger.api.RevisionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3RevisionsIdGet**](RevisionsApi.md#apiV3RevisionsIdGet) | **GET** /api/v3/revisions/{id} | View revision


# **apiV3RevisionsIdGet**
> apiV3RevisionsIdGet(id)

View revision



### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new RevisionsApi();
var id = 56; // int | Revision id

try { 
    api_instance.apiV3RevisionsIdGet(id);
} catch (e) {
    print("Exception when calling RevisionsApi->apiV3RevisionsIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Revision id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

