# openproject_dart_sdk.api.OAuth2Api

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOauthApplication**](OAuth2Api.md#getoauthapplication) | **GET** /api/v3/oauth_applications/{id} | Get the oauth application.
[**getOauthClientCredentials**](OAuth2Api.md#getoauthclientcredentials) | **GET** /api/v3/oauth_client_credentials/{id} | Get the oauth client credentials object.


# **getOauthApplication**
> OauthApplicationReadModel getOauthApplication(id)

Get the oauth application.

Retrieves the OAuth 2 provider application for the given identifier. The secret will not be part of the response, instead a `confidential` flag is indicating, whether there is a secret or not.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = OAuth2Api();
final id = 1337; // int | OAuth application id

try {
    final result = api_instance.getOauthApplication(id);
    print(result);
} catch (e) {
    print('Exception when calling OAuth2Api->getOauthApplication: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| OAuth application id | 

### Return type

[**OauthApplicationReadModel**](OauthApplicationReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOauthClientCredentials**
> OauthClientCredentialsReadModel getOauthClientCredentials(id)

Get the oauth client credentials object.

Retrieves the OAuth 2 client credentials for the given identifier. The secret will not be part of the response, instead a `confidential` flag is indicating, whether there is a secret or not.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = OAuth2Api();
final id = 1337; // int | OAuth Client Credentials id

try {
    final result = api_instance.getOauthClientCredentials(id);
    print(result);
} catch (e) {
    print('Exception when calling OAuth2Api->getOauthClientCredentials: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| OAuth Client Credentials id | 

### Return type

[**OauthClientCredentialsReadModel**](OauthClientCredentialsReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

