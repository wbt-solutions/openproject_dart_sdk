# openproject_dart_sdk.model.UserModel

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**id** | **int** | The principal's unique identifier. | 
**name** | **String** | The principal's display name, layout depends on instance settings. | 
**createdAt** | [**DateTime**](DateTime.md) | Time of creation | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | Time of the most recent change to the user | [optional] 
**links** | [**UserModelAllOfLinks**](UserModelAllOfLinks.md) |  | 
**avatar** | **String** | URL to user's avatar | 
**login** | **String** | The user's login name  # Conditions  - User is self, or `create_user` or `manage_user` permission globally | [optional] 
**firstName** | **String** | The user's first name  # Conditions  - User is self, or `create_user` or `manage_user` permission globally | [optional] 
**lastName** | **String** | The user's last name  # Conditions  - User is self, or `create_user` or `manage_user` permission globally | [optional] 
**email** | **String** | The user's email address  # Conditions  - E-Mail address not hidden - User is not a new record - User is self, or `create_user` or `manage_user` permission globally | [optional] 
**admin** | **bool** | Flag indicating whether or not the user is an admin  # Conditions  - `admin` | [optional] 
**status** | **String** | The current activation status of the user.  # Conditions  - User is self, or `create_user` or `manage_user` permission globally | [optional] 
**language** | **String** | User's language | ISO 639-1 format  # Conditions  - User is self, or `create_user` or `manage_user` permission globally | [optional] 
**identityUrl** | [**Object**](.md) | User's identity_url for OmniAuth authentication.  # Conditions  - User is self, or `create_user` or `manage_user` permission globally | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


