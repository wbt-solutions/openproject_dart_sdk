# openproject_dart_sdk.api.CustomActionsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executeCustomAction**](CustomActionsApi.md#executecustomaction) | **POST** /api/v3/custom_actions/{id}/execute | Execute custom action
[**getCustomAction**](CustomActionsApi.md#getcustomaction) | **GET** /api/v3/custom_actions/{id} | Get a custom action


# **executeCustomAction**
> executeCustomAction(id, executeCustomActionRequest)

Execute custom action

A POST to this end point executes the custom action on the work package provided in the payload. The altered work package will be returned. In order to avoid executing  the custom action unbeknown to a change that has already taken place, the client has to provide the work package's current lockVersion.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = CustomActionsApi();
final id = 1; // int | The id of the custom action to execute
final executeCustomActionRequest = ExecuteCustomActionRequest(); // ExecuteCustomActionRequest | 

try {
    api_instance.executeCustomAction(id, executeCustomActionRequest);
} catch (e) {
    print('Exception when calling CustomActionsApi->executeCustomAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the custom action to execute | 
 **executeCustomActionRequest** | [**ExecuteCustomActionRequest**](ExecuteCustomActionRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomAction**
> CustomActionModel getCustomAction(id)

Get a custom action

Retrieves a custom action by id.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = CustomActionsApi();
final id = 42; // int | The id of the custom action to fetch

try {
    final result = api_instance.getCustomAction(id);
    print(result);
} catch (e) {
    print('Exception when calling CustomActionsApi->getCustomAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the custom action to fetch | 

### Return type

[**CustomActionModel**](CustomActionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

