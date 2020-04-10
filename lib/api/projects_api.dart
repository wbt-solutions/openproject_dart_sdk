part of openproject_dart_sdk.api;



class ProjectsApi {
  final ApiClient apiClient;

  ProjectsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// list available parent project candidates with HTTP info returned
  ///
  /// Lists projects which can become parent to another project. Only sound candidates are returned. For instance a project cannot become parent of itself or it’s children.
  Future<Response> apiV3ProjectsAvailableParentProjectsGetWithHttpInfo({ String filters, String of_, String sortBy }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/projects/available_parent_projects".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filters", filters));
    }
    if(of_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "of", of_));
    }
    if(sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortBy", sortBy));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
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
                                             contentType,
                                             authNames);
    return response;
  }

  /// list available parent project candidates
  ///
  /// Lists projects which can become parent to another project. Only sound candidates are returned. For instance a project cannot become parent of itself or it’s children.
  Future<Projects> apiV3ProjectsAvailableParentProjectsGet({ String filters, String of_, String sortBy }) async {
    Response response = await apiV3ProjectsAvailableParentProjectsGetWithHttpInfo( filters: filters, of_: of_, sortBy: sortBy );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Projects') as Projects;
    } else {
      return null;
    }
  }

  /// List projects with HTTP info returned
  ///
  /// Returns a collection of projects. The collection can be filtered via query parameters similar to how work packages are filtered. In addition to the provided filter, the result set is always limited to only contain projects the client is allowed to see.
  Future<Response> apiV3ProjectsGetWithHttpInfo({ String filters, String sortBy }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/projects".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filters", filters));
    }
    if(sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortBy", sortBy));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
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
                                             contentType,
                                             authNames);
    return response;
  }

  /// List projects
  ///
  /// Returns a collection of projects. The collection can be filtered via query parameters similar to how work packages are filtered. In addition to the provided filter, the result set is always limited to only contain projects the client is allowed to see.
  Future<Projects> apiV3ProjectsGet({ String filters, String sortBy }) async {
    Response response = await apiV3ProjectsGetWithHttpInfo( filters: filters, sortBy: sortBy );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Projects') as Projects;
    } else {
      return null;
    }
  }

  /// delete project with HTTP info returned
  ///
  /// Deletes the project permanently. As this is a lengthy process, the actual deletion is carried out asynchronously. So the project might exist well after the request has returned successfully. To prevent unwanted changes to the project scheduled for deletion, it is archived at once.
  Future apiV3ProjectsIdDeleteWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/projects/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
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
                                             contentType,
                                             authNames);
    return response;
  }

  /// delete project
  ///
  /// Deletes the project permanently. As this is a lengthy process, the actual deletion is carried out asynchronously. So the project might exist well after the request has returned successfully. To prevent unwanted changes to the project scheduled for deletion, it is archived at once.
  Future apiV3ProjectsIdDelete(int id) async {
    Response response = await apiV3ProjectsIdDeleteWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// View project with HTTP info returned
  ///
  /// 
  Future<Response> apiV3ProjectsIdGetWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/projects/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
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
                                             contentType,
                                             authNames);
    return response;
  }

  /// View project
  ///
  /// 
  Future<Project> apiV3ProjectsIdGet(int id) async {
    Response response = await apiV3ProjectsIdGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Project') as Project;
    } else {
      return null;
    }
  }

  /// update project with HTTP info returned
  ///
  /// Updates the given project by applying the attributes provided in the body.
  Future<Response> apiV3ProjectsIdPatchWithHttpInfo(int id, Project project) async {
    Object postBody = project;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }

    // create path and map variables
    String path = "/api/v3/projects/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
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
                                             contentType,
                                             authNames);
    return response;
  }

  /// update project
  ///
  /// Updates the given project by applying the attributes provided in the body.
  Future<Project> apiV3ProjectsIdPatch(int id, Project project) async {
    Response response = await apiV3ProjectsIdPatchWithHttpInfo(id, project);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Project') as Project;
    } else {
      return null;
    }
  }

  /// create project with HTTP info returned
  ///
  /// Creates a new project, applying the attributes provided in the body. You can use the form and schema to be retrieve the valid attribute values and by that be guided towards successful creation.
  Future<Response> apiV3ProjectsPostWithHttpInfo(Project project, { String filters, String sortBy }) async {
    Object postBody = project;

    // verify required params are set
    if(project == null) {
     throw ApiException(400, "Missing required param: project");
    }

    // create path and map variables
    String path = "/api/v3/projects".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filters", filters));
    }
    if(sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortBy", sortBy));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
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
                                             contentType,
                                             authNames);
    return response;
  }

  /// create project
  ///
  /// Creates a new project, applying the attributes provided in the body. You can use the form and schema to be retrieve the valid attribute values and by that be guided towards successful creation.
  Future<Project> apiV3ProjectsPost(Project project, { String filters, String sortBy }) async {
    Response response = await apiV3ProjectsPostWithHttpInfo(project,  filters: filters, sortBy: sortBy );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Project') as Project;
    } else {
      return null;
    }
  }

  /// List projects with version with HTTP info returned
  ///
  /// This endpoint lists the projects where the given version is available.  The projects returned depend on the sharing settings of the given version, but are also limited to the projects that the current user is allowed to see.
  Future apiV3VersionsIdProjectsGetWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/versions/{id}/projects".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
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
                                             contentType,
                                             authNames);
    return response;
  }

  /// List projects with version
  ///
  /// This endpoint lists the projects where the given version is available.  The projects returned depend on the sharing settings of the given version, but are also limited to the projects that the current user is allowed to see.
  Future apiV3VersionsIdProjectsGet(int id) async {
    Response response = await apiV3VersionsIdProjectsGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
