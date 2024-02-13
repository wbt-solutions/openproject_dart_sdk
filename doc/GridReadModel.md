# openproject_dart_sdk.model.GridReadModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**id** | **int** | Grid's id | 
**rowCount** | **int** | The number of rows the grid has | 
**columnCount** | **int** | The number of columns the grid has | 
**widgets** | [**List<GridWidgetModel>**](GridWidgetModel.md) | The set of `GridWidget`s selected for the grid.  # Conditions  - The widgets must not overlap. | [default to const []]
**createdAt** | [**DateTime**](DateTime.md) | The time the grid was created. | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | The time the grid was last updated. | [optional] 
**links** | [**GridReadModelLinks**](GridReadModelLinks.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


