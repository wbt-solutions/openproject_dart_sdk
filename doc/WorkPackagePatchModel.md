# openproject_dart_sdk.model.WorkPackagePatchModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lockVersion** | **int** | The version of the item as used for optimistic locking | 
**subject** | **String** | Work package subject | [optional] 
**description** | [**WorkPackageModelDescription**](WorkPackageModelDescription.md) |  | [optional] 
**scheduleManually** | **bool** | If false (default) schedule automatically. | [optional] 
**startDate** | [**DateTime**](DateTime.md) | Scheduled beginning of a work package | [optional] 
**dueDate** | [**DateTime**](DateTime.md) | Scheduled end of a work package | [optional] 
**date** | [**DateTime**](DateTime.md) | Date on which a milestone is achieved | [optional] 
**estimatedTime** | **String** | Time a work package likely needs to be completed excluding its descendants | [optional] 
**ignoreNonWorkingDays** | **bool** | **(NOT IMPLEMENTED)** When scheduling, whether or not to ignore the non working days being defined. A work package with the flag set to true will be allowed to be scheduled to a non working day. | [optional] [readonly] 
**spentTime** | **String** | The time booked for this work package by users working on it  # Conditions  **Permission** view time entries | [optional] [readonly] 
**percentageDone** | **int** | Amount of total completion for a work package | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | Time of creation | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | Time of the most recent change to the work package | [optional] [readonly] 
**links** | [**WorkPackagePatchModelLinks**](WorkPackagePatchModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


