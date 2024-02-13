# openproject_dart_sdk.model.QueryModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Query id | [optional] [readonly] 
**name** | **String** | Query name | [optional] [readonly] 
**filters** | [**List<QueryFilterInstanceSchemaModel>**](QueryFilterInstanceSchemaModel.md) | A set of QueryFilters which will be applied to the work packages to determine the resulting work packages | [optional] [default to const []]
**sums** | **bool** | Should sums (of supported properties) be shown? | [optional] [readonly] 
**timelineVisible** | **bool** | Should the timeline mode be shown? | [optional] [readonly] 
**timelineLabels** | **List<String>** | Which labels are shown in the timeline, empty when default | [optional] [readonly] [default to const []]
**timelineZoomLevel** | **String** | Which zoom level should the timeline be rendered in? | [optional] [readonly] 
**timestamps** | [**List**](List.md) | Timestamps to filter by when showing changed attributes on work packages. | [optional] 
**highlightingMode** | **String** | Which highlighting mode should the table have? | [optional] [readonly] 
**showHierarchies** | **bool** | Should the hierarchy mode be enabled? | [optional] [readonly] 
**hidden** | **bool** | Should the query be hidden from the query list? | [optional] [readonly] 
**public** | **bool** | Can users besides the owner see the query? | [optional] [readonly] 
**starred** | **bool** | Should the query be highlighted to the user? | [optional] [readonly] 
**createdAt** | [**DateTime**](DateTime.md) | Time of creation | [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | Time of the most recent change to the query | [readonly] 
**links** | [**QueryModelLinks**](QueryModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


