# openproject_dart_sdk.api.ValuesPropertyApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**viewNotificationDetail**](ValuesPropertyApi.md#viewnotificationdetail) | **GET** /api/v3/notifications/{notification_id}/details/{id} | Get a notification detail
[**viewValuesSchema**](ValuesPropertyApi.md#viewvaluesschema) | **GET** /api/v3/values/schema/{id} | View Values schema


# **viewNotificationDetail**
> ValuesPropertyModel viewNotificationDetail(notificationId, id)

Get a notification detail

Returns an individual detail of a notification identified by the notification id and the id of the detail.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = ValuesPropertyApi();
final notificationId = 1; // int | notification id
final id = 0; // int | detail id

try {
    final result = api_instance.viewNotificationDetail(notificationId, id);
    print(result);
} catch (e) {
    print('Exception when calling ValuesPropertyApi->viewNotificationDetail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationId** | **int**| notification id | 
 **id** | **int**| detail id | 

### Return type

[**ValuesPropertyModel**](ValuesPropertyModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewValuesSchema**
> SchemaModel viewValuesSchema(id)

View Values schema

The schema of a `Values` resource.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = ValuesPropertyApi();
final id = startDate; // String | The identifier of the value. This is typically the value of the `property` property of the `Values` resource. It should be in lower camelcase format.

try {
    final result = api_instance.viewValuesSchema(id);
    print(result);
} catch (e) {
    print('Exception when calling ValuesPropertyApi->viewValuesSchema: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The identifier of the value. This is typically the value of the `property` property of the `Values` resource. It should be in lower camelcase format. | 

### Return type

[**SchemaModel**](SchemaModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

