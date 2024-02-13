# openproject_dart_sdk.model.UserModelLinksMemberships

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**href** | [**Object**](.md) | URL to the referenced resource (might be relative) | 
**title** | **String** | Representative label for the resource | [optional] 
**templated** | **bool** | If true the href contains parts that need to be replaced by the client | [optional] [default to false]
**method** | **String** | The HTTP verb to use when requesting the resource | [optional] [default to 'GET']
**payload** | [**Object**](.md) | The payload to send in the request to achieve the desired result | [optional] 
**identifier** | **String** | An optional unique identifier to the link object | [optional] 
**type** | **String** | The MIME-Type of the returned resource. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


