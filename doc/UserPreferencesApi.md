# openproject_dart_sdk.api.UserPreferencesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**showMyPreferences**](UserPreferencesApi.md#showmypreferences) | **GET** /api/v3/my_preferences | Show my preferences
[**updateUserPreferences**](UserPreferencesApi.md#updateuserpreferences) | **PATCH** /api/v3/my_preferences | Update my preferences


# **showMyPreferences**
> Object showMyPreferences()

Show my preferences



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = UserPreferencesApi();

try {
    final result = api_instance.showMyPreferences();
    print(result);
} catch (e) {
    print('Exception when calling UserPreferencesApi->showMyPreferences: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserPreferences**
> Object updateUserPreferences(updateUserPreferencesRequest)

Update my preferences

When calling this endpoint the client provides a single object, containing the properties that it wants to change, in the body.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = UserPreferencesApi();
final updateUserPreferencesRequest = UpdateUserPreferencesRequest(); // UpdateUserPreferencesRequest | 

try {
    final result = api_instance.updateUserPreferences(updateUserPreferencesRequest);
    print(result);
} catch (e) {
    print('Exception when calling UserPreferencesApi->updateUserPreferences: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateUserPreferencesRequest** | [**UpdateUserPreferencesRequest**](UpdateUserPreferencesRequest.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

