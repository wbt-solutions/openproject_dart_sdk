# openproject_dart_sdk.api.PrincipalsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listPrincipals**](PrincipalsApi.md#listprincipals) | **GET** /api/v3/principals | List principals


# **listPrincipals**
> Object listPrincipals(filters, select)

List principals

List all principals. The client can choose to filter the principals similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain principals who are members in projects the client is allowed to see.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = PrincipalsApi();
final filters = [{ "type": { "operator": "=", "values": ["User"] } }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + type: filters principals by their type (*User*, *Group*, *PlaceholderUser*).  + member: filters principals by the projects they are members in.  + name: filters principals by the user or group name.  + any_name_attribute: filters principals by the user or group first- and last name, email or login.  + status: filters principals by their status number (active = *1*, registered = *2*, locked = *3*, invited = *4*)
final select = total,elements/name,elements/self,self; // String | Comma separated list of properties to include.

try {
    final result = api_instance.listPrincipals(filters, select);
    print(result);
} catch (e) {
    print('Exception when calling PrincipalsApi->listPrincipals: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + type: filters principals by their type (*User*, *Group*, *PlaceholderUser*).  + member: filters principals by the projects they are members in.  + name: filters principals by the user or group name.  + any_name_attribute: filters principals by the user or group first- and last name, email or login.  + status: filters principals by their status number (active = *1*, registered = *2*, locked = *3*, invited = *4*) | [optional] 
 **select** | **String**| Comma separated list of properties to include. | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

