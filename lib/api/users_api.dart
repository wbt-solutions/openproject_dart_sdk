//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class UsersApi {
  UsersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List Users
  ///
  /// Lists users. Only administrators have permission to do this.
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
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + status: Status the user has  + group: Name of the group in which to-be-listed users are members.  + name: Filter users in whose first or last names, or email addresses the given string occurs.  + login: User's login
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.
  Future<Response> apiV3UsersGetWithHttpInfo({ int? offset, int? pageSize, String? filters, String? sortBy, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/users';

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
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
    }

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List Users
  ///
  /// Lists users. Only administrators have permission to do this.
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
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + status: Status the user has  + group: Name of the group in which to-be-listed users are members.  + name: Filter users in whose first or last names, or email addresses the given string occurs.  + login: User's login
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.
  Future<Users?> apiV3UsersGet({ int? offset, int? pageSize, String? filters, String? sortBy, }) async {
    final response = await apiV3UsersGetWithHttpInfo( offset: offset, pageSize: pageSize, filters: filters, sortBy: sortBy, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Users',) as Users;
    
    }
    return null;
  }

  /// Delete user
  ///
  /// Permanently deletes the specified user account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   User id
  Future<Response> apiV3UsersIdDeleteWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/users/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Delete user
  ///
  /// Permanently deletes the specified user account.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   User id
  Future<void> apiV3UsersIdDelete(int id,) async {
    final response = await apiV3UsersIdDeleteWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id. Use `me` to reference current user, if any.
  Future<Response> apiV3UsersIdGetWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/users/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// View user
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id. Use `me` to reference current user, if any.
  Future<User?> apiV3UsersIdGet(String id,) async {
    final response = await apiV3UsersIdGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Remove Lock
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   User id
  Future<Response> apiV3UsersIdLockDeleteWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/users/{id}/lock'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Remove Lock
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   User id
  Future<void> apiV3UsersIdLockDelete(int id,) async {
    final response = await apiV3UsersIdLockDeleteWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set Lock
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   User id
  Future<Response> apiV3UsersIdLockPostWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/users/{id}/lock'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Set Lock
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   User id
  Future<void> apiV3UsersIdLockPost(int id,) async {
    final response = await apiV3UsersIdLockPostWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update user
  ///
  /// Updates the user's writable attributes. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   User id
  ///
  /// * [InlineObject4] inlineObject4:
  Future<Response> apiV3UsersIdPatchWithHttpInfo(int id, { InlineObject4? inlineObject4, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/users/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = inlineObject4;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Update user
  ///
  /// Updates the user's writable attributes. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   User id
  ///
  /// * [InlineObject4] inlineObject4:
  Future<void> apiV3UsersIdPatch(int id, { InlineObject4? inlineObject4, }) async {
    final response = await apiV3UsersIdPatchWithHttpInfo(id,  inlineObject4: inlineObject4, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create User
  ///
  /// Creates a new user. Only administrators have permission to do so. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.  Valid values for `status`:  1) \"active\" - In this case a password has to be provided in addition to the other attributes. 2) \"invited\" - In this case nothing but the email address is required. The rest is optional. An invitation will be sent to the user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InlineObject5] inlineObject5:
  Future<Response> apiV3UsersPostWithHttpInfo({ InlineObject5? inlineObject5, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/users';

    // ignore: prefer_final_locals
    Object? postBody = inlineObject5;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Create User
  ///
  /// Creates a new user. Only administrators have permission to do so. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.  Valid values for `status`:  1) \"active\" - In this case a password has to be provided in addition to the other attributes. 2) \"invited\" - In this case nothing but the email address is required. The rest is optional. An invitation will be sent to the user.
  ///
  /// Parameters:
  ///
  /// * [InlineObject5] inlineObject5:
  Future<void> apiV3UsersPost({ InlineObject5? inlineObject5, }) async {
    final response = await apiV3UsersPostWithHttpInfo( inlineObject5: inlineObject5, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
