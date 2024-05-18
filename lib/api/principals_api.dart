//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class PrincipalsApi {
  PrincipalsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create placeholder user
  ///
  /// Creates a new placeholder user. Only administrators and users with `manage_placeholder_user` global permission are allowed to do so. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PlaceholderUserCreateModel] placeholderUserCreateModel:
  Future<Response> createPlaceholderUserWithHttpInfo({ PlaceholderUserCreateModel? placeholderUserCreateModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/placeholder_users';

    // ignore: prefer_final_locals
    Object? postBody = placeholderUserCreateModel;

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

  /// Create placeholder user
  ///
  /// Creates a new placeholder user. Only administrators and users with `manage_placeholder_user` global permission are allowed to do so. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.
  ///
  /// Parameters:
  ///
  /// * [PlaceholderUserCreateModel] placeholderUserCreateModel:
  Future<PlaceholderUserModel?> createPlaceholderUser({ PlaceholderUserCreateModel? placeholderUserCreateModel, }) async {
    final response = await createPlaceholderUserWithHttpInfo( placeholderUserCreateModel: placeholderUserCreateModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlaceholderUserModel',) as PlaceholderUserModel;
    
    }
    return null;
  }

  /// Create User
  ///
  /// Creates a new user. Only administrators and users with manage_user global permission are allowed to do so. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.  Valid values for `status`:  1) \"active\" - In this case a password has to be provided in addition to the other attributes.  2) \"invited\" - In this case nothing but the email address is required. The rest is optional. An invitation will be sent to the user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserCreateModel] userCreateModel:
  Future<Response> createUserWithHttpInfo({ UserCreateModel? userCreateModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/users';

    // ignore: prefer_final_locals
    Object? postBody = userCreateModel;

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

  /// Create User
  ///
  /// Creates a new user. Only administrators and users with manage_user global permission are allowed to do so. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.  Valid values for `status`:  1) \"active\" - In this case a password has to be provided in addition to the other attributes.  2) \"invited\" - In this case nothing but the email address is required. The rest is optional. An invitation will be sent to the user.
  ///
  /// Parameters:
  ///
  /// * [UserCreateModel] userCreateModel:
  Future<UserModel?> createUser({ UserCreateModel? userCreateModel, }) async {
    final response = await createUserWithHttpInfo( userCreateModel: userCreateModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserModel',) as UserModel;
    
    }
    return null;
  }

  /// Delete placeholder user
  ///
  /// Set the specified placeholder user to deleted status.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Placeholder user id
  Future<Response> deletePlaceholderUserWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/placeholder_users/{id}'
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

  /// Delete placeholder user
  ///
  /// Set the specified placeholder user to deleted status.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Placeholder user id
  Future<void> deletePlaceholderUser(int id,) async {
    final response = await deletePlaceholderUserWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
  Future<Response> deleteUserWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/users/{id}'
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

  /// Delete user
  ///
  /// Permanently deletes the specified user account.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   User id
  Future<void> deleteUser(int id,) async {
    final response = await deleteUserWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List placehoder users
  ///
  /// List all placeholder users. This can only be accessed if the requesting user has the global permission `manage_placeholder_user` or `manage_members` in any project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - name: filters placeholder users by the name. - group: filters placeholder by the group it is contained in. - status: filters placeholder by the status it has.
  ///
  /// * [String] select:
  ///   Comma separated list of properties to include.
  Future<Response> listPlaceholderUsersWithHttpInfo({ String? filters, String? select, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/placeholder_users';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
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

  /// List placehoder users
  ///
  /// List all placeholder users. This can only be accessed if the requesting user has the global permission `manage_placeholder_user` or `manage_members` in any project.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - name: filters placeholder users by the name. - group: filters placeholder by the group it is contained in. - status: filters placeholder by the status it has.
  ///
  /// * [String] select:
  ///   Comma separated list of properties to include.
  Future<PrincipalCollectionModel?> listPlaceholderUsers({ String? filters, String? select, }) async {
    final response = await listPlaceholderUsersWithHttpInfo( filters: filters, select: select, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PrincipalCollectionModel',) as PrincipalCollectionModel;
    
    }
    return null;
  }

  /// List principals
  ///
  /// List all principals. The client can choose to filter the principals similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain principals who are members in projects the client is allowed to see.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - type: filters principals by their type (*User*, *Group*, *PlaceholderUser*). - member: filters principals by the projects they are members in. - name: filters principals by the user or group name. - any_name_attribute: filters principals by the user or group first- and last name, email or login. - status: filters principals by their status number (active = *1*, registered = *2*, locked = *3*, invited = *4*)
  ///
  /// * [String] select:
  ///   Comma separated list of properties to include.
  Future<Response> listPrincipalsWithHttpInfo({ String? filters, String? select, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/principals';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
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

  /// List principals
  ///
  /// List all principals. The client can choose to filter the principals similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain principals who are members in projects the client is allowed to see.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - type: filters principals by their type (*User*, *Group*, *PlaceholderUser*). - member: filters principals by the projects they are members in. - name: filters principals by the user or group name. - any_name_attribute: filters principals by the user or group first- and last name, email or login. - status: filters principals by their status number (active = *1*, registered = *2*, locked = *3*, invited = *4*)
  ///
  /// * [String] select:
  ///   Comma separated list of properties to include.
  Future<PrincipalCollectionModel?> listPrincipals({ String? filters, String? select, }) async {
    final response = await listPrincipalsWithHttpInfo( filters: filters, select: select, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PrincipalCollectionModel',) as PrincipalCollectionModel;
    
    }
    return null;
  }

  /// List Users
  ///
  /// Lists users. Only administrators or users with any of the following can access this resource:  - `manage_members` - `manage_user` - `share_work_packages`
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
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + status: Status the user has  + group: Name of the group in which to-be-listed users are members.  + name: Filter users in whose first or last names, or email addresses the given string occurs.  + login: User's login
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint.
  ///
  /// * [String] select:
  ///   Comma separated list of properties to include.
  Future<Response> listUsersWithHttpInfo({ int? offset, int? pageSize, String? filters, String? sortBy, String? select, }) async {
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

  /// List Users
  ///
  /// Lists users. Only administrators or users with any of the following can access this resource:  - `manage_members` - `manage_user` - `share_work_packages`
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
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + status: Status the user has  + group: Name of the group in which to-be-listed users are members.  + name: Filter users in whose first or last names, or email addresses the given string occurs.  + login: User's login
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint.
  ///
  /// * [String] select:
  ///   Comma separated list of properties to include.
  Future<UserCollectionModel?> listUsers({ int? offset, int? pageSize, String? filters, String? sortBy, String? select, }) async {
    final response = await listUsersWithHttpInfo( offset: offset, pageSize: pageSize, filters: filters, sortBy: sortBy, select: select, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserCollectionModel',) as UserCollectionModel;
    
    }
    return null;
  }

  /// Update placeholder user
  ///
  /// Updates the placeholder user's writable attributes. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Placeholder user id
  ///
  /// * [PlaceholderUserCreateModel] placeholderUserCreateModel:
  Future<Response> updatePlaceholderUserWithHttpInfo(int id, { PlaceholderUserCreateModel? placeholderUserCreateModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/placeholder_users/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = placeholderUserCreateModel;

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

  /// Update placeholder user
  ///
  /// Updates the placeholder user's writable attributes. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Placeholder user id
  ///
  /// * [PlaceholderUserCreateModel] placeholderUserCreateModel:
  Future<PlaceholderUserModel?> updatePlaceholderUser(int id, { PlaceholderUserCreateModel? placeholderUserCreateModel, }) async {
    final response = await updatePlaceholderUserWithHttpInfo(id,  placeholderUserCreateModel: placeholderUserCreateModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlaceholderUserModel',) as PlaceholderUserModel;
    
    }
    return null;
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
  /// * [UserCreateModel] userCreateModel:
  Future<Response> updateUserWithHttpInfo(int id, { UserCreateModel? userCreateModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/users/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = userCreateModel;

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

  /// Update user
  ///
  /// Updates the user's writable attributes. When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   User id
  ///
  /// * [UserCreateModel] userCreateModel:
  Future<UserModel?> updateUser(int id, { UserCreateModel? userCreateModel, }) async {
    final response = await updateUserWithHttpInfo(id,  userCreateModel: userCreateModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserModel',) as UserModel;
    
    }
    return null;
  }

  /// View placeholder user
  ///
  /// Return the placeholder user resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The placeholder user id
  Future<Response> viewPlaceholderUserWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/placeholder_users/{id}'
      .replaceAll('{id}', id);

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

  /// View placeholder user
  ///
  /// Return the placeholder user resource.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The placeholder user id
  Future<PlaceholderUserModel?> viewPlaceholderUser(String id,) async {
    final response = await viewPlaceholderUserWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PlaceholderUserModel',) as PlaceholderUserModel;
    
    }
    return null;
  }

  /// View user
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id. Use `me` to reference current user, if any.
  Future<Response> viewUserWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/users/{id}'
      .replaceAll('{id}', id);

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

  /// View user
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   User id. Use `me` to reference current user, if any.
  Future<UserModel?> viewUser(String id,) async {
    final response = await viewUserWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserModel',) as UserModel;
    
    }
    return null;
  }
}
