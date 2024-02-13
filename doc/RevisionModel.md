# openproject_dart_sdk.model.RevisionModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Revision's id, assigned by OpenProject | [optional] [readonly] 
**identifier** | **String** | The raw SCM identifier of the revision (e.g. full SHA hash) | [readonly] 
**formattedIdentifier** | **String** | The SCM identifier of the revision, formatted (e.g. shortened unambiguous SHA hash). May be identical to identifier in many cases | [readonly] 
**authorName** | **String** | The name of the author that committed this revision. Note that this name is retrieved from the repository and does not identify a user in OpenProject. | [readonly] 
**message** | [**RevisionModelMessage**](RevisionModelMessage.md) |  | 
**createdAt** | [**DateTime**](DateTime.md) | The time this revision was committed to the repository | 
**links** | [**RevisionModelLinks**](RevisionModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


