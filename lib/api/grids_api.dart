//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class GridsApi {
  GridsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a grid
  ///
  /// Creates a new grid applying the attributes provided in the body. The constraints applied to the grid depend on the page the grid is placed in which is why the create form end point should be used to be guided when wanting to create a grid.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GridWriteModel] gridWriteModel:
  Future<Response> createGridWithHttpInfo({ GridWriteModel? gridWriteModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/grids';

    // ignore: prefer_final_locals
    Object? postBody = gridWriteModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a grid
  ///
  /// Creates a new grid applying the attributes provided in the body. The constraints applied to the grid depend on the page the grid is placed in which is why the create form end point should be used to be guided when wanting to create a grid.
  ///
  /// Parameters:
  ///
  /// * [GridWriteModel] gridWriteModel:
  Future<GridReadModel?> createGrid({ GridWriteModel? gridWriteModel, }) async {
    final response = await createGridWithHttpInfo( gridWriteModel: gridWriteModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GridReadModel',) as GridReadModel;
    
    }
    return null;
  }

  /// Get a grid
  ///
  /// Fetches a single grid identified by its id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Grid id
  Future<Response> getGridWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/grids/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a grid
  ///
  /// Fetches a single grid identified by its id.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Grid id
  Future<GridReadModel?> getGrid(int id,) async {
    final response = await getGridWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GridReadModel',) as GridReadModel;
    
    }
    return null;
  }

  /// Grid Create Form
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> gridCreateFormWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/grids/form';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Grid Create Form
  ///
  /// 
  Future<void> gridCreateForm() async {
    final response = await gridCreateFormWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Grid Update Form
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the grid being modified
  Future<Response> gridUpdateFormWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/grids/{id}/form'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Grid Update Form
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the grid being modified
  Future<Object?> gridUpdateForm(int id,) async {
    final response = await gridUpdateFormWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// List grids
  ///
  /// Lists all grids matching the provided filters and being part of the selected query page. The grids returned will also depend on the permissions of the requesting user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Page number inside the requested collection.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page.
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - page: Filter grid by work package
  Future<Response> listGridsWithHttpInfo({ int? offset, int? pageSize, String? filters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/grids';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List grids
  ///
  /// Lists all grids matching the provided filters and being part of the selected query page. The grids returned will also depend on the permissions of the requesting user.
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Page number inside the requested collection.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page.
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - page: Filter grid by work package
  Future<GridCollectionModel?> listGrids({ int? offset, int? pageSize, String? filters, }) async {
    final response = await listGridsWithHttpInfo( offset: offset, pageSize: pageSize, filters: filters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GridCollectionModel',) as GridCollectionModel;
    
    }
    return null;
  }

  /// Update a grid
  ///
  /// Updates the given grid by applying the attributes provided in the body. The constraints applied to the grid depend on the page the grid is placed in which is why the create form end point should be used to be guided when wanting to update a grid.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GridWriteModel] gridWriteModel:
  Future<Response> updateGridWithHttpInfo({ GridWriteModel? gridWriteModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/grids/{id}';

    // ignore: prefer_final_locals
    Object? postBody = gridWriteModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a grid
  ///
  /// Updates the given grid by applying the attributes provided in the body. The constraints applied to the grid depend on the page the grid is placed in which is why the create form end point should be used to be guided when wanting to update a grid.
  ///
  /// Parameters:
  ///
  /// * [GridWriteModel] gridWriteModel:
  Future<GridReadModel?> updateGrid({ GridWriteModel? gridWriteModel, }) async {
    final response = await updateGridWithHttpInfo( gridWriteModel: gridWriteModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GridReadModel',) as GridReadModel;
    
    }
    return null;
  }
}
