# openproject_dart_sdk.api.BudgetsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**viewBudget**](BudgetsApi.md#viewbudget) | **GET** /api/v3/budgets/{id} | view Budget
[**viewBudgetsOfAProject**](BudgetsApi.md#viewbudgetsofaproject) | **GET** /api/v3/projects/{id}/budgets | view Budgets of a Project


# **viewBudget**
> BudgetModel viewBudget(id)

view Budget



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = BudgetsApi();
final id = 1; // int | Budget id

try {
    final result = api_instance.viewBudget(id);
    print(result);
} catch (e) {
    print('Exception when calling BudgetsApi->viewBudget: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Budget id | 

### Return type

[**BudgetModel**](BudgetModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewBudgetsOfAProject**
> Object viewBudgetsOfAProject(id)

view Budgets of a Project



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = BudgetsApi();
final id = 1; // int | Project id

try {
    final result = api_instance.viewBudgetsOfAProject(id);
    print(result);
} catch (e) {
    print('Exception when calling BudgetsApi->viewBudgetsOfAProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project id | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

