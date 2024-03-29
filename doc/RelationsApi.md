# openproject_dart_sdk.api.RelationsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3RelationsGet**](RelationsApi.md#apiv3relationsget) | **GET** /api/v3/relations | List Relations
[**apiV3RelationsIdDelete**](RelationsApi.md#apiv3relationsiddelete) | **DELETE** /api/v3/relations/{id} | Delete Relation
[**apiV3RelationsIdFormPost**](RelationsApi.md#apiv3relationsidformpost) | **POST** /api/v3/relations/{id}/form | Relation edit form
[**apiV3RelationsIdGet**](RelationsApi.md#apiv3relationsidget) | **GET** /api/v3/relations/{id} | View Relation
[**apiV3RelationsIdPatch**](RelationsApi.md#apiv3relationsidpatch) | **PATCH** /api/v3/relations/{id} | Edit Relation
[**apiV3RelationsSchemaGet**](RelationsApi.md#apiv3relationsschemaget) | **GET** /api/v3/relations/schema | View relation schema
[**apiV3RelationsSchemaTypeGet**](RelationsApi.md#apiv3relationsschematypeget) | **GET** /api/v3/relations/schema/{type} | View relation schema for type


# **apiV3RelationsGet**
> apiV3RelationsGet(filters, sortBy)

List Relations

Lists all relations according to the given (optional, logically conjunctive) filters and ordered by ID. The response only includes relations between work packages which the user is allowed to see.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RelationsApi();
final filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Valid fields to filter by are:  + id - ID of relation  + from - ID of work package from which the filtered relations emanates.  + to - ID of work package to which this related points.  + involved - ID of either the `from` or the `to` work package.  + type - The type of relation to filter by, e.g. \"follows\".
final sortBy = sortBy_example; // String | JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.

try {
    api_instance.apiV3RelationsGet(filters, sortBy);
} catch (e) {
    print('Exception when calling RelationsApi->apiV3RelationsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Valid fields to filter by are:  + id - ID of relation  + from - ID of work package from which the filtered relations emanates.  + to - ID of work package to which this related points.  + involved - ID of either the `from` or the `to` work package.  + type - The type of relation to filter by, e.g. \"follows\". | [optional] 
 **sortBy** | **String**| JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint. | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3RelationsIdDelete**
> apiV3RelationsIdDelete(id)

Delete Relation

Deletes the relation.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RelationsApi();
final id = 56; // int | Relation ID

try {
    api_instance.apiV3RelationsIdDelete(id);
} catch (e) {
    print('Exception when calling RelationsApi->apiV3RelationsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Relation ID | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3RelationsIdFormPost**
> apiV3RelationsIdFormPost(id)

Relation edit form

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RelationsApi();
final id = 56; // int | ID of the relation being modified

try {
    api_instance.apiV3RelationsIdFormPost(id);
} catch (e) {
    print('Exception when calling RelationsApi->apiV3RelationsIdFormPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the relation being modified | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3RelationsIdGet**
> apiV3RelationsIdGet(id)

View Relation

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RelationsApi();
final id = 56; // int | Relation id

try {
    api_instance.apiV3RelationsIdGet(id);
} catch (e) {
    print('Exception when calling RelationsApi->apiV3RelationsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Relation id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3RelationsIdPatch**
> apiV3RelationsIdPatch(id)

Edit Relation

When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. It is only allowed to provide properties or links supporting the **write** operation.  Note that changing the `type` of a relation invariably also changes the respective `reverseType` as well as the \"name\" of it. The returned Relation object will reflect that change. For instance if you change a Relation's `type` to \"follows\" then the `reverseType` will be changed to `precedes`.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RelationsApi();
final id = 56; // int | Relation ID

try {
    api_instance.apiV3RelationsIdPatch(id);
} catch (e) {
    print('Exception when calling RelationsApi->apiV3RelationsIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Relation ID | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3RelationsSchemaGet**
> apiV3RelationsSchemaGet()

View relation schema

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RelationsApi();

try {
    api_instance.apiV3RelationsSchemaGet();
} catch (e) {
    print('Exception when calling RelationsApi->apiV3RelationsSchemaGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3RelationsSchemaTypeGet**
> apiV3RelationsSchemaTypeGet(type)

View relation schema for type

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = RelationsApi();
final type = type_example; // String | Type of the schema

try {
    api_instance.apiV3RelationsSchemaTypeGet(type);
} catch (e) {
    print('Exception when calling RelationsApi->apiV3RelationsSchemaTypeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of the schema | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

