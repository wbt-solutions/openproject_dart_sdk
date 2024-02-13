# openproject_dart_sdk.model.StorageFilesModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**files** | [**List<StorageFileModel>**](StorageFileModel.md) | List of files provided by the selected storage. | [default to const []]
**parent** | [**StorageFilesModelParent**](StorageFilesModelParent.md) |  | 
**ancestors** | [**List<StorageFileModel>**](StorageFileModel.md) | List of ancestors of the parent directory. Can be empty, if parent directory was root directory. | [default to const []]
**links** | [**StorageFileModelAllOfLinks**](StorageFileModelAllOfLinks.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


