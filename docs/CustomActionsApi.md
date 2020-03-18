# swagger.api.CustomActionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3CustomActionsCustomActionIdExecutePost**](CustomActionsApi.md#apiV3CustomActionsCustomActionIdExecutePost) | **POST** /api/v3/custom_actions/{custom_action_id}/execute | Execute custom action
[**apiV3CustomActionsCustomActionIdGet**](CustomActionsApi.md#apiV3CustomActionsCustomActionIdGet) | **GET** /api/v3/custom_actions/{custom_action_id} | View custom action


# **apiV3CustomActionsCustomActionIdExecutePost**
> apiV3CustomActionsCustomActionIdExecutePost(customActionId, body)

Execute custom action

A POST to this end point executes the custom action on the work package provided in the payload. The altered work package will be returned. In order to avoid executing  the custom action unbeknown to a change that has already taken place, the client has to provide the work package's current lockVersion.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new CustomActionsApi();
var customActionId = 56; // int | The id of the custom action to execute
var body = new Body1(); // Body1 | 

try { 
    api_instance.apiV3CustomActionsCustomActionIdExecutePost(customActionId, body);
} catch (e) {
    print("Exception when calling CustomActionsApi->apiV3CustomActionsCustomActionIdExecutePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customActionId** | **int**| The id of the custom action to execute | 
 **body** | [**Body1**](Body1.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3CustomActionsCustomActionIdGet**
> apiV3CustomActionsCustomActionIdGet(customActionId)

View custom action



### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new CustomActionsApi();
var customActionId = 56; // int | The id of the custom action to fetch

try { 
    api_instance.apiV3CustomActionsCustomActionIdGet(customActionId);
} catch (e) {
    print("Exception when calling CustomActionsApi->apiV3CustomActionsCustomActionIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customActionId** | **int**| The id of the custom action to fetch | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

