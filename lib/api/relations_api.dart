//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class RelationsApi {
  RelationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List Relations
  ///
  /// Lists all relations according to the given (optional, logically conjunctive) filters and ordered by ID. The response only includes relations between work packages which the user is allowed to see.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Valid fields to filter by are:  + id - ID of relation  + from - ID of work package from which the filtered relations emanates.  + to - ID of work package to which this related points.  + involved - ID of either the `from` or the `to` work package.  + type - The type of relation to filter by, e.g. \"follows\".
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.
  Future<Response> apiV3RelationsGetWithHttpInfo({ String filters, String sortBy }) async {
    // Verify required params are set.

    final path = r'/api/v3/relations';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filters', filters));
    }
    if (sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sortBy', sortBy));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// List Relations
  ///
  /// Lists all relations according to the given (optional, logically conjunctive) filters and ordered by ID. The response only includes relations between work packages which the user is allowed to see.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Valid fields to filter by are:  + id - ID of relation  + from - ID of work package from which the filtered relations emanates.  + to - ID of work package to which this related points.  + involved - ID of either the `from` or the `to` work package.  + type - The type of relation to filter by, e.g. \"follows\".
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.
  Future<void> apiV3RelationsGet({ String filters, String sortBy }) async {
    final response = await apiV3RelationsGetWithHttpInfo( filters: filters, sortBy: sortBy );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Relation
  ///
  /// Deletes the relation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Relation ID
  Future<Response> apiV3RelationsIdDeleteWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/relations/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete Relation
  ///
  /// Deletes the relation.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Relation ID
  Future<void> apiV3RelationsIdDelete(int id) async {
    final response = await apiV3RelationsIdDeleteWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Relation edit form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the relation being modified
  Future<Response> apiV3RelationsIdFormPostWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/relations/{id}/form'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Relation edit form
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the relation being modified
  Future<void> apiV3RelationsIdFormPost(int id) async {
    final response = await apiV3RelationsIdFormPostWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View Relation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Relation id
  Future<Response> apiV3RelationsIdGetWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/relations/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// View Relation
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Relation id
  Future<void> apiV3RelationsIdGet(int id) async {
    final response = await apiV3RelationsIdGetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Edit Relation
  ///
  /// When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. It is only allowed to provide properties or links supporting the **write** operation.  Note that changing the `type` of a relation invariably also changes the respective `reverseType` as well as the \"name\" of it. The returned Relation object will reflect that change. For instance if you change a Relation's `type` to \"follows\" then the `reverseType` will be changed to `precedes`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Relation ID
  Future<Response> apiV3RelationsIdPatchWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/relations/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


    return await apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Edit Relation
  ///
  /// When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. It is only allowed to provide properties or links supporting the **write** operation.  Note that changing the `type` of a relation invariably also changes the respective `reverseType` as well as the \"name\" of it. The returned Relation object will reflect that change. For instance if you change a Relation's `type` to \"follows\" then the `reverseType` will be changed to `precedes`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Relation ID
  Future<void> apiV3RelationsIdPatch(int id) async {
    final response = await apiV3RelationsIdPatchWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View relation schema
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV3RelationsSchemaGetWithHttpInfo() async {
    final path = r'/api/v3/relations/schema';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// View relation schema
  Future<void> apiV3RelationsSchemaGet() async {
    final response = await apiV3RelationsSchemaGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View relation schema for type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   Type of the schema
  Future<Response> apiV3RelationsSchemaTypeGetWithHttpInfo(String type) async {
    // Verify required params are set.
    if (type == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: type');
    }

    final path = r'/api/v3/relations/schema/{type}'
      .replaceAll('{' + 'type' + '}', type.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// View relation schema for type
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   Type of the schema
  Future<void> apiV3RelationsSchemaTypeGet(String type) async {
    final response = await apiV3RelationsSchemaTypeGetWithHttpInfo(type);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
