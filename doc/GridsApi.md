# openproject_dart_sdk.api.GridsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGrid**](GridsApi.md#creategrid) | **POST** /api/v3/grids | Create a grid
[**getGrid**](GridsApi.md#getgrid) | **GET** /api/v3/grids/{id} | Get a grid
[**gridCreateForm**](GridsApi.md#gridcreateform) | **POST** /api/v3/grids/form | Grid Create Form
[**gridUpdateForm**](GridsApi.md#gridupdateform) | **POST** /api/v3/grids/{id}/form | Grid Update Form
[**listGrids**](GridsApi.md#listgrids) | **GET** /api/v3/grids | List grids
[**updateGrid**](GridsApi.md#updategrid) | **PATCH** /api/v3/grids/{id} | Update a grid


# **createGrid**
> GridReadModel createGrid(gridWriteModel)

Create a grid

Creates a new grid applying the attributes provided in the body. The constraints applied to the grid depend on the page the grid is placed in which is why the create form end point should be used to be guided when wanting to create a grid.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = GridsApi();
final gridWriteModel = GridWriteModel(); // GridWriteModel | 

try {
    final result = api_instance.createGrid(gridWriteModel);
    print(result);
} catch (e) {
    print('Exception when calling GridsApi->createGrid: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gridWriteModel** | [**GridWriteModel**](GridWriteModel.md)|  | [optional] 

### Return type

[**GridReadModel**](GridReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGrid**
> GridReadModel getGrid(id)

Get a grid

Fetches a single grid identified by its id.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = GridsApi();
final id = 42; // int | Grid id

try {
    final result = api_instance.getGrid(id);
    print(result);
} catch (e) {
    print('Exception when calling GridsApi->getGrid: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Grid id | 

### Return type

[**GridReadModel**](GridReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gridCreateForm**
> gridCreateForm()

Grid Create Form



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = GridsApi();

try {
    api_instance.gridCreateForm();
} catch (e) {
    print('Exception when calling GridsApi->gridCreateForm: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gridUpdateForm**
> Object gridUpdateForm(id)

Grid Update Form



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = GridsApi();
final id = 1; // int | ID of the grid being modified

try {
    final result = api_instance.gridUpdateForm(id);
    print(result);
} catch (e) {
    print('Exception when calling GridsApi->gridUpdateForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the grid being modified | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGrids**
> GridCollectionModel listGrids(offset, pageSize, filters)

List grids

Lists all grids matching the provided filters and being part of the selected query page. The grids returned will also depend on the permissions of the requesting user.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = GridsApi();
final offset = 25; // int | Page number inside the requested collection.
final pageSize = 25; // int | Number of elements to display per page.
final filters = [{ "page": { "operator": "=", "values": ["/my/page"] } }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - page: Filter grid by work package

try {
    final result = api_instance.listGrids(offset, pageSize, filters);
    print(result);
} catch (e) {
    print('Exception when calling GridsApi->listGrids: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Page number inside the requested collection. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page. | [optional] [default to 30]
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - page: Filter grid by work package | [optional] 

### Return type

[**GridCollectionModel**](GridCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGrid**
> GridReadModel updateGrid(gridWriteModel)

Update a grid

Updates the given grid by applying the attributes provided in the body. The constraints applied to the grid depend on the page the grid is placed in which is why the create form end point should be used to be guided when wanting to update a grid.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = GridsApi();
final gridWriteModel = GridWriteModel(); // GridWriteModel | 

try {
    final result = api_instance.updateGrid(gridWriteModel);
    print(result);
} catch (e) {
    print('Exception when calling GridsApi->updateGrid: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gridWriteModel** | [**GridWriteModel**](GridWriteModel.md)|  | [optional] 

### Return type

[**GridReadModel**](GridReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

