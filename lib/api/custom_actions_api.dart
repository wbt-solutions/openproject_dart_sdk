part of openapi.api;



class CustomActionsApi {
  final ApiClient apiClient;

  CustomActionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Execute custom action with HTTP info returned
  ///
  /// A POST to this end point executes the custom action on the work package provided in the payload. The altered work package will be returned. In order to avoid executing  the custom action unbeknown to a change that has already taken place, the client has to provide the work package&#39;s current lockVersion.
  Future apiV3CustomActionsCustomActionIdExecutePostWithHttpInfo(int customActionId, { InlineObject1 body }) async {
    Object postBody = body;

    // verify required params are set
    if(customActionId == null) {
     throw ApiException(400, "Missing required param: customActionId");
    }

    // create path and map variables
    String path = "/api/v3/custom_actions/{custom_action_id}/execute".replaceAll("{format}","json").replaceAll("{" + "custom_action_id" + "}", customActionId.toString());

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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Execute custom action
  ///
  /// A POST to this end point executes the custom action on the work package provided in the payload. The altered work package will be returned. In order to avoid executing  the custom action unbeknown to a change that has already taken place, the client has to provide the work package&#39;s current lockVersion.
  Future apiV3CustomActionsCustomActionIdExecutePost(int customActionId, { InlineObject1 body }) async {
    Response response = await apiV3CustomActionsCustomActionIdExecutePostWithHttpInfo(customActionId,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// View custom action with HTTP info returned
  ///
  /// 
  Future apiV3CustomActionsCustomActionIdGetWithHttpInfo(int customActionId) async {
    Object postBody;

    // verify required params are set
    if(customActionId == null) {
     throw ApiException(400, "Missing required param: customActionId");
    }

    // create path and map variables
    String path = "/api/v3/custom_actions/{custom_action_id}".replaceAll("{format}","json").replaceAll("{" + "custom_action_id" + "}", customActionId.toString());

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

  /// View custom action
  ///
  /// 
  Future apiV3CustomActionsCustomActionIdGet(int customActionId) async {
    Response response = await apiV3CustomActionsCustomActionIdGetWithHttpInfo(customActionId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
