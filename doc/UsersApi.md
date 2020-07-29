# openproject_dart_sdk.api.UsersApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3UsersGet**](UsersApi.md#apiV3UsersGet) | **GET** /api/v3/users | List Users
[**apiV3UsersIdDelete**](UsersApi.md#apiV3UsersIdDelete) | **DELETE** /api/v3/users/{id} | Delete user
[**apiV3UsersIdGet**](UsersApi.md#apiV3UsersIdGet) | **GET** /api/v3/users/{id} | View user
[**apiV3UsersIdLockDelete**](UsersApi.md#apiV3UsersIdLockDelete) | **DELETE** /api/v3/users/{id}/lock | Remove Lock
[**apiV3UsersIdLockPost**](UsersApi.md#apiV3UsersIdLockPost) | **POST** /api/v3/users/{id}/lock | Set Lock
[**apiV3UsersIdPatch**](UsersApi.md#apiV3UsersIdPatch) | **PATCH** /api/v3/users/{id} | Update user
[**apiV3UsersPost**](UsersApi.md#apiV3UsersPost) | **POST** /api/v3/users | Create User


# **apiV3UsersGet**
> Users apiV3UsersGet(offset, pageSize, filters, sortBy)

List Users

Lists users. Only administrators have permission to do this.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = UsersApi();
var offset = 56; // int | Page number inside the requested collection.
var pageSize = 56; // int | Number of elements to display per page.
var filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + status: Status the user has  + group: Name of the group in which to-be-listed users are members.  + name: Filter users in whose first or last names, or email addresses the given string occurs.  + login: User's login
var sortBy = sortBy_example; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.

try { 
    var result = api_instance.apiV3UsersGet(offset, pageSize, filters, sortBy);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->apiV3UsersGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Page number inside the requested collection. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page. | [optional] 
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + status: Status the user has  + group: Name of the group in which to-be-listed users are members.  + name: Filter users in whose first or last names, or email addresses the given string occurs.  + login: User&#39;s login | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint. | [optional] 

### Return type

[**Users**](Users.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3UsersIdDelete**
> apiV3UsersIdDelete(id)

Delete user

Permanently deletes the specified user account.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = UsersApi();
var id = 56; // int | User id

try { 
    api_instance.apiV3UsersIdDelete(id);
} catch (e) {
    print("Exception when calling UsersApi->apiV3UsersIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| User id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3UsersIdGet**
> User apiV3UsersIdGet(id)

View user

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = UsersApi();
var id = id_example; // String | User id. Use `me` to reference current user, if any.

try { 
    var result = api_instance.apiV3UsersIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->apiV3UsersIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User id. Use &#x60;me&#x60; to reference current user, if any. | 

### Return type

[**User**](User.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3UsersIdLockDelete**
> apiV3UsersIdLockDelete(id)

Remove Lock

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = UsersApi();
var id = 56; // int | User id

try { 
    api_instance.apiV3UsersIdLockDelete(id);
} catch (e) {
    print("Exception when calling UsersApi->apiV3UsersIdLockDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| User id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3UsersIdLockPost**
> apiV3UsersIdLockPost(id)

Set Lock

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = UsersApi();
var id = 56; // int | User id

try { 
    api_instance.apiV3UsersIdLockPost(id);
} catch (e) {
    print("Exception when calling UsersApi->apiV3UsersIdLockPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| User id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3UsersIdPatch**
> apiV3UsersIdPatch(id, body)

Update user

Updates the user's writable attributes. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = UsersApi();
var id = 56; // int | User id
var body = InlineObject5(); // InlineObject5 | 

try { 
    api_instance.apiV3UsersIdPatch(id, body);
} catch (e) {
    print("Exception when calling UsersApi->apiV3UsersIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| User id | 
 **body** | [**InlineObject5**](InlineObject5.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3UsersPost**
> apiV3UsersPost(body)

Create User

Creates a new user. Only administrators have permission to do so. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.  Valid values for `status`:  1) \"active\" - In this case a password has to be provided in addition to the other attributes. 2) \"invited\" - In this case nothing but the email address is required. The rest is optional. An invitation will be sent to the user.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = UsersApi();
var body = InlineObject6(); // InlineObject6 | 

try { 
    api_instance.apiV3UsersPost(body);
} catch (e) {
    print("Exception when calling UsersApi->apiV3UsersPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InlineObject6**](InlineObject6.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

