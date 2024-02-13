# openproject_dart_sdk.model.WatchersModelAllOfEmbeddedElements

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**id** | **int** | User's id | 
**login** | **String** | User's login name  # Conditions  **Permission**: Administrator, manage_user global permission | [optional] 
**firstName** | **String** | User's first name  # Conditions  **Permission**: Administrator, manage_user global permission | [optional] 
**lastName** | **String** | User's last name  # Conditions  **Permission**: Administrator, manage_user global permission | [optional] 
**name** | **String** | User's full name, formatting depends on instance settings | 
**email** | **String** | User's email address  # Conditions  E-Mail address not hidden, **Permission**: Administrator, manage_user global permission | [optional] 
**admin** | **bool** | Flag indicating whether or not the user is an admin  # Conditions  **Permission**: Administrator | [optional] 
**avatar** | **String** | URL to user's avatar | 
**status** | **String** | The current activation status of the user (see below) | [optional] 
**language** | **String** | User's language | ISO 639-1 format  # Conditions  **Permission**: Administrator, manage_user global permission | [optional] 
**identityUrl** | [**Object**](.md) | User's identity_url for OmniAuth authentication  # Conditions  **Permission**: Administrator | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | Time of creation | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | Time of the most recent change to the user | [optional] 
**links** | [**UserModelLinks**](UserModelLinks.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


