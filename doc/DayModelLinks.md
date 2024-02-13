# openproject_dart_sdk.model.DayModelLinks

## Load the model package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**self** | [**Link**](Link.md) |  | 
**nonWorkingReasons** | [**List<Link>**](Link.md) | A list of resources describing why this day is a non-working day. Linked resources can be `NonWorkingDay` and `WeekDay` resources. This property is absent for working days. | [optional] [default to const []]
**weekDay** | [**DayModelLinksWeekDay**](DayModelLinksWeekDay.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


