# openproject_dart_sdk.api.AttachmentsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3AttachmentsIdDelete**](AttachmentsApi.md#apiv3attachmentsiddelete) | **DELETE** /api/v3/attachments/{id} | Delete attachment
[**apiV3AttachmentsIdGet**](AttachmentsApi.md#apiv3attachmentsidget) | **GET** /api/v3/attachments/{id} | View attachment
[**apiV3WorkPackagesIdAttachmentsGet**](AttachmentsApi.md#apiv3workpackagesidattachmentsget) | **GET** /api/v3/work_packages/{id}/attachments | List attachments
[**apiV3WorkPackagesIdAttachmentsPost**](AttachmentsApi.md#apiv3workpackagesidattachmentspost) | **POST** /api/v3/work_packages/{id}/attachments | Add attachment


# **apiV3AttachmentsIdDelete**
> apiV3AttachmentsIdDelete(id)

Delete attachment

Permanently deletes the specified attachment.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AttachmentsApi();
final id = 56; // int | Attachment id

try {
    api_instance.apiV3AttachmentsIdDelete(id);
} catch (e) {
    print('Exception when calling AttachmentsApi->apiV3AttachmentsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Attachment id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3AttachmentsIdGet**
> Attachment apiV3AttachmentsIdGet(id)

View attachment

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AttachmentsApi();
final id = 56; // int | Attachment id

try {
    final result = api_instance.apiV3AttachmentsIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling AttachmentsApi->apiV3AttachmentsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Attachment id | 

### Return type

[**Attachment**](Attachment.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdAttachmentsGet**
> apiV3WorkPackagesIdAttachmentsGet(id)

List attachments

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AttachmentsApi();
final id = 56; // int | ID of the work package whose attachments will be listed

try {
    api_instance.apiV3WorkPackagesIdAttachmentsGet(id);
} catch (e) {
    print('Exception when calling AttachmentsApi->apiV3WorkPackagesIdAttachmentsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the work package whose attachments will be listed | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WorkPackagesIdAttachmentsPost**
> apiV3WorkPackagesIdAttachmentsPost(id)

Add attachment

To add an attachment to a work package, a client needs to issue a request of type `multipart/form-data` with exactly two parts.  The first part *must* be called `metadata`. Its content type is expected to be `application/json`, the body *must* be a single JSON object, containing at least the `fileName` and optionally the attachments `description`.  The second part *must* be called `file`, its content type *should* match the mime type of the file. The body *must* be the raw content of the file. Note that a `filename` must be indicated in the `Content-Disposition` of this part, however it will be ignored. Instead the `fileName` inside the JSON of the metadata part will be used.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AttachmentsApi();
final id = 56; // int | ID of the work package to receive the attachment

try {
    api_instance.apiV3WorkPackagesIdAttachmentsPost(id);
} catch (e) {
    print('Exception when calling AttachmentsApi->apiV3WorkPackagesIdAttachmentsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the work package to receive the attachment | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

