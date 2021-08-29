# openproject_dart_sdk.api.CustomActionsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3CustomActionsCustomActionIdExecutePost**](CustomActionsApi.md#apiv3customactionscustomactionidexecutepost) | **POST** /api/v3/custom_actions/{custom_action_id}/execute | Execute custom action
[**apiV3CustomActionsCustomActionIdGet**](CustomActionsApi.md#apiv3customactionscustomactionidget) | **GET** /api/v3/custom_actions/{custom_action_id} | View custom action


# **apiV3CustomActionsCustomActionIdExecutePost**
> apiV3CustomActionsCustomActionIdExecutePost(customActionId, inlineObject)

Execute custom action

A POST to this end point executes the custom action on the work package provided in the payload. The altered work package will be returned. In order to avoid executing  the custom action unbeknown to a change that has already taken place, the client has to provide the work package's current lockVersion.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CustomActionsApi();
final customActionId = 56; // int | The id of the custom action to execute
final inlineObject = InlineObject(); // InlineObject | 

try {
    api_instance.apiV3CustomActionsCustomActionIdExecutePost(customActionId, inlineObject);
} catch (e) {
    print('Exception when calling CustomActionsApi->apiV3CustomActionsCustomActionIdExecutePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customActionId** | **int**| The id of the custom action to execute | 
 **inlineObject** | [**InlineObject**](InlineObject.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3CustomActionsCustomActionIdGet**
> apiV3CustomActionsCustomActionIdGet(customActionId)

View custom action

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CustomActionsApi();
final customActionId = 56; // int | The id of the custom action to fetch

try {
    api_instance.apiV3CustomActionsCustomActionIdGet(customActionId);
} catch (e) {
    print('Exception when calling CustomActionsApi->apiV3CustomActionsCustomActionIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customActionId** | **int**| The id of the custom action to fetch | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

