# openproject_dart_sdk.api.UserPreferencesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3MyPreferencesGet**](UserPreferencesApi.md#apiv3mypreferencesget) | **GET** /api/v3/my_preferences | Show my preferences
[**apiV3MyPreferencesPatch**](UserPreferencesApi.md#apiv3mypreferencespatch) | **PATCH** /api/v3/my_preferences | Update UserPreferences


# **apiV3MyPreferencesGet**
> UserPreferences apiV3MyPreferencesGet()

Show my preferences

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UserPreferencesApi();

try { 
    final result = api_instance.apiV3MyPreferencesGet();
    print(result);
} catch (e) {
    print('Exception when calling UserPreferencesApi->apiV3MyPreferencesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserPreferences**](UserPreferences.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3MyPreferencesPatch**
> apiV3MyPreferencesPatch(inlineObject3)

Update UserPreferences

When calling this endpoint the client provides a single object, containing the properties that it wants to change, in the body.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = UserPreferencesApi();
final inlineObject3 = InlineObject3(); // InlineObject3 | 

try { 
    api_instance.apiV3MyPreferencesPatch(inlineObject3);
} catch (e) {
    print('Exception when calling UserPreferencesApi->apiV3MyPreferencesPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject3** | [**InlineObject3**](InlineObject3.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

