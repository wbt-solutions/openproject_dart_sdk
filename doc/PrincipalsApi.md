# openproject_dart_sdk.api.PrincipalsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPlaceholderUser**](PrincipalsApi.md#createplaceholderuser) | **POST** /api/v3/placeholder_users | Create placeholder user
[**createUser**](PrincipalsApi.md#createuser) | **POST** /api/v3/users | Create User
[**deletePlaceholderUser**](PrincipalsApi.md#deleteplaceholderuser) | **DELETE** /api/v3/placeholder_users/{id} | Delete placeholder user
[**deleteUser**](PrincipalsApi.md#deleteuser) | **DELETE** /api/v3/users/{id} | Delete user
[**listPlaceholderUsers**](PrincipalsApi.md#listplaceholderusers) | **GET** /api/v3/placeholder_users | List placehoder users
[**listPrincipals**](PrincipalsApi.md#listprincipals) | **GET** /api/v3/principals | List principals
[**listUsers**](PrincipalsApi.md#listusers) | **GET** /api/v3/users | List Users
[**updatePlaceholderUser**](PrincipalsApi.md#updateplaceholderuser) | **PATCH** /api/v3/placeholder_users/{id} | Update placeholder user
[**updateUser**](PrincipalsApi.md#updateuser) | **PATCH** /api/v3/users/{id} | Update user
[**viewPlaceholderUser**](PrincipalsApi.md#viewplaceholderuser) | **GET** /api/v3/placeholder_users/{id} | View placeholder user
[**viewUser**](PrincipalsApi.md#viewuser) | **GET** /api/v3/users/{id} | View user


# **createPlaceholderUser**
> PlaceholderUserModel createPlaceholderUser(placeholderUserCreateModel)

Create placeholder user

Creates a new placeholder user. Only administrators and users with `manage_placeholder_user` global permission are allowed to do so. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = PrincipalsApi();
final placeholderUserCreateModel = PlaceholderUserCreateModel(); // PlaceholderUserCreateModel | 

try {
    final result = api_instance.createPlaceholderUser(placeholderUserCreateModel);
    print(result);
} catch (e) {
    print('Exception when calling PrincipalsApi->createPlaceholderUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeholderUserCreateModel** | [**PlaceholderUserCreateModel**](PlaceholderUserCreateModel.md)|  | [optional] 

### Return type

[**PlaceholderUserModel**](PlaceholderUserModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
> UserModel createUser(userCreateModel)

Create User

Creates a new user. Only administrators and users with manage_user global permission are allowed to do so. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.  Valid values for `status`:  1) \"active\" - In this case a password has to be provided in addition to the other attributes.  2) \"invited\" - In this case nothing but the email address is required. The rest is optional. An invitation will be sent to the user.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = PrincipalsApi();
final userCreateModel = UserCreateModel(); // UserCreateModel | 

try {
    final result = api_instance.createUser(userCreateModel);
    print(result);
} catch (e) {
    print('Exception when calling PrincipalsApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userCreateModel** | [**UserCreateModel**](UserCreateModel.md)|  | [optional] 

### Return type

[**UserModel**](UserModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePlaceholderUser**
> deletePlaceholderUser(id)

Delete placeholder user

Set the specified placeholder user to deleted status.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = PrincipalsApi();
final id = 1; // int | Placeholder user id

try {
    api_instance.deletePlaceholderUser(id);
} catch (e) {
    print('Exception when calling PrincipalsApi->deletePlaceholderUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Placeholder user id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> deleteUser(id)

Delete user

Permanently deletes the specified user account.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = PrincipalsApi();
final id = 1; // int | User id

try {
    api_instance.deleteUser(id);
} catch (e) {
    print('Exception when calling PrincipalsApi->deleteUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| User id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPlaceholderUsers**
> PrincipalCollectionModel listPlaceholderUsers(filters, select)

List placehoder users

List all placeholder users. This can only be accessed if the requesting user has the global permission `manage_placeholder_user` or `manage_members` in any project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = PrincipalsApi();
final filters = [{ "name": { "operator": "~", "values": ["Darth"] } }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - name: filters placeholder users by the name. - group: filters placeholder by the group it is contained in. - status: filters placeholder by the status it has.
final select = total,elements/name,elements/self,self; // String | Comma separated list of properties to include.

try {
    final result = api_instance.listPlaceholderUsers(filters, select);
    print(result);
} catch (e) {
    print('Exception when calling PrincipalsApi->listPlaceholderUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - name: filters placeholder users by the name. - group: filters placeholder by the group it is contained in. - status: filters placeholder by the status it has. | [optional] 
 **select** | **String**| Comma separated list of properties to include. | [optional] 

### Return type

[**PrincipalCollectionModel**](PrincipalCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPrincipals**
> PrincipalCollectionModel listPrincipals(filters, select)

List principals

List all principals. The client can choose to filter the principals similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain principals who are members in projects the client is allowed to see.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = PrincipalsApi();
final filters = [{ "type": { "operator": "=", "values": ["User"] } }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - type: filters principals by their type (*User*, *Group*, *PlaceholderUser*). - member: filters principals by the projects they are members in. - name: filters principals by the user or group name. - any_name_attribute: filters principals by the user or group first- and last name, email or login. - status: filters principals by their status number (active = *1*, registered = *2*, locked = *3*, invited = *4*)
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
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - type: filters principals by their type (*User*, *Group*, *PlaceholderUser*). - member: filters principals by the projects they are members in. - name: filters principals by the user or group name. - any_name_attribute: filters principals by the user or group first- and last name, email or login. - status: filters principals by their status number (active = *1*, registered = *2*, locked = *3*, invited = *4*) | [optional] 
 **select** | **String**| Comma separated list of properties to include. | [optional] 

### Return type

[**PrincipalCollectionModel**](PrincipalCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUsers**
> UserCollectionModel listUsers(offset, pageSize, filters, sortBy, select)

List Users

Lists users. Only administrators or users with any of the following can access this resource:  - `manage_members` - `manage_user` - `share_work_packages`

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = PrincipalsApi();
final offset = 25; // int | Page number inside the requested collection.
final pageSize = 25; // int | Number of elements to display per page.
final filters = [{ "status": { "operator": "=", "values": ["invited"] } }, { "group": { "operator": "=", "values": ["1"] } }, { "name": { "operator": "=", "values": ["h.wurst@openproject.com"] } }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + status: Status the user has  + group: Name of the group in which to-be-listed users are members.  + name: Filter users in whose first or last names, or email addresses the given string occurs.  + login: User's login
final sortBy = [["status", "asc"]]; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint.
final select = total,elements/name,elements/self,self; // String | Comma separated list of properties to include.

try {
    final result = api_instance.listUsers(offset, pageSize, filters, sortBy, select);
    print(result);
} catch (e) {
    print('Exception when calling PrincipalsApi->listUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Page number inside the requested collection. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page. | [optional] 
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + status: Status the user has  + group: Name of the group in which to-be-listed users are members.  + name: Filter users in whose first or last names, or email addresses the given string occurs.  + login: User's login | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. | [optional] 
 **select** | **String**| Comma separated list of properties to include. | [optional] 

### Return type

[**UserCollectionModel**](UserCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePlaceholderUser**
> PlaceholderUserModel updatePlaceholderUser(id, placeholderUserCreateModel)

Update placeholder user

Updates the placeholder user's writable attributes. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = PrincipalsApi();
final id = 1; // int | Placeholder user id
final placeholderUserCreateModel = PlaceholderUserCreateModel(); // PlaceholderUserCreateModel | 

try {
    final result = api_instance.updatePlaceholderUser(id, placeholderUserCreateModel);
    print(result);
} catch (e) {
    print('Exception when calling PrincipalsApi->updatePlaceholderUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Placeholder user id | 
 **placeholderUserCreateModel** | [**PlaceholderUserCreateModel**](PlaceholderUserCreateModel.md)|  | [optional] 

### Return type

[**PlaceholderUserModel**](PlaceholderUserModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> UserModel updateUser(id, userCreateModel)

Update user

Updates the user's writable attributes. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = PrincipalsApi();
final id = 1; // int | User id
final userCreateModel = UserCreateModel(); // UserCreateModel | 

try {
    final result = api_instance.updateUser(id, userCreateModel);
    print(result);
} catch (e) {
    print('Exception when calling PrincipalsApi->updateUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| User id | 
 **userCreateModel** | [**UserCreateModel**](UserCreateModel.md)|  | [optional] 

### Return type

[**UserModel**](UserModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewPlaceholderUser**
> PlaceholderUserModel viewPlaceholderUser(id)

View placeholder user

Return the placeholder user resource.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = PrincipalsApi();
final id = 1; // String | The placeholder user id

try {
    final result = api_instance.viewPlaceholderUser(id);
    print(result);
} catch (e) {
    print('Exception when calling PrincipalsApi->viewPlaceholderUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The placeholder user id | 

### Return type

[**PlaceholderUserModel**](PlaceholderUserModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewUser**
> UserModel viewUser(id)

View user



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = PrincipalsApi();
final id = 1; // String | User id. Use `me` to reference current user, if any.

try {
    final result = api_instance.viewUser(id);
    print(result);
} catch (e) {
    print('Exception when calling PrincipalsApi->viewUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User id. Use `me` to reference current user, if any. | 

### Return type

[**UserModel**](UserModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

