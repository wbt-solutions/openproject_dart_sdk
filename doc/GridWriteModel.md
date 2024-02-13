# openproject_dart_sdk.model.GridWriteModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rowCount** | **int** | The number of rows the grid has | [optional] 
**columnCount** | **int** | The number of columns the grid has | [optional] 
**widgets** | [**List<GridWidgetModel>**](GridWidgetModel.md) | The set of `GridWidget`s selected for the grid.  # Conditions  - The widgets must not overlap. | [optional] [default to const []]
**links** | [**GridWriteModelLinks**](GridWriteModelLinks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


