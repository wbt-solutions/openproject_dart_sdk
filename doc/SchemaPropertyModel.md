# openproject_dart_sdk.model.SchemaPropertyModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The resource type for this property. | 
**name** | **String** | The name of the property. | 
**required_** | **bool** | Indicates, if the property is required for submitting a request of this schema. | 
**hasDefault** | **bool** | Indicates, if the property has a default. | 
**writable** | **bool** | Indicates, if the property is writable when sending a request of this schema. | 
**object** | [**Object**](.md) | Additional options for the property. | [optional] 
**location** | **String** | Defines the json path where the property is located in the payload. | [optional] [default to '']
**links** | [**Object**](.md) | Useful links for this property (e.g. an endpoint to fetch allowed values) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


