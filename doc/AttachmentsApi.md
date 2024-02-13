# openproject_dart_sdk.api.AttachmentsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAttachmentToPost**](AttachmentsApi.md#addattachmenttopost) | **POST** /api/v3/posts/{id}/attachments | Add attachment to post
[**addAttachmentToWikiPage**](AttachmentsApi.md#addattachmenttowikipage) | **POST** /api/v3/wiki_pages/{id}/attachments | Add attachment to wiki page
[**createAttachment**](AttachmentsApi.md#createattachment) | **POST** /api/v3/attachments | Create Attachment
[**createWorkPackageAttachment**](AttachmentsApi.md#createworkpackageattachment) | **POST** /api/v3/work_packages/{id}/attachments | Create work package attachment
[**deleteAttachment**](AttachmentsApi.md#deleteattachment) | **DELETE** /api/v3/attachments/{id} | Delete attachment
[**listAttachmentsByPost**](AttachmentsApi.md#listattachmentsbypost) | **GET** /api/v3/posts/{id}/attachments | List attachments by post
[**listAttachmentsByWikiPage**](AttachmentsApi.md#listattachmentsbywikipage) | **GET** /api/v3/wiki_pages/{id}/attachments | List attachments by wiki page
[**listWorkPackageAttachments**](AttachmentsApi.md#listworkpackageattachments) | **GET** /api/v3/work_packages/{id}/attachments | List attachments by work package
[**viewAttachment**](AttachmentsApi.md#viewattachment) | **GET** /api/v3/attachments/{id} | View attachment


# **addAttachmentToPost**
> addAttachmentToPost(id)

Add attachment to post

Adds an attachment with the post as it's container.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = AttachmentsApi();
final id = 1; // int | ID of the post to receive the attachment

try {
    api_instance.addAttachmentToPost(id);
} catch (e) {
    print('Exception when calling AttachmentsApi->addAttachmentToPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the post to receive the attachment | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addAttachmentToWikiPage**
> addAttachmentToWikiPage(id)

Add attachment to wiki page

Adds an attachment with the wiki page as it's container.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = AttachmentsApi();
final id = 1; // int | ID of the wiki page to receive the attachment

try {
    api_instance.addAttachmentToWikiPage(id);
} catch (e) {
    print('Exception when calling AttachmentsApi->addAttachmentToWikiPage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the wiki page to receive the attachment | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAttachment**
> AttachmentModel createAttachment()

Create Attachment

Clients can create attachments without a container first and attach them later on. This is useful if the container does not exist at the time the attachment is uploaded. After the upload, the client can then claim such containerless attachments for any resource eligible (e.g. WorkPackage) on subsequent requests. The upload and the claiming *must* be done for the same user account. Attachments uploaded by another user cannot be claimed and once claimed for a resource, they cannot be claimed by another.  The upload request must be of type `multipart/form-data` with exactly two parts.  The first part *must* be called `metadata`. Its content type is expected to be `application/json`, the body *must* be a single JSON object, containing at least the `fileName` and optionally the attachments `description`.  The second part *must* be called `file`, its content type *should* match the mime type of the file. The body *must* be the raw content of the file. Note that a `filename` *must* be indicated in the `Content-Disposition` of this part, although it will be ignored. Instead the `fileName` inside the JSON of the metadata part will be used.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = AttachmentsApi();

try {
    final result = api_instance.createAttachment();
    print(result);
} catch (e) {
    print('Exception when calling AttachmentsApi->createAttachment: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AttachmentModel**](AttachmentModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkPackageAttachment**
> AttachmentModel createWorkPackageAttachment(id)

Create work package attachment

To add an attachment to a work package, a client needs to issue a request of type `multipart/form-data` with exactly two parts.  The first part *must* be called `metadata`. Its content type is expected to be `application/json`, the body *must* be a single JSON object, containing at least the `fileName` and optionally the attachments `description`.  The second part *must* be called `file`, its content type *should* match the mime type of the file. The body *must* be the raw content of the file. Note that a `filename` must be indicated in the `Content-Disposition` of this part, however it will be ignored. Instead the `fileName` inside the JSON of the metadata part will be used.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = AttachmentsApi();
final id = 1; // int | ID of the work package to receive the attachment

try {
    final result = api_instance.createWorkPackageAttachment(id);
    print(result);
} catch (e) {
    print('Exception when calling AttachmentsApi->createWorkPackageAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the work package to receive the attachment | 

### Return type

[**AttachmentModel**](AttachmentModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAttachment**
> deleteAttachment(id)

Delete attachment

Permanently deletes the specified attachment.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = AttachmentsApi();
final id = 1; // int | Attachment id

try {
    api_instance.deleteAttachment(id);
} catch (e) {
    print('Exception when calling AttachmentsApi->deleteAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Attachment id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAttachmentsByPost**
> AttachmentsModel listAttachmentsByPost(id)

List attachments by post



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = AttachmentsApi();
final id = 1; // int | ID of the post whose attachments will be listed

try {
    final result = api_instance.listAttachmentsByPost(id);
    print(result);
} catch (e) {
    print('Exception when calling AttachmentsApi->listAttachmentsByPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the post whose attachments will be listed | 

### Return type

[**AttachmentsModel**](AttachmentsModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAttachmentsByWikiPage**
> AttachmentsModel listAttachmentsByWikiPage(id)

List attachments by wiki page



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = AttachmentsApi();
final id = 1; // int | ID of the wiki page whose attachments will be listed

try {
    final result = api_instance.listAttachmentsByWikiPage(id);
    print(result);
} catch (e) {
    print('Exception when calling AttachmentsApi->listAttachmentsByWikiPage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the wiki page whose attachments will be listed | 

### Return type

[**AttachmentsModel**](AttachmentsModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkPackageAttachments**
> AttachmentsModel listWorkPackageAttachments(id)

List attachments by work package



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = AttachmentsApi();
final id = 1; // int | ID of the work package whose attachments will be listed

try {
    final result = api_instance.listWorkPackageAttachments(id);
    print(result);
} catch (e) {
    print('Exception when calling AttachmentsApi->listWorkPackageAttachments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the work package whose attachments will be listed | 

### Return type

[**AttachmentsModel**](AttachmentsModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewAttachment**
> AttachmentModel viewAttachment(id)

View attachment



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = AttachmentsApi();
final id = 1; // int | Attachment id

try {
    final result = api_instance.viewAttachment(id);
    print(result);
} catch (e) {
    print('Exception when calling AttachmentsApi->viewAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Attachment id | 

### Return type

[**AttachmentModel**](AttachmentModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

