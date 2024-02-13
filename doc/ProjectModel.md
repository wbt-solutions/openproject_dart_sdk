# openproject_dart_sdk.model.ProjectModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] 
**id** | **int** | Projects' id | [optional] 
**identifier** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**active** | **bool** | Indicates whether the project is currently active or already archived | [optional] 
**statusExplanation** | [**ProjectModelStatusExplanation**](ProjectModelStatusExplanation.md) |  | [optional] 
**public** | **bool** | Indicates whether the project is accessible for everybody | [optional] 
**description** | [**Formattable**](Formattable.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | Time of creation | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | Time of the most recent change to the project | [optional] 
**links** | [**ProjectModelLinks**](ProjectModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


