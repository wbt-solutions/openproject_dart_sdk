# openproject_dart_sdk.api.UserPreferencesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3MyPreferencesGet**](UserPreferencesApi.md#apiV3MyPreferencesGet) | **GET** /api/v3/my_preferences | Show my preferences
[**apiV3MyPreferencesPatch**](UserPreferencesApi.md#apiV3MyPreferencesPatch) | **PATCH** /api/v3/my_preferences | Update UserPreferences


# **apiV3MyPreferencesGet**
> UserPreferences apiV3MyPreferencesGet()

Show my preferences

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = UserPreferencesApi();

try { 
    var result = api_instance.apiV3MyPreferencesGet();
    print(result);
} catch (e) {
    print("Exception when calling UserPreferencesApi->apiV3MyPreferencesGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserPreferences**](UserPreferences.md)

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
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = UserPreferencesApi();
var body = InlineObject4(); // InlineObject4 | 

try { 
    api_instance.apiV3MyPreferencesPatch(body);
} catch (e) {
    print("Exception when calling UserPreferencesApi->apiV3MyPreferencesPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InlineObject4**](InlineObject4.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

