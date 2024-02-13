//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class GroupsApi {
  GroupsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create group
  ///
  /// Creates a new group applying the attributes provided in the body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GroupWriteModel] groupWriteModel:
  Future<Response> createGroupWithHttpInfo({ GroupWriteModel? groupWriteModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/groups';

    // ignore: prefer_final_locals
    Object? postBody = groupWriteModel;

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

  /// Create group
  ///
  /// Creates a new group applying the attributes provided in the body.
  ///
  /// Parameters:
  ///
  /// * [GroupWriteModel] groupWriteModel:
  Future<GroupModel?> createGroup({ GroupWriteModel? groupWriteModel, }) async {
    final response = await createGroupWithHttpInfo( groupWriteModel: groupWriteModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupModel',) as GroupModel;
    
    }
    return null;
  }

  /// Delete group
  ///
  /// Deletes the group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Group id
  Future<Response> deleteGroupWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/groups/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete group
  ///
  /// Deletes the group.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Group id
  Future<void> deleteGroup(int id,) async {
    final response = await deleteGroupWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get group
  ///
  /// Fetches a group resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Group id
  Future<Response> getGroupWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/groups/{id}'
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

  /// Get group
  ///
  /// Fetches a group resource.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Group id
  Future<GroupModel?> getGroup(int id,) async {
    final response = await getGroupWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupModel',) as GroupModel;
    
    }
    return null;
  }

  /// List groups
  ///
  /// Returns a collection of groups. The client can choose to filter the groups similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain groups, for which the requesting client has sufficient permissions (*view_members*, *manage_members*).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key  + created_at: Sort by group creation datetime  + updated_at: Sort by the time the group was updated last
  ///
  /// * [String] select:
  ///   Comma separated list of properties to include.
  Future<Response> listGroupsWithHttpInfo({ String? sortBy, String? select, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/groups';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
    }
    if (select != null) {
      queryParams.addAll(_queryParams('', 'select', select));
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

  /// List groups
  ///
  /// Returns a collection of groups. The client can choose to filter the groups similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain groups, for which the requesting client has sufficient permissions (*view_members*, *manage_members*).
  ///
  /// Parameters:
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key  + created_at: Sort by group creation datetime  + updated_at: Sort by the time the group was updated last
  ///
  /// * [String] select:
  ///   Comma separated list of properties to include.
  Future<GroupCollectionModel?> listGroups({ String? sortBy, String? select, }) async {
    final response = await listGroupsWithHttpInfo( sortBy: sortBy, select: select, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupCollectionModel',) as GroupCollectionModel;
    
    }
    return null;
  }

  /// Update group
  ///
  /// Updates the given group by applying the attributes provided in the body.  Please note that the `members` array provided will override the existing set of members (similar to a PUT). A client thus has to provide the complete list of members the group is to have after the PATCH even if only one member is to be added.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Group id
  ///
  /// * [GroupWriteModel] groupWriteModel:
  Future<Response> updateGroupWithHttpInfo(int id, { GroupWriteModel? groupWriteModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/groups/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = groupWriteModel;

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

  /// Update group
  ///
  /// Updates the given group by applying the attributes provided in the body.  Please note that the `members` array provided will override the existing set of members (similar to a PUT). A client thus has to provide the complete list of members the group is to have after the PATCH even if only one member is to be added.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Group id
  ///
  /// * [GroupWriteModel] groupWriteModel:
  Future<GroupModel?> updateGroup(int id, { GroupWriteModel? groupWriteModel, }) async {
    final response = await updateGroupWithHttpInfo(id,  groupWriteModel: groupWriteModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupModel',) as GroupModel;
    
    }
    return null;
  }
}
