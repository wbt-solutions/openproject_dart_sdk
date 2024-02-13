# openproject_dart_sdk.model.StorageWriteModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Storage name, if not provided, falls back to a default. | [optional] 
**applicationPassword** | [**Object**](.md) | The application password to use for the Nextcloud storage. Ignored if the provider type is not Nextcloud.  If a string is provided, the password is set and automatic management is enabled for the storage. If null is provided, the password is unset and automatic management is disabled for the storage. | [optional] 
**links** | [**StorageWriteModelLinks**](StorageWriteModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


