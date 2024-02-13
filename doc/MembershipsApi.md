# openproject_dart_sdk.api.MembershipsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMembership**](MembershipsApi.md#createmembership) | **POST** /api/v3/memberships | Create a membership
[**deleteMembership**](MembershipsApi.md#deletemembership) | **DELETE** /api/v3/memberships/{id} | Delete membership
[**formCreateMembership**](MembershipsApi.md#formcreatemembership) | **POST** /api/v3/memberships/form | Form create membership
[**formUpdateMembership**](MembershipsApi.md#formupdatemembership) | **POST** /api/v3/memberships/{id}/form | Form update membership
[**getMembership**](MembershipsApi.md#getmembership) | **GET** /api/v3/memberships/{id} | Get a membership
[**getMembershipSchema**](MembershipsApi.md#getmembershipschema) | **GET** /api/v3/memberships/schema | Schema membership
[**getMembershipsAvailableProjects**](MembershipsApi.md#getmembershipsavailableprojects) | **GET** /api/v3/memberships/available_projects | Available projects for memberships
[**listMemberships**](MembershipsApi.md#listmemberships) | **GET** /api/v3/memberships | List memberships
[**updateMembership**](MembershipsApi.md#updatemembership) | **PATCH** /api/v3/memberships/{id} | Update membership


# **createMembership**
> MembershipReadModel createMembership(membershipWriteModel)

Create a membership

Creates a new membership applying the attributes provided in the body.  You can use the form and schema to retrieve the valid attribute values and by that be guided towards successful creation.  By providing a `notificationMessage` within the `_meta` block of the payload, the client can include a customized message to the user of the newly created membership. In case of a group, the message will be sent to every user belonging to the group.  By including `{ \"sendNotifications\": false }` within the `_meta` block of the payload, no notifications is send out at all.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = MembershipsApi();
final membershipWriteModel = MembershipWriteModel(); // MembershipWriteModel | 

try {
    final result = api_instance.createMembership(membershipWriteModel);
    print(result);
} catch (e) {
    print('Exception when calling MembershipsApi->createMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **membershipWriteModel** | [**MembershipWriteModel**](MembershipWriteModel.md)|  | [optional] 

### Return type

[**MembershipReadModel**](MembershipReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMembership**
> deleteMembership(id)

Delete membership

Deletes the membership.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = MembershipsApi();
final id = 1; // int | Membership id

try {
    api_instance.deleteMembership(id);
} catch (e) {
    print('Exception when calling MembershipsApi->deleteMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Membership id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **formCreateMembership**
> MembershipFormModel formCreateMembership(membershipWriteModel)

Form create membership

Requests and validates the creation form for memberships. The request payload, if sent, is validated. The form endpoint itself does not create a membership.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = MembershipsApi();
final membershipWriteModel = MembershipWriteModel(); // MembershipWriteModel | 

try {
    final result = api_instance.formCreateMembership(membershipWriteModel);
    print(result);
} catch (e) {
    print('Exception when calling MembershipsApi->formCreateMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **membershipWriteModel** | [**MembershipWriteModel**](MembershipWriteModel.md)|  | [optional] 

### Return type

[**MembershipFormModel**](MembershipFormModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **formUpdateMembership**
> MembershipReadModel formUpdateMembership(id, membershipWriteModel)

Form update membership

Requests and validates the update form for a membership identified by the given id. The request payload, if sent, is validated. The form endpoint itself does not change the membership.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = MembershipsApi();
final id = 1; // int | Membership id
final membershipWriteModel = MembershipWriteModel(); // MembershipWriteModel | 

try {
    final result = api_instance.formUpdateMembership(id, membershipWriteModel);
    print(result);
} catch (e) {
    print('Exception when calling MembershipsApi->formUpdateMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Membership id | 
 **membershipWriteModel** | [**MembershipWriteModel**](MembershipWriteModel.md)|  | [optional] 

### Return type

[**MembershipReadModel**](MembershipReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMembership**
> MembershipReadModel getMembership(id)

Get a membership

Retrieves a membership resource identified by the given id.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = MembershipsApi();
final id = 1; // int | Membership id

try {
    final result = api_instance.getMembership(id);
    print(result);
} catch (e) {
    print('Exception when calling MembershipsApi->getMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Membership id | 

### Return type

[**MembershipReadModel**](MembershipReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMembershipSchema**
> MembershipSchemaModel getMembershipSchema()

Schema membership

Retrieves the schema for the membership resource object.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = MembershipsApi();

try {
    final result = api_instance.getMembershipSchema();
    print(result);
} catch (e) {
    print('Exception when calling MembershipsApi->getMembershipSchema: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MembershipSchemaModel**](MembershipSchemaModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMembershipsAvailableProjects**
> ProjectCollectionModel getMembershipsAvailableProjects()

Available projects for memberships

Gets a list of projects in which a membership can be created in. The list contains all projects in which the user issuing the request has the manage members permissions.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = MembershipsApi();

try {
    final result = api_instance.getMembershipsAvailableProjects();
    print(result);
} catch (e) {
    print('Exception when calling MembershipsApi->getMembershipsAvailableProjects: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProjectCollectionModel**](ProjectCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMemberships**
> MembershipCollectionModel listMemberships(filters, sortBy)

List memberships

Returns a collection of memberships. The client can choose to filter the memberships similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain memberships, for which the requesting client has sufficient permissions (*view_members*, *manage_members*).

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = MembershipsApi();
final filters = [{ "name": { "operator": "=", "values": ["A User"] }" }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + any_name_attribute: filters memberships based on the name of the principal. All possible name variants   (and also email and login) are searched. + blocked: reduces the result set to all memberships that are temporarily blocked or that are not blocked   temporarily. + group: filters memberships based on the name of a group. The group however is not the principal used for   filtering. Rather, the memberships of the group are used as the filter values. + name: filters memberships based on the name of the principal. Note that only the name is used which depends   on a setting in the OpenProject instance. + principal: filters memberships based on the id of the principal. + project: filters memberships based on the id of the project. + role: filters memberships based on the id of any role assigned to the membership. + status: filters memberships based on the status of the principal. + created_at: filters memberships based on the time the membership was created. + updated_at: filters memberships based on the time the membership was updated last.
final sortBy = [["id", "asc"]]; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key + name: Sort by the name of the principal. Note that this depends on the setting for how the name is to be   displayed at least for users. + email: Sort by the email address of the principal. Groups and principal users, which do not have an email,   are sorted last. + status: Sort by the status of the principal. Groups and principal users, which do not have a status, are   sorted together with the active users. + created_at: Sort by membership creation datetime + updated_at: Sort by the time the membership was updated last

try {
    final result = api_instance.listMemberships(filters, sortBy);
    print(result);
} catch (e) {
    print('Exception when calling MembershipsApi->listMemberships: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + any_name_attribute: filters memberships based on the name of the principal. All possible name variants   (and also email and login) are searched. + blocked: reduces the result set to all memberships that are temporarily blocked or that are not blocked   temporarily. + group: filters memberships based on the name of a group. The group however is not the principal used for   filtering. Rather, the memberships of the group are used as the filter values. + name: filters memberships based on the name of the principal. Note that only the name is used which depends   on a setting in the OpenProject instance. + principal: filters memberships based on the id of the principal. + project: filters memberships based on the id of the project. + role: filters memberships based on the id of any role assigned to the membership. + status: filters memberships based on the status of the principal. + created_at: filters memberships based on the time the membership was created. + updated_at: filters memberships based on the time the membership was updated last. | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key + name: Sort by the name of the principal. Note that this depends on the setting for how the name is to be   displayed at least for users. + email: Sort by the email address of the principal. Groups and principal users, which do not have an email,   are sorted last. + status: Sort by the status of the principal. Groups and principal users, which do not have a status, are   sorted together with the active users. + created_at: Sort by membership creation datetime + updated_at: Sort by the time the membership was updated last | [optional] [default to '[["id", "asc"]]']

### Return type

[**MembershipCollectionModel**](MembershipCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMembership**
> MembershipReadModel updateMembership(id, membershipWriteModel)

Update membership

Updates the given membership by applying the attributes provided in the body.  By providing a `notificationMessage` within the `_meta` block of the payload, the client can include a customized message to the user of the updated membership. In case of a group, the message will be sent to every user belonging to the group.  By including `{ \"sendNotifications\": false }` within the `_meta` block of the payload, no notifications is send out at all.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = MembershipsApi();
final id = 1; // int | Membership id
final membershipWriteModel = MembershipWriteModel(); // MembershipWriteModel | 

try {
    final result = api_instance.updateMembership(id, membershipWriteModel);
    print(result);
} catch (e) {
    print('Exception when calling MembershipsApi->updateMembership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Membership id | 
 **membershipWriteModel** | [**MembershipWriteModel**](MembershipWriteModel.md)|  | [optional] 

### Return type

[**MembershipReadModel**](MembershipReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

