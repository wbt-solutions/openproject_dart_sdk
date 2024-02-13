# openproject_dart_sdk.model.WorkPackageModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Work package id | [optional] [readonly] 
**lockVersion** | **int** | The version of the item as used for optimistic locking | [optional] [readonly] 
**subject** | **String** | Work package subject | 
**type** | **String** |  | [optional] [readonly] 
**description** | [**WorkPackageModelDescription**](WorkPackageModelDescription.md) |  | [optional] 
**scheduleManually** | **bool** | If false (default) schedule automatically. | [optional] 
**readonly** | **bool** | If true, the work package is in a readonly status so with the exception of the status, no other property can be altered. | [optional] 
**startDate** | [**DateTime**](DateTime.md) | Scheduled beginning of a work package | [optional] 
**dueDate** | [**DateTime**](DateTime.md) | Scheduled end of a work package | [optional] 
**date** | [**DateTime**](DateTime.md) | Date on which a milestone is achieved | [optional] 
**derivedStartDate** | [**DateTime**](DateTime.md) | Similar to start date but is not set by a client but rather deduced by the work packages' descendants. If manual scheduleManually is active, the two dates can deviate. | [optional] [readonly] 
**derivedDueDate** | [**DateTime**](DateTime.md) | Similar to due date but is not set by a client but rather deduced by the work packages' descendants. If manual scheduleManually is active, the two dates can deviate. | [optional] [readonly] 
**duration** | **String** | **(NOT IMPLEMENTED)** The amount of time in hours the work package needs to be completed. Not available for milestone type of work packages. | [optional] [readonly] 
**estimatedTime** | **String** | Time a work package likely needs to be completed excluding its descendants | [optional] 
**derivedEstimatedTime** | **String** | Time a work package likely needs to be completed including its descendants | [optional] [readonly] 
**ignoreNonWorkingDays** | **bool** | **(NOT IMPLEMENTED)** When scheduling, whether or not to ignore the non working days being defined. A work package with the flag set to true will be allowed to be scheduled to a non working day. | [optional] [readonly] 
**spentTime** | **String** | The time booked for this work package by users working on it  # Conditions  **Permission** view time entries | [optional] [readonly] 
**percentageDone** | **int** | Amount of total completion for a work package | [optional] 
**derivedPercentageDone** | **int** | Amount of total completion for a work package derived from itself and its descendant work packages | [optional] [readonly] 
**createdAt** | [**DateTime**](DateTime.md) | Time of creation | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | Time of the most recent change to the work package | [optional] [readonly] 
**links** | [**WorkPackageModelLinks**](WorkPackageModelLinks.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


