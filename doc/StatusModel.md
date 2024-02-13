# openproject_dart_sdk.model.StatusModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] 
**id** | **int** | Status id | [optional] [readonly] 
**name** | **String** | Status name | [optional] [readonly] 
**position** | **int** | Sort index of the status | [optional] [readonly] 
**isDefault** | **bool** |  | [optional] [readonly] 
**isClosed** | **bool** | are tickets of this status considered closed? | [optional] [readonly] 
**isReadonly** | **bool** | are tickets of this status read only? | [optional] [readonly] 
**defaultDoneRatio** | **int** | The percentageDone being applied when changing to this status | [optional] 
**links** | [**StatusModelLinks**](StatusModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


