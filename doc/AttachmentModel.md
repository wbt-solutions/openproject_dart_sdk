# openproject_dart_sdk.model.AttachmentModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Attachment's id | [optional] 
**title** | **String** | The name of the file | 
**fileName** | **String** | The name of the uploaded file | 
**fileSize** | **int** | The size of the uploaded file in Bytes | [optional] 
**description** | [**AttachmentModelDescription**](AttachmentModelDescription.md) |  | 
**contentType** | **String** | The files MIME-Type as determined by the server | 
**digest** | **String** | A checksum for the files content | 
**createdAt** | [**DateTime**](DateTime.md) | Time of creation | 
**links** | [**AttachmentModelLinks**](AttachmentModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


