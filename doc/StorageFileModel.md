# openproject_dart_sdk.model.StorageFileModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Linked file's id on the origin | 
**name** | **String** | Linked file's name on the origin | 
**mimeType** | **String** | MIME type of the linked file.  To link a folder entity, the custom MIME type `application/x-op-directory` MUST be provided. Otherwise it defaults back to an unknown MIME type. | [optional] 
**size** | **int** | file size on origin in bytes | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | Timestamp of the creation datetime of the file on the origin | [optional] 
**lastModifiedAt** | [**DateTime**](DateTime.md) | Timestamp of the datetime of the last modification of the file on the origin | [optional] 
**createdByName** | **String** | Display name of the author that created the file on the origin | [optional] 
**lastModifiedByName** | **String** | Display name of the author that modified the file on the origin last | [optional] 
**type** | **String** |  | 
**location** | **String** | Location identification for file in storage | 
**links** | [**StorageFileModelAllOfLinks**](StorageFileModelAllOfLinks.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


