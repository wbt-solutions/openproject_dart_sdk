//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class WorkScheduleApi {
  WorkScheduleApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a non-working day (NOT IMPLEMENTED)
  ///
  /// **(NOT IMPLEMENTED)** Marks a day as being a non-working day.  Note: creating a non-working day will not affect the start and finish dates of work packages but will affect their duration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NonWorkingDayModel] nonWorkingDayModel:
  Future<Response> createNonWorkingDayWithHttpInfo({ NonWorkingDayModel? nonWorkingDayModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/days/non_working';

    // ignore: prefer_final_locals
    Object? postBody = nonWorkingDayModel;

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

  /// Creates a non-working day (NOT IMPLEMENTED)
  ///
  /// **(NOT IMPLEMENTED)** Marks a day as being a non-working day.  Note: creating a non-working day will not affect the start and finish dates of work packages but will affect their duration.
  ///
  /// Parameters:
  ///
  /// * [NonWorkingDayModel] nonWorkingDayModel:
  Future<NonWorkingDayModel?> createNonWorkingDay({ NonWorkingDayModel? nonWorkingDayModel, }) async {
    final response = await createNonWorkingDayWithHttpInfo( nonWorkingDayModel: nonWorkingDayModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NonWorkingDayModel',) as NonWorkingDayModel;
    
    }
    return null;
  }

  /// Removes a non-working day (NOT IMPLEMENTED)
  ///
  /// **(NOT IMPLEMENTED)** Removes the non-working day at the given date.  Note: deleting a non-working day will not affect the start and finish dates of work packages but will affect their duration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] date (required):
  ///   The date of the non-working day to view in ISO 8601 format.
  Future<Response> deleteNonWorkingDayWithHttpInfo(DateTime date,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/days/non_working/{date}'
      .replaceAll('{date}', date.toString());

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

  /// Removes a non-working day (NOT IMPLEMENTED)
  ///
  /// **(NOT IMPLEMENTED)** Removes the non-working day at the given date.  Note: deleting a non-working day will not affect the start and finish dates of work packages but will affect their duration.
  ///
  /// Parameters:
  ///
  /// * [DateTime] date (required):
  ///   The date of the non-working day to view in ISO 8601 format.
  Future<void> deleteNonWorkingDay(DateTime date,) async {
    final response = await deleteNonWorkingDayWithHttpInfo(date,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists days
  ///
  /// Lists days information for a given date interval.  All days from the beginning of current month to the end of following month are returned by default.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions.  Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + date: the inclusive date interval to scope days to look up. When   unspecified, default is from the beginning of current month to the end   of following month.    Example: `{ \"date\": { \"operator\": \"<>d\", \"values\": [\"2022-05-02\",\"2022-05-26\"] } }`   would return days between May 5 and May 26 2022, inclusive.  + working: when `true`, returns only the working days. When `false`,   returns only the non-working days (weekend days and non-working days).   When unspecified, returns both working and non-working days.    Example: `{ \"working\": { \"operator\": \"=\", \"values\": [\"t\"] } }`   would exclude non-working days from the response.
  Future<Response> listDaysWithHttpInfo({ String? filters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/days';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Lists days
  ///
  /// Lists days information for a given date interval.  All days from the beginning of current month to the end of following month are returned by default.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions.  Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + date: the inclusive date interval to scope days to look up. When   unspecified, default is from the beginning of current month to the end   of following month.    Example: `{ \"date\": { \"operator\": \"<>d\", \"values\": [\"2022-05-02\",\"2022-05-26\"] } }`   would return days between May 5 and May 26 2022, inclusive.  + working: when `true`, returns only the working days. When `false`,   returns only the non-working days (weekend days and non-working days).   When unspecified, returns both working and non-working days.    Example: `{ \"working\": { \"operator\": \"=\", \"values\": [\"t\"] } }`   would exclude non-working days from the response.
  Future<DayCollectionModel?> listDays({ String? filters, }) async {
    final response = await listDaysWithHttpInfo( filters: filters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DayCollectionModel',) as DayCollectionModel;
    
    }
    return null;
  }

  /// Lists all non working days
  ///
  /// Lists all one-time non working days, such as holidays. It does not lists the non working weekdays, such as each Saturday, Sunday. For listing the weekends, the `/api/v3/days` endpoint should be used.  All days from current year are returned by default.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions.  Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + date: the inclusive date interval to scope days to look up. When   unspecified, default is from the beginning to the end of current year.    Example: `{ \"date\": { \"operator\": \"<>d\", \"values\": [\"2022-05-02\",\"2022-05-26\"] } }`   would return days between May 5 and May 26 2022, inclusive.
  Future<Response> listNonWorkingDaysWithHttpInfo({ String? filters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/days/non_working';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Lists all non working days
  ///
  /// Lists all one-time non working days, such as holidays. It does not lists the non working weekdays, such as each Saturday, Sunday. For listing the weekends, the `/api/v3/days` endpoint should be used.  All days from current year are returned by default.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions.  Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + date: the inclusive date interval to scope days to look up. When   unspecified, default is from the beginning to the end of current year.    Example: `{ \"date\": { \"operator\": \"<>d\", \"values\": [\"2022-05-02\",\"2022-05-26\"] } }`   would return days between May 5 and May 26 2022, inclusive.
  Future<NonWorkingDayCollectionModel?> listNonWorkingDays({ String? filters, }) async {
    final response = await listNonWorkingDaysWithHttpInfo( filters: filters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NonWorkingDayCollectionModel',) as NonWorkingDayCollectionModel;
    
    }
    return null;
  }

  /// Lists week days
  ///
  /// Lists week days with work schedule information.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listWeekDaysWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/days/week';

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

  /// Lists week days
  ///
  /// Lists week days with work schedule information.
  Future<WeekDayCollectionModel?> listWeekDays() async {
    final response = await listWeekDaysWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WeekDayCollectionModel',) as WeekDayCollectionModel;
    
    }
    return null;
  }

  /// Update a non-working day attributes (NOT IMPLEMENTED)
  ///
  /// **(NOT IMPLEMENTED)** Update the non-working day information for a given date.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] date (required):
  ///   The date of the non-working day to view in ISO 8601 format.
  ///
  /// * [NonWorkingDayModel] nonWorkingDayModel:
  Future<Response> updateNonWorkingDayWithHttpInfo(DateTime date, { NonWorkingDayModel? nonWorkingDayModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/days/non_working/{date}'
      .replaceAll('{date}', date.toString());

    // ignore: prefer_final_locals
    Object? postBody = nonWorkingDayModel;

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

  /// Update a non-working day attributes (NOT IMPLEMENTED)
  ///
  /// **(NOT IMPLEMENTED)** Update the non-working day information for a given date.
  ///
  /// Parameters:
  ///
  /// * [DateTime] date (required):
  ///   The date of the non-working day to view in ISO 8601 format.
  ///
  /// * [NonWorkingDayModel] nonWorkingDayModel:
  Future<NonWorkingDayModel?> updateNonWorkingDay(DateTime date, { NonWorkingDayModel? nonWorkingDayModel, }) async {
    final response = await updateNonWorkingDayWithHttpInfo(date,  nonWorkingDayModel: nonWorkingDayModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NonWorkingDayModel',) as NonWorkingDayModel;
    
    }
    return null;
  }

  /// Update a week day attributes (NOT IMPLEMENTED)
  ///
  /// **(NOT IMPLEMENTED)** Makes a week day a working or non-working day.  Note: changing a week day working attribute will not affect the start and finish dates of work packages but will affect their duration attribute.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] day (required):
  ///   The week day from 1 to 7. 1 is Monday. 7 is Sunday.
  ///
  /// * [WeekDayWriteModel] weekDayWriteModel:
  Future<Response> updateWeekDayWithHttpInfo(int day, { WeekDayWriteModel? weekDayWriteModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/days/week/{day}'
      .replaceAll('{day}', day.toString());

    // ignore: prefer_final_locals
    Object? postBody = weekDayWriteModel;

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

  /// Update a week day attributes (NOT IMPLEMENTED)
  ///
  /// **(NOT IMPLEMENTED)** Makes a week day a working or non-working day.  Note: changing a week day working attribute will not affect the start and finish dates of work packages but will affect their duration attribute.
  ///
  /// Parameters:
  ///
  /// * [int] day (required):
  ///   The week day from 1 to 7. 1 is Monday. 7 is Sunday.
  ///
  /// * [WeekDayWriteModel] weekDayWriteModel:
  Future<WeekDayModel?> updateWeekDay(int day, { WeekDayWriteModel? weekDayWriteModel, }) async {
    final response = await updateWeekDayWithHttpInfo(day,  weekDayWriteModel: weekDayWriteModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WeekDayModel',) as WeekDayModel;
    
    }
    return null;
  }

  /// Update week days (NOT IMPLEMENTED)
  ///
  /// **(NOT IMPLEMENTED)** Update multiple week days with work schedule information.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WeekDayCollectionWriteModel] weekDayCollectionWriteModel:
  Future<Response> updateWeekDaysWithHttpInfo({ WeekDayCollectionWriteModel? weekDayCollectionWriteModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/days/week';

    // ignore: prefer_final_locals
    Object? postBody = weekDayCollectionWriteModel;

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

  /// Update week days (NOT IMPLEMENTED)
  ///
  /// **(NOT IMPLEMENTED)** Update multiple week days with work schedule information.
  ///
  /// Parameters:
  ///
  /// * [WeekDayCollectionWriteModel] weekDayCollectionWriteModel:
  Future<WeekDayCollectionModel?> updateWeekDays({ WeekDayCollectionWriteModel? weekDayCollectionWriteModel, }) async {
    final response = await updateWeekDaysWithHttpInfo( weekDayCollectionWriteModel: weekDayCollectionWriteModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WeekDayCollectionModel',) as WeekDayCollectionModel;
    
    }
    return null;
  }

  /// View day
  ///
  /// View the day information for a given date.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] date (required):
  ///   The date of the non-working day to view in ISO 8601 format.
  Future<Response> viewDayWithHttpInfo(DateTime date,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/days/{date}'
      .replaceAll('{date}', date.toString());

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

  /// View day
  ///
  /// View the day information for a given date.
  ///
  /// Parameters:
  ///
  /// * [DateTime] date (required):
  ///   The date of the non-working day to view in ISO 8601 format.
  Future<DayModel?> viewDay(DateTime date,) async {
    final response = await viewDayWithHttpInfo(date,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DayModel',) as DayModel;
    
    }
    return null;
  }

  /// View a non-working day
  ///
  /// Returns the non-working day information for a given date.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] date (required):
  ///   The date of the non-working day to view in ISO 8601 format.
  Future<Response> viewNonWorkingDayWithHttpInfo(DateTime date,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/days/non_working/{date}'
      .replaceAll('{date}', date.toString());

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

  /// View a non-working day
  ///
  /// Returns the non-working day information for a given date.
  ///
  /// Parameters:
  ///
  /// * [DateTime] date (required):
  ///   The date of the non-working day to view in ISO 8601 format.
  Future<NonWorkingDayModel?> viewNonWorkingDay(DateTime date,) async {
    final response = await viewNonWorkingDayWithHttpInfo(date,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NonWorkingDayModel',) as NonWorkingDayModel;
    
    }
    return null;
  }

  /// View a week day
  ///
  /// View a week day and its attributes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] day (required):
  ///   The week day from 1 to 7. 1 is Monday. 7 is Sunday.
  Future<Response> viewWeekDayWithHttpInfo(int day,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/days/week/{day}'
      .replaceAll('{day}', day.toString());

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

  /// View a week day
  ///
  /// View a week day and its attributes.
  ///
  /// Parameters:
  ///
  /// * [int] day (required):
  ///   The week day from 1 to 7. 1 is Monday. 7 is Sunday.
  Future<WeekDayModel?> viewWeekDay(int day,) async {
    final response = await viewWeekDayWithHttpInfo(day,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WeekDayModel',) as WeekDayModel;
    
    }
    return null;
  }
}
