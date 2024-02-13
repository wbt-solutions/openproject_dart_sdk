//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class PrincipalsApi {
  PrincipalsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List principals
  ///
  /// List all principals. The client can choose to filter the principals similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain principals who are members in projects the client is allowed to see.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + type: filters principals by their type (*User*, *Group*, *PlaceholderUser*).  + member: filters principals by the projects they are members in.  + name: filters principals by the user or group name.  + any_name_attribute: filters principals by the user or group first- and last name, email or login.  + status: filters principals by their status number (active = *1*, registered = *2*, locked = *3*, invited = *4*)
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
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + type: filters principals by their type (*User*, *Group*, *PlaceholderUser*).  + member: filters principals by the projects they are members in.  + name: filters principals by the user or group name.  + any_name_attribute: filters principals by the user or group first- and last name, email or login.  + status: filters principals by their status number (active = *1*, registered = *2*, locked = *3*, invited = *4*)
  ///
  /// * [String] select:
  ///   Comma separated list of properties to include.
  Future<Object?> listPrincipals({ String? filters, String? select, }) async {
    final response = await listPrincipalsWithHttpInfo( filters: filters, select: select, );
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
}
