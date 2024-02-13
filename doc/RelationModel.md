# openproject_dart_sdk.model.RelationModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Relation ID | [optional] [readonly] 
**name** | **String** | The internationalized name of this kind of relation | [optional] 
**type** | **String** | Which kind of relation (blocks, precedes, etc.) | [optional] 
**reverseType** | **String** | The kind of relation from the other WP's perspective | [optional] [readonly] 
**description** | **String** | Short text further describing the relation | [optional] 
**delayStar** | **int** | The delay in days between closing of `from` and start of `to` | [optional] 
**links** | [**RelationModelLinks**](RelationModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


