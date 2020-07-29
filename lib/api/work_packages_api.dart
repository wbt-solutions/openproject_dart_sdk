part of openproject_dart_sdk.api;



class WorkPackagesApi {
  final ApiClient apiClient;

  WorkPackagesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// WorkPackage Create Form with HTTP info returned
  ///
  ///
  Future apiV3ProjectsIdWorkPackagesFormPostWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/projects/{id}/work_packages/form".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// WorkPackage Create Form
  ///
  ///int id  (required):
  ///     ID of the project in which the WorkPackage will be created
  ///
  Future apiV3ProjectsIdWorkPackagesFormPost(int id) async {
    Response response = await apiV3ProjectsIdWorkPackagesFormPostWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// List WorkPackages with HTTP info returned
  ///
  ///
  Future<Response> apiV3ProjectsIdWorkPackagesGetWithHttpInfo(int id, { int offset, int pageSize, String filters, String sortBy, String groupBy, bool showSums }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/projects/{id}/work_packages".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
    }
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filters", filters));
    }
    if(sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortBy", sortBy));
    }
    if(groupBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "groupBy", groupBy));
    }
    if(showSums != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showSums", showSums));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List WorkPackages
  ///
  ///int id  (required):
  ///     Project id
  ///int offset :
  ///     Page number inside the requested collection.
  ///int pageSize :
  ///     Number of elements to display per page.
  ///String filters :
  ///     JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///String sortBy :
  ///     JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///String groupBy :
  ///     The column to group by.
  ///bool showSums :
  ///     Indicates whether properties should be summed up if they support it.
  ///
  Future<WorkPackages> apiV3ProjectsIdWorkPackagesGet(int id, { int offset, int pageSize, String filters, String sortBy, String groupBy, bool showSums }) async {
    Response response = await apiV3ProjectsIdWorkPackagesGetWithHttpInfo(id,  offset: offset, pageSize: pageSize, filters: filters, sortBy: sortBy, groupBy: groupBy, showSums: showSums );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkPackages') as WorkPackages;
    } else {
      return null;
    }
  }

  /// Create WorkPackage with HTTP info returned
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  Future<Response> apiV3ProjectsIdWorkPackagesPostWithHttpInfo(int id, WorkPackage workPackage, { bool notify }) async {
    Object postBody = workPackage;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(workPackage == null) {
     throw ApiException(400, "Missing required param: workPackage");
    }

    // create path and map variables
    String path = "/api/v3/projects/{id}/work_packages".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(notify != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "notify", notify));
    }

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Create WorkPackage
  ///
  ///int id  (required):
  ///     Project id
  ///WorkPackage workPackage  (required):
  ///     WorkPackage to add to the project
  ///bool notify :
  ///     Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the WorkPackage (e.g. watchers, author and assignee), not just the current user.
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  Future<WorkPackage> apiV3ProjectsIdWorkPackagesPost(int id, WorkPackage workPackage, { bool notify }) async {
    Response response = await apiV3ProjectsIdWorkPackagesPostWithHttpInfo(id, workPackage,  notify: notify );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkPackage') as WorkPackage;
    } else {
      return null;
    }
  }

  /// Available assignees with HTTP info returned
  ///
  /// Gets a list of users that can be assigned to WorkPackages in the given project.
  Future<Response> apiV3ProjectsProjectIdWorkPackagesAvailableAssigneesGetWithHttpInfo(int projectId) async {
    Object postBody;

    // verify required params are set
    if(projectId == null) {
     throw ApiException(400, "Missing required param: projectId");
    }

    // create path and map variables
    String path = "/api/v3/projects/{project_id}/work_packages/available_assignees".replaceAll("{format}","json").replaceAll("{" + "project_id" + "}", projectId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Available assignees
  ///
  ///int projectId  (required):
  ///     Project id
  /// Gets a list of users that can be assigned to WorkPackages in the given project.
  Future<Users> apiV3ProjectsProjectIdWorkPackagesAvailableAssigneesGet(int projectId) async {
    Response response = await apiV3ProjectsProjectIdWorkPackagesAvailableAssigneesGetWithHttpInfo(projectId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Users') as Users;
    } else {
      return null;
    }
  }

  /// Available responsibles with HTTP info returned
  ///
  /// Gets a list of users that can be assigned as the responsible of a WorkPackage in the given project.
  Future<Response> apiV3ProjectsProjectIdWorkPackagesAvailableResponsiblesGetWithHttpInfo(int projectId) async {
    Object postBody;

    // verify required params are set
    if(projectId == null) {
     throw ApiException(400, "Missing required param: projectId");
    }

    // create path and map variables
    String path = "/api/v3/projects/{project_id}/work_packages/available_responsibles".replaceAll("{format}","json").replaceAll("{" + "project_id" + "}", projectId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Available responsibles
  ///
  ///int projectId  (required):
  ///     Project id
  /// Gets a list of users that can be assigned as the responsible of a WorkPackage in the given project.
  Future<Users> apiV3ProjectsProjectIdWorkPackagesAvailableResponsiblesGet(int projectId) async {
    Response response = await apiV3ProjectsProjectIdWorkPackagesAvailableResponsiblesGetWithHttpInfo(projectId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Users') as Users;
    } else {
      return null;
    }
  }

  /// WorkPackage Create Form with HTTP info returned
  ///
  ///
  Future apiV3WorkPackagesFormPostWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/work_packages/form".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// WorkPackage Create Form
  ///
  ///
  Future apiV3WorkPackagesFormPost() async {
    Response response = await apiV3WorkPackagesFormPostWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// List WorkPackages with HTTP info returned
  ///
  ///
  Future<Response> apiV3WorkPackagesGetWithHttpInfo({ int offset, int pageSize, String filters, String sortBy, String groupBy, bool showSums }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/work_packages".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
    }
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filters", filters));
    }
    if(sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortBy", sortBy));
    }
    if(groupBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "groupBy", groupBy));
    }
    if(showSums != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showSums", showSums));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List WorkPackages
  ///
  ///int offset :
  ///     Page number inside the requested collection.
  ///int pageSize :
  ///     Number of elements to display per page.
  ///String filters :
  ///     JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///String sortBy :
  ///     JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///String groupBy :
  ///     The column to group by.
  ///bool showSums :
  ///     Indicates whether properties should be summed up if they support it.
  ///
  Future<WorkPackages> apiV3WorkPackagesGet({ int offset, int pageSize, String filters, String sortBy, String groupBy, bool showSums }) async {
    Response response = await apiV3WorkPackagesGetWithHttpInfo( offset: offset, pageSize: pageSize, filters: filters, sortBy: sortBy, groupBy: groupBy, showSums: showSums );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkPackages') as WorkPackages;
    } else {
      return null;
    }
  }

  /// List WorkPackage activities with HTTP info returned
  ///
  ///
  Future apiV3WorkPackagesIdActivitiesGetWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{id}/activities".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List WorkPackage activities
  ///
  ///int id  (required):
  ///     WorkPackage id
  ///
  Future apiV3WorkPackagesIdActivitiesGet(int id) async {
    Response response = await apiV3WorkPackagesIdActivitiesGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Comment WorkPackage with HTTP info returned
  ///
  /// Creates an activity for the selected WorkPackage and, on success, returns the updated activity.
  Future apiV3WorkPackagesIdActivitiesPostWithHttpInfo(int id, { bool notify, InlineObject8 body }) async {
    Object postBody = body;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{id}/activities".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(notify != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "notify", notify));
    }

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Comment WorkPackage
  ///
  ///int id  (required):
  ///     WorkPackage id
  ///bool notify :
  ///     Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the WorkPackage (e.g. watchers, author and assignee), not just the current user.
  ///InlineObject8 body :
  ///
  /// Creates an activity for the selected WorkPackage and, on success, returns the updated activity.
  Future apiV3WorkPackagesIdActivitiesPost(int id, { bool notify, InlineObject8 body }) async {
    Response response = await apiV3WorkPackagesIdActivitiesPostWithHttpInfo(id,  notify: notify, body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Available projects with HTTP info returned
  ///
  /// Gets a list of projects that are available as projects to which the WorkPackage can be moved.
  Future apiV3WorkPackagesIdAvailableProjectsGetWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{id}/available_projects".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Available projects
  ///
  ///int id  (required):
  ///     WorkPackage id
  /// Gets a list of projects that are available as projects to which the WorkPackage can be moved.
  Future apiV3WorkPackagesIdAvailableProjectsGet(int id) async {
    Response response = await apiV3WorkPackagesIdAvailableProjectsGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Available relation candidates with HTTP info returned
  ///
  ///
  Future apiV3WorkPackagesIdAvailableRelationCandidatesGetWithHttpInfo(int id, { int pageSize, String filters, String query, String type }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{id}/available_relation_candidates".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
    }
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filters", filters));
    }
    if(query != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
    }
    if(type != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "type", type));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Available relation candidates
  ///
  ///int id  (required):
  ///     ID of workpackage to return
  ///int pageSize :
  ///     Maximum number of candidates to list (default 10)
  ///String filters :
  ///     JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///String query :
  ///     Shortcut for filtering by ID or subject
  ///String type :
  ///     Type of relation to find candidates for (default \"relates\")
  ///
  Future apiV3WorkPackagesIdAvailableRelationCandidatesGet(int id, { int pageSize, String filters, String query, String type }) async {
    Response response = await apiV3WorkPackagesIdAvailableRelationCandidatesGetWithHttpInfo(id,  pageSize: pageSize, filters: filters, query: query, type: type );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Available watchers with HTTP info returned
  ///
  /// Gets a list of users that are able to be watchers of the specified WorkPackage.
  Future apiV3WorkPackagesIdAvailableWatchersGetWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{id}/available_watchers".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Available watchers
  ///
  ///int id  (required):
  ///     WorkPackage id
  /// Gets a list of users that are able to be watchers of the specified WorkPackage.
  Future apiV3WorkPackagesIdAvailableWatchersGet(int id) async {
    Response response = await apiV3WorkPackagesIdAvailableWatchersGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Delete WorkPackage with HTTP info returned
  ///
  /// Deletes the WorkPackage, as well as:  * all associated TimeEntries  * its hierarchy of child WorkPackages
  Future apiV3WorkPackagesIdDeleteWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Delete WorkPackage
  ///
  ///int id  (required):
  ///     WorkPackage id
  /// Deletes the WorkPackage, as well as:  * all associated TimeEntries  * its hierarchy of child WorkPackages
  Future apiV3WorkPackagesIdDelete(int id) async {
    Response response = await apiV3WorkPackagesIdDeleteWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// WorkPackage Edit Form with HTTP info returned
  ///
  ///
  Future apiV3WorkPackagesIdFormPostWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{id}/form".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// WorkPackage Edit Form
  ///
  ///int id  (required):
  ///     ID of the WorkPackage being modified
  ///
  Future apiV3WorkPackagesIdFormPost(int id) async {
    Response response = await apiV3WorkPackagesIdFormPostWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// View WorkPackage with HTTP info returned
  ///
  ///
  Future<Response> apiV3WorkPackagesIdGetWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// View WorkPackage
  ///
  ///int id  (required):
  ///     WorkPackage id
  ///
  Future<WorkPackage> apiV3WorkPackagesIdGet(int id) async {
    Response response = await apiV3WorkPackagesIdGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkPackage') as WorkPackage;
    } else {
      return null;
    }
  }

  /// Edit WorkPackage with HTTP info returned
  ///
  /// When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.  Additionally to the fields the client wants to change, it is mandatory to provide the value of &#x60;lockVersion&#x60; which was received by the &#x60;GET&#x60; request this change originates from.  The value of &#x60;lockVersion&#x60; is used to implement [optimistic locking](http://en.wikipedia.org/wiki/Optimistic_concurrency_control).
  Future<Response> apiV3WorkPackagesIdPatchWithHttpInfo(int id, { bool notify, WorkPackage body }) async {
    Object postBody = body;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(notify != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "notify", notify));
    }

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Edit WorkPackage
  ///
  ///int id  (required):
  ///     WorkPackage id
  ///bool notify :
  ///     Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the WorkPackage (e.g. watchers, author and assignee), not just the current user.
  ///WorkPackage body :
  ///
  /// When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.  Additionally to the fields the client wants to change, it is mandatory to provide the value of &#x60;lockVersion&#x60; which was received by the &#x60;GET&#x60; request this change originates from.  The value of &#x60;lockVersion&#x60; is used to implement [optimistic locking](http://en.wikipedia.org/wiki/Optimistic_concurrency_control).
  Future<WorkPackage> apiV3WorkPackagesIdPatch(int id, { bool notify, WorkPackage body }) async {
    Response response = await apiV3WorkPackagesIdPatchWithHttpInfo(id,  notify: notify, body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkPackage') as WorkPackage;
    } else {
      return null;
    }
  }

  /// Relation create form with HTTP info returned
  ///
  ///
  Future apiV3WorkPackagesIdRelationsFormPostWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{id}/relations/form".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Relation create form
  ///
  ///int id  (required):
  ///     ID of the relation being modified
  ///
  Future apiV3WorkPackagesIdRelationsFormPost(int id) async {
    Response response = await apiV3WorkPackagesIdRelationsFormPostWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Revisions with HTTP info returned
  ///
  /// Gets a list of revisions that are linked to this WorkPackage, e.g., because it is referenced in the commit message of the revision. Only linked revisions from repositories are shown if the user has the view changesets permission in the defining project.
  Future apiV3WorkPackagesIdRevisionsGetWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{id}/revisions".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Revisions
  ///
  ///int id  (required):
  ///     WorkPackage id
  /// Gets a list of revisions that are linked to this WorkPackage, e.g., because it is referenced in the commit message of the revision. Only linked revisions from repositories are shown if the user has the view changesets permission in the defining project.
  Future apiV3WorkPackagesIdRevisionsGet(int id) async {
    Response response = await apiV3WorkPackagesIdRevisionsGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Create WorkPackage with HTTP info returned
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  A project link must be set when creating WorkPackages through this route.
  Future<Response> apiV3WorkPackagesPostWithHttpInfo(WorkPackage workPackage, { bool notify }) async {
    Object postBody = workPackage;

    // verify required params are set
    if(workPackage == null) {
     throw ApiException(400, "Missing required param: workPackage");
    }

    // create path and map variables
    String path = "/api/v3/work_packages".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(notify != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "notify", notify));
    }

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Create WorkPackage
  ///
  ///WorkPackage workPackage  (required):
  ///     WorkPackage to add (a project link ist requried)
  ///bool notify :
  ///     Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the WorkPackage (e.g. watchers, author and assignee), not just the current user.
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  A project link must be set when creating WorkPackages through this route.
  Future<WorkPackage> apiV3WorkPackagesPost(WorkPackage workPackage, { bool notify }) async {
    Response response = await apiV3WorkPackagesPostWithHttpInfo(workPackage,  notify: notify );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkPackage') as WorkPackage;
    } else {
      return null;
    }
  }

  /// List WorkPackage Schemas with HTTP info returned
  ///
  /// List WorkPackage schemas.
  Future apiV3WorkPackagesSchemasGetWithHttpInfo(String filters) async {
    Object postBody;

    // verify required params are set
    if(filters == null) {
     throw ApiException(400, "Missing required param: filters");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/schemas/".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "filters", filters));

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List WorkPackage Schemas
  ///
  ///String filters  (required):
  ///     JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + id: The schema's id
  /// List WorkPackage schemas.
  Future apiV3WorkPackagesSchemasGet(String filters) async {
    Response response = await apiV3WorkPackagesSchemasGetWithHttpInfo(filters);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// View WorkPackage Schema with HTTP info returned
  ///
  ///
  Future apiV3WorkPackagesSchemasIdentifierGetWithHttpInfo(String identifier) async {
    Object postBody;

    // verify required params are set
    if(identifier == null) {
     throw ApiException(400, "Missing required param: identifier");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/schemas/{identifier}".replaceAll("{format}","json").replaceAll("{" + "identifier" + "}", identifier.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// View WorkPackage Schema
  ///
  ///String identifier  (required):
  ///     Identifier of the schema
  ///
  Future apiV3WorkPackagesSchemasIdentifierGet(String identifier) async {
    Response response = await apiV3WorkPackagesSchemasIdentifierGetWithHttpInfo(identifier);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// List relations with HTTP info returned
  ///
  /// Lists all relations this WorkPackage is involved in.
  Future apiV3WorkPackagesWorkPackageIdRelationsGetWithHttpInfo(int workPackageId) async {
    Object postBody;

    // verify required params are set
    if(workPackageId == null) {
     throw ApiException(400, "Missing required param: workPackageId");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{work_package_id}/relations".replaceAll("{format}","json").replaceAll("{" + "work_package_id" + "}", workPackageId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List relations
  ///
  ///int workPackageId  (required):
  ///     WorkPackage id
  /// Lists all relations this WorkPackage is involved in.
  Future apiV3WorkPackagesWorkPackageIdRelationsGet(int workPackageId) async {
    Response response = await apiV3WorkPackagesWorkPackageIdRelationsGetWithHttpInfo(workPackageId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Create Relation with HTTP info returned
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Relation can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  Future apiV3WorkPackagesWorkPackageIdRelationsPostWithHttpInfo(int workPackageId) async {
    Object postBody;

    // verify required params are set
    if(workPackageId == null) {
     throw ApiException(400, "Missing required param: workPackageId");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{work_package_id}/relations".replaceAll("{format}","json").replaceAll("{" + "work_package_id" + "}", workPackageId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Create Relation
  ///
  ///int workPackageId  (required):
  ///     WorkPackage id
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Relation can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  Future apiV3WorkPackagesWorkPackageIdRelationsPost(int workPackageId) async {
    Response response = await apiV3WorkPackagesWorkPackageIdRelationsPostWithHttpInfo(workPackageId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// List watchers with HTTP info returned
  ///
  ///
  Future apiV3WorkPackagesWorkPackageIdWatchersGetWithHttpInfo(int workPackageId) async {
    Object postBody;

    // verify required params are set
    if(workPackageId == null) {
     throw ApiException(400, "Missing required param: workPackageId");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{work_package_id}/watchers".replaceAll("{format}","json").replaceAll("{" + "work_package_id" + "}", workPackageId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List watchers
  ///
  ///int workPackageId  (required):
  ///     WorkPackage id
  ///
  Future apiV3WorkPackagesWorkPackageIdWatchersGet(int workPackageId) async {
    Response response = await apiV3WorkPackagesWorkPackageIdWatchersGetWithHttpInfo(workPackageId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Remove watcher with HTTP info returned
  ///
  /// Removes the specified user from the list of watchers for the given WorkPackage.  If the request succeeds, the specified user is not watching the WorkPackage anymore.  *Note: This might also be the case, if the specified user did not watch the WorkPackage prior to the request.*
  Future apiV3WorkPackagesWorkPackageIdWatchersIdDeleteWithHttpInfo(int workPackageId, int id) async {
    Object postBody;

    // verify required params are set
    if(workPackageId == null) {
     throw ApiException(400, "Missing required param: workPackageId");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{work_package_id}/watchers/{id}".replaceAll("{format}","json").replaceAll("{" + "work_package_id" + "}", workPackageId.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Remove watcher
  ///
  ///int workPackageId  (required):
  ///     WorkPackage id
  ///int id  (required):
  ///     User id
  /// Removes the specified user from the list of watchers for the given WorkPackage.  If the request succeeds, the specified user is not watching the WorkPackage anymore.  *Note: This might also be the case, if the specified user did not watch the WorkPackage prior to the request.*
  Future apiV3WorkPackagesWorkPackageIdWatchersIdDelete(int workPackageId, int id) async {
    Response response = await apiV3WorkPackagesWorkPackageIdWatchersIdDeleteWithHttpInfo(workPackageId, id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Add watcher with HTTP info returned
  ///
  /// Adds a watcher to the specified WorkPackage.  The request is expected to contain a single JSON object, that contains a link object under the &#x60;user&#x60; key.  The response will be user added as watcher. In case the user was already watching the WorkPackage an &#x60;HTTP 200&#x60; is returned, an &#x60;HTTP 201&#x60; if the user was added as a new watcher.
  Future apiV3WorkPackagesWorkPackageIdWatchersPostWithHttpInfo(int workPackageId, { InlineObject7 body }) async {
    Object postBody = body;

    // verify required params are set
    if(workPackageId == null) {
     throw ApiException(400, "Missing required param: workPackageId");
    }

    // create path and map variables
    String path = "/api/v3/work_packages/{work_package_id}/watchers".replaceAll("{format}","json").replaceAll("{" + "work_package_id" + "}", workPackageId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Add watcher
  ///
  ///int workPackageId  (required):
  ///     WorkPackage id
  ///InlineObject7 body :
  ///
  /// Adds a watcher to the specified WorkPackage.  The request is expected to contain a single JSON object, that contains a link object under the &#x60;user&#x60; key.  The response will be user added as watcher. In case the user was already watching the WorkPackage an &#x60;HTTP 200&#x60; is returned, an &#x60;HTTP 201&#x60; if the user was added as a new watcher.
  Future apiV3WorkPackagesWorkPackageIdWatchersPost(int workPackageId, { InlineObject7 body }) async {
    Response response = await apiV3WorkPackagesWorkPackageIdWatchersPostWithHttpInfo(workPackageId,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
