# swagger.api.UserPreferencesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3MyPreferencesGet**](UserPreferencesApi.md#apiV3MyPreferencesGet) | **GET** /api/v3/my_preferences | Show my preferences
[**apiV3MyPreferencesPatch**](UserPreferencesApi.md#apiV3MyPreferencesPatch) | **PATCH** /api/v3/my_preferences | Update UserPreferences


# **apiV3MyPreferencesGet**
> apiV3MyPreferencesGet()

Show my preferences



### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new UserPreferencesApi();

try { 
    api_instance.apiV3MyPreferencesGet();
} catch (e) {
    print("Exception when calling UserPreferencesApi->apiV3MyPreferencesGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3MyPreferencesPatch**
> apiV3MyPreferencesPatch(body)

Update UserPreferences

When calling this endpoint the client provides a single object, containing the properties that it wants to change, in the body.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new UserPreferencesApi();
var body = new Body4(); // Body4 | 

try { 
    api_instance.apiV3MyPreferencesPatch(body);
} catch (e) {
    print("Exception when calling UserPreferencesApi->apiV3MyPreferencesPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body4**](Body4.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

