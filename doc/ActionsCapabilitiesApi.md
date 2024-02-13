# openproject_dart_sdk.api.ActionsCapabilitiesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listActions**](ActionsCapabilitiesApi.md#listactions) | **GET** /api/v3/actions | List actions
[**listCapabilities**](ActionsCapabilitiesApi.md#listcapabilities) | **GET** /api/v3/capabilities | List capabilities
[**viewAction**](ActionsCapabilitiesApi.md#viewaction) | **GET** /api/v3/actions/{id} | View action
[**viewCapabilities**](ActionsCapabilitiesApi.md#viewcapabilities) | **GET** /api/v3/capabilities/{id} | View capabilities
[**viewGlobalContext**](ActionsCapabilitiesApi.md#viewglobalcontext) | **GET** /api/v3/capabilities/context/global | View global context


# **listActions**
> Object listActions(filters, sortBy)

List actions

Returns a collection of actions. The client can choose to filter the actions similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain actions, for which the requesting client has sufficient permissions.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = ActionsCapabilitiesApi();
final filters = [{ "id": { "operator": "=", "values": ["memberships/create"] }" }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: Returns only the action having the id or all actions except those having the id(s).
final sortBy = [["id", "asc"]]; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + *No sort supported yet*

try {
    final result = api_instance.listActions(filters, sortBy);
    print(result);
} catch (e) {
    print('Exception when calling ActionsCapabilitiesApi->listActions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: Returns only the action having the id or all actions except those having the id(s). | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + *No sort supported yet* | [optional] [default to '[["id", "asc"]]']

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCapabilities**
> Object listCapabilities(filters, sortBy)

List capabilities

Returns a collection of actions assigned to a principal in a context. The client can choose to filter the actions similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain actions, for which the requesting client has sufficient permissions

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = ActionsCapabilitiesApi();
final filters = [{ "principal": { "operator": "=", "values": ["1"] }" }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint.  + action: Get all capabilities of a certain action  + principal: Get all capabilities of a principal  + context: Get all capabilities within a context. Note that for a project context the client needs to provide `p{id}`, e.g. `p5` and for the global context a `g`
final sortBy = [["id", "asc"]]; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by the capabilities id

try {
    final result = api_instance.listCapabilities(filters, sortBy);
    print(result);
} catch (e) {
    print('Exception when calling ActionsCapabilitiesApi->listCapabilities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint.  + action: Get all capabilities of a certain action  + principal: Get all capabilities of a principal  + context: Get all capabilities within a context. Note that for a project context the client needs to provide `p{id}`, e.g. `p5` and for the global context a `g` | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by the capabilities id | [optional] [default to '[["id", "asc"]]']

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewAction**
> Object viewAction(id)

View action

Returns an individual action.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = ActionsCapabilitiesApi();
final id = work_packages/create; // String | action id which is the name of the action

try {
    final result = api_instance.viewAction(id);
    print(result);
} catch (e) {
    print('Exception when calling ActionsCapabilitiesApi->viewAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| action id which is the name of the action | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewCapabilities**
> Object viewCapabilities(id)

View capabilities



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = ActionsCapabilitiesApi();
final id = work_packages/create/p123-567; // String | capability id

try {
    final result = api_instance.viewCapabilities(id);
    print(result);
} catch (e) {
    print('Exception when calling ActionsCapabilitiesApi->viewCapabilities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| capability id | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewGlobalContext**
> Object viewGlobalContext()

View global context

Returns the global capability context. This context is necessary to consistently link to a context even if the context is not a project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = ActionsCapabilitiesApi();

try {
    final result = api_instance.viewGlobalContext();
    print(result);
} catch (e) {
    print('Exception when calling ActionsCapabilitiesApi->viewGlobalContext: $e\n');
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

