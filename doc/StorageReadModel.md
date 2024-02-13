# openproject_dart_sdk.model.StorageReadModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Storage id | 
**type** | **String** |  | 
**name** | **String** | Storage name | 
**hasApplicationPassword** | **bool** | Whether the storage has the application password to use for the Nextcloud storage.  Ignored if the provider type is not Nextcloud | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | Time of creation | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | Time of the most recent change to the storage | [optional] 
**embedded** | [**StorageReadModelEmbedded**](StorageReadModelEmbedded.md) |  | [optional] 
**links** | [**StorageReadModelLinks**](StorageReadModelLinks.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


