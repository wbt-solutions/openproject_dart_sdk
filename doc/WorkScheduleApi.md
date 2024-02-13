# openproject_dart_sdk.api.WorkScheduleApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNonWorkingDay**](WorkScheduleApi.md#createnonworkingday) | **POST** /api/v3/days/non_working | Creates a non-working day (NOT IMPLEMENTED)
[**deleteNonWorkingDay**](WorkScheduleApi.md#deletenonworkingday) | **DELETE** /api/v3/days/non_working/{date} | Removes a non-working day (NOT IMPLEMENTED)
[**listDays**](WorkScheduleApi.md#listdays) | **GET** /api/v3/days | Lists days
[**listNonWorkingDays**](WorkScheduleApi.md#listnonworkingdays) | **GET** /api/v3/days/non_working | Lists all non working days
[**listWeekDays**](WorkScheduleApi.md#listweekdays) | **GET** /api/v3/days/week | Lists week days
[**updateNonWorkingDay**](WorkScheduleApi.md#updatenonworkingday) | **PATCH** /api/v3/days/non_working/{date} | Update a non-working day attributes (NOT IMPLEMENTED)
[**updateWeekDay**](WorkScheduleApi.md#updateweekday) | **PATCH** /api/v3/days/week/{day} | Update a week day attributes (NOT IMPLEMENTED)
[**updateWeekDays**](WorkScheduleApi.md#updateweekdays) | **PATCH** /api/v3/days/week | Update week days (NOT IMPLEMENTED)
[**viewDay**](WorkScheduleApi.md#viewday) | **GET** /api/v3/days/{date} | View day
[**viewNonWorkingDay**](WorkScheduleApi.md#viewnonworkingday) | **GET** /api/v3/days/non_working/{date} | View a non-working day
[**viewWeekDay**](WorkScheduleApi.md#viewweekday) | **GET** /api/v3/days/week/{day} | View a week day


# **createNonWorkingDay**
> NonWorkingDayModel createNonWorkingDay(nonWorkingDayModel)

Creates a non-working day (NOT IMPLEMENTED)

**(NOT IMPLEMENTED)** Marks a day as being a non-working day.  Note: creating a non-working day will not affect the start and finish dates of work packages but will affect their duration.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkScheduleApi();
final nonWorkingDayModel = NonWorkingDayModel(); // NonWorkingDayModel | 

try {
    final result = api_instance.createNonWorkingDay(nonWorkingDayModel);
    print(result);
} catch (e) {
    print('Exception when calling WorkScheduleApi->createNonWorkingDay: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nonWorkingDayModel** | [**NonWorkingDayModel**](NonWorkingDayModel.md)|  | [optional] 

### Return type

[**NonWorkingDayModel**](NonWorkingDayModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteNonWorkingDay**
> deleteNonWorkingDay(date)

Removes a non-working day (NOT IMPLEMENTED)

**(NOT IMPLEMENTED)** Removes the non-working day at the given date.  Note: deleting a non-working day will not affect the start and finish dates of work packages but will affect their duration.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkScheduleApi();
final date = 2022-05-06; // DateTime | The date of the non-working day to view in ISO 8601 format.

try {
    api_instance.deleteNonWorkingDay(date);
} catch (e) {
    print('Exception when calling WorkScheduleApi->deleteNonWorkingDay: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**| The date of the non-working day to view in ISO 8601 format. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDays**
> DayCollectionModel listDays(filters)

Lists days

Lists days information for a given date interval.  All days from the beginning of current month to the end of following month are returned by default.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkScheduleApi();
final filters = [{ "date": { "operator": "<>d", "values": ["2022-05-02","2022-05-26"] } }, { "working": { "operator": "=", "values": ["f"] } }]; // String | JSON specifying filter conditions.  Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + date: the inclusive date interval to scope days to look up. When   unspecified, default is from the beginning of current month to the end   of following month.    Example: `{ \"date\": { \"operator\": \"<>d\", \"values\": [\"2022-05-02\",\"2022-05-26\"] } }`   would return days between May 5 and May 26 2022, inclusive.  + working: when `true`, returns only the working days. When `false`,   returns only the non-working days (weekend days and non-working days).   When unspecified, returns both working and non-working days.    Example: `{ \"working\": { \"operator\": \"=\", \"values\": [\"t\"] } }`   would exclude non-working days from the response.

try {
    final result = api_instance.listDays(filters);
    print(result);
} catch (e) {
    print('Exception when calling WorkScheduleApi->listDays: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions.  Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + date: the inclusive date interval to scope days to look up. When   unspecified, default is from the beginning of current month to the end   of following month.    Example: `{ \"date\": { \"operator\": \"<>d\", \"values\": [\"2022-05-02\",\"2022-05-26\"] } }`   would return days between May 5 and May 26 2022, inclusive.  + working: when `true`, returns only the working days. When `false`,   returns only the non-working days (weekend days and non-working days).   When unspecified, returns both working and non-working days.    Example: `{ \"working\": { \"operator\": \"=\", \"values\": [\"t\"] } }`   would exclude non-working days from the response. | [optional] 

### Return type

[**DayCollectionModel**](DayCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNonWorkingDays**
> NonWorkingDayCollectionModel listNonWorkingDays(filters)

Lists all non working days

Lists all one-time non working days, such as holidays. It does not lists the non working weekdays, such as each Saturday, Sunday. For listing the weekends, the `/api/v3/days` endpoint should be used.  All days from current year are returned by default.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkScheduleApi();
final filters = [{ "date": { "operator": "<>d", "values": ["2022-05-02","2022-05-26"] } }]; // String | JSON specifying filter conditions.  Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + date: the inclusive date interval to scope days to look up. When   unspecified, default is from the beginning to the end of current year.    Example: `{ \"date\": { \"operator\": \"<>d\", \"values\": [\"2022-05-02\",\"2022-05-26\"] } }`   would return days between May 5 and May 26 2022, inclusive.

try {
    final result = api_instance.listNonWorkingDays(filters);
    print(result);
} catch (e) {
    print('Exception when calling WorkScheduleApi->listNonWorkingDays: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions.  Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + date: the inclusive date interval to scope days to look up. When   unspecified, default is from the beginning to the end of current year.    Example: `{ \"date\": { \"operator\": \"<>d\", \"values\": [\"2022-05-02\",\"2022-05-26\"] } }`   would return days between May 5 and May 26 2022, inclusive. | [optional] 

### Return type

[**NonWorkingDayCollectionModel**](NonWorkingDayCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWeekDays**
> WeekDayCollectionModel listWeekDays()

Lists week days

Lists week days with work schedule information.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkScheduleApi();

try {
    final result = api_instance.listWeekDays();
    print(result);
} catch (e) {
    print('Exception when calling WorkScheduleApi->listWeekDays: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WeekDayCollectionModel**](WeekDayCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateNonWorkingDay**
> NonWorkingDayModel updateNonWorkingDay(date, nonWorkingDayModel)

Update a non-working day attributes (NOT IMPLEMENTED)

**(NOT IMPLEMENTED)** Update the non-working day information for a given date.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkScheduleApi();
final date = 2022-05-06; // DateTime | The date of the non-working day to view in ISO 8601 format.
final nonWorkingDayModel = NonWorkingDayModel(); // NonWorkingDayModel | 

try {
    final result = api_instance.updateNonWorkingDay(date, nonWorkingDayModel);
    print(result);
} catch (e) {
    print('Exception when calling WorkScheduleApi->updateNonWorkingDay: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**| The date of the non-working day to view in ISO 8601 format. | 
 **nonWorkingDayModel** | [**NonWorkingDayModel**](NonWorkingDayModel.md)|  | [optional] 

### Return type

[**NonWorkingDayModel**](NonWorkingDayModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWeekDay**
> WeekDayModel updateWeekDay(day, weekDayWriteModel)

Update a week day attributes (NOT IMPLEMENTED)

**(NOT IMPLEMENTED)** Makes a week day a working or non-working day.  Note: changing a week day working attribute will not affect the start and finish dates of work packages but will affect their duration attribute.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkScheduleApi();
final day = 56; // int | The week day from 1 to 7. 1 is Monday. 7 is Sunday.
final weekDayWriteModel = WeekDayWriteModel(); // WeekDayWriteModel | 

try {
    final result = api_instance.updateWeekDay(day, weekDayWriteModel);
    print(result);
} catch (e) {
    print('Exception when calling WorkScheduleApi->updateWeekDay: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **day** | **int**| The week day from 1 to 7. 1 is Monday. 7 is Sunday. | 
 **weekDayWriteModel** | [**WeekDayWriteModel**](WeekDayWriteModel.md)|  | [optional] 

### Return type

[**WeekDayModel**](WeekDayModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWeekDays**
> WeekDayCollectionModel updateWeekDays(weekDayCollectionWriteModel)

Update week days (NOT IMPLEMENTED)

**(NOT IMPLEMENTED)** Update multiple week days with work schedule information.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkScheduleApi();
final weekDayCollectionWriteModel = WeekDayCollectionWriteModel(); // WeekDayCollectionWriteModel | 

try {
    final result = api_instance.updateWeekDays(weekDayCollectionWriteModel);
    print(result);
} catch (e) {
    print('Exception when calling WorkScheduleApi->updateWeekDays: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **weekDayCollectionWriteModel** | [**WeekDayCollectionWriteModel**](WeekDayCollectionWriteModel.md)|  | [optional] 

### Return type

[**WeekDayCollectionModel**](WeekDayCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewDay**
> DayModel viewDay(date)

View day

View the day information for a given date.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkScheduleApi();
final date = 2022-05-06; // DateTime | The date of the non-working day to view in ISO 8601 format.

try {
    final result = api_instance.viewDay(date);
    print(result);
} catch (e) {
    print('Exception when calling WorkScheduleApi->viewDay: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**| The date of the non-working day to view in ISO 8601 format. | 

### Return type

[**DayModel**](DayModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewNonWorkingDay**
> NonWorkingDayModel viewNonWorkingDay(date)

View a non-working day

Returns the non-working day information for a given date.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkScheduleApi();
final date = 2022-05-06; // DateTime | The date of the non-working day to view in ISO 8601 format.

try {
    final result = api_instance.viewNonWorkingDay(date);
    print(result);
} catch (e) {
    print('Exception when calling WorkScheduleApi->viewNonWorkingDay: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**| The date of the non-working day to view in ISO 8601 format. | 

### Return type

[**NonWorkingDayModel**](NonWorkingDayModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewWeekDay**
> WeekDayModel viewWeekDay(day)

View a week day

View a week day and its attributes.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = WorkScheduleApi();
final day = 56; // int | The week day from 1 to 7. 1 is Monday. 7 is Sunday.

try {
    final result = api_instance.viewWeekDay(day);
    print(result);
} catch (e) {
    print('Exception when calling WorkScheduleApi->viewWeekDay: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **day** | **int**| The week day from 1 to 7. 1 is Monday. 7 is Sunday. | 

### Return type

[**WeekDayModel**](WeekDayModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

