# openproject_dart_sdk.model.TypeModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Type id | [optional] [readonly] 
**name** | **String** | Type name | [optional] [readonly] 
**color** | **String** | The color used to represent this type | [optional] [readonly] 
**position** | **int** | Sort index of the type | [optional] [readonly] 
**isDefault** | **bool** | Is this type active by default in new projects? | [optional] [readonly] 
**isMilestone** | **bool** | Do work packages of this type represent a milestone? | [optional] [readonly] 
**createdAt** | [**DateTime**](DateTime.md) | Time of creation | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | Time of the most recent change to the user | [optional] 
**links** | [**TypeModelLinks**](TypeModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


