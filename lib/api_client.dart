//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ApiClient {
  ApiClient({this.basePath = 'https://qa.openproject-edge.com', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'ActivityModel':
          return ActivityModel.fromJson(value);
        case 'ActivityModelComment':
          return ActivityModelComment.fromJson(value);
        case 'AddWatcherRequest':
          return AddWatcherRequest.fromJson(value);
        case 'AttachmentModel':
          return AttachmentModel.fromJson(value);
        case 'AttachmentModelDescription':
          return AttachmentModelDescription.fromJson(value);
        case 'AttachmentModelLinks':
          return AttachmentModelLinks.fromJson(value);
        case 'AttachmentModelLinksAuthor':
          return AttachmentModelLinksAuthor.fromJson(value);
        case 'AttachmentModelLinksContainer':
          return AttachmentModelLinksContainer.fromJson(value);
        case 'AttachmentModelLinksDelete':
          return AttachmentModelLinksDelete.fromJson(value);
        case 'AttachmentModelLinksDownloadLocation':
          return AttachmentModelLinksDownloadLocation.fromJson(value);
        case 'AttachmentModelLinksSelf':
          return AttachmentModelLinksSelf.fromJson(value);
        case 'AttachmentsModel':
          return AttachmentsModel.fromJson(value);
        case 'AttachmentsModelAllOfEmbedded':
          return AttachmentsModelAllOfEmbedded.fromJson(value);
        case 'AttachmentsModelAllOfEmbeddedElements':
          return AttachmentsModelAllOfEmbeddedElements.fromJson(value);
        case 'AttachmentsModelAllOfLinks':
          return AttachmentsModelAllOfLinks.fromJson(value);
        case 'AttachmentsModelAllOfLinksSelf':
          return AttachmentsModelAllOfLinksSelf.fromJson(value);
        case 'BudgetModel':
          return BudgetModel.fromJson(value);
        case 'BudgetModelLinks':
          return BudgetModelLinks.fromJson(value);
        case 'BudgetModelLinksSelf':
          return BudgetModelLinksSelf.fromJson(value);
        case 'CategoryModel':
          return CategoryModel.fromJson(value);
        case 'CategoryModelLinks':
          return CategoryModelLinks.fromJson(value);
        case 'CategoryModelLinksDefaultAssignee':
          return CategoryModelLinksDefaultAssignee.fromJson(value);
        case 'CategoryModelLinksProject':
          return CategoryModelLinksProject.fromJson(value);
        case 'CategoryModelLinksSelf':
          return CategoryModelLinksSelf.fromJson(value);
        case 'CollectionModel':
          return CollectionModel.fromJson(value);
        case 'CollectionModelLinks':
          return CollectionModelLinks.fromJson(value);
        case 'CollectionModelLinksSelf':
          return CollectionModelLinksSelf.fromJson(value);
        case 'CommentWorkPackageRequest':
          return CommentWorkPackageRequest.fromJson(value);
        case 'ConfigurationModel':
          return ConfigurationModel.fromJson(value);
        case 'CreateViewsRequest':
          return CreateViewsRequest.fromJson(value);
        case 'CreateViewsRequestLinks':
          return CreateViewsRequestLinks.fromJson(value);
        case 'CreateViewsRequestLinksQuery':
          return CreateViewsRequestLinksQuery.fromJson(value);
        case 'CustomActionModel':
          return CustomActionModel.fromJson(value);
        case 'CustomActionModelLinks':
          return CustomActionModelLinks.fromJson(value);
        case 'CustomActionModelLinksExecuteImmediately':
          return CustomActionModelLinksExecuteImmediately.fromJson(value);
        case 'CustomActionModelLinksSelf':
          return CustomActionModelLinksSelf.fromJson(value);
        case 'CustomOptionModel':
          return CustomOptionModel.fromJson(value);
        case 'CustomOptionModelLinks':
          return CustomOptionModelLinks.fromJson(value);
        case 'CustomOptionModelLinksSelf':
          return CustomOptionModelLinksSelf.fromJson(value);
        case 'DayCollectionModel':
          return DayCollectionModel.fromJson(value);
        case 'DayCollectionModelAllOfEmbedded':
          return DayCollectionModelAllOfEmbedded.fromJson(value);
        case 'DayCollectionModelAllOfLinks':
          return DayCollectionModelAllOfLinks.fromJson(value);
        case 'DayCollectionModelAllOfLinksSelf':
          return DayCollectionModelAllOfLinksSelf.fromJson(value);
        case 'DayModel':
          return DayModel.fromJson(value);
        case 'DayModelLinks':
          return DayModelLinks.fromJson(value);
        case 'DayModelLinksWeekDay':
          return DayModelLinksWeekDay.fromJson(value);
        case 'DocumentModel':
          return DocumentModel.fromJson(value);
        case 'DocumentModelLinks':
          return DocumentModelLinks.fromJson(value);
        case 'DocumentModelLinksAttachments':
          return DocumentModelLinksAttachments.fromJson(value);
        case 'DocumentModelLinksProject':
          return DocumentModelLinksProject.fromJson(value);
        case 'DocumentModelLinksSelf':
          return DocumentModelLinksSelf.fromJson(value);
        case 'ErrorResponse':
          return ErrorResponse.fromJson(value);
        case 'ErrorResponseEmbedded':
          return ErrorResponseEmbedded.fromJson(value);
        case 'ErrorResponseEmbeddedDetails':
          return ErrorResponseEmbeddedDetails.fromJson(value);
        case 'ExecuteCustomActionRequest':
          return ExecuteCustomActionRequest.fromJson(value);
        case 'ExecuteCustomActionRequestLinks':
          return ExecuteCustomActionRequestLinks.fromJson(value);
        case 'ExecuteCustomActionRequestLinksWorkPackage':
          return ExecuteCustomActionRequestLinksWorkPackage.fromJson(value);
        case 'FileLinkCollectionReadModel':
          return FileLinkCollectionReadModel.fromJson(value);
        case 'FileLinkCollectionReadModelAllOfEmbedded':
          return FileLinkCollectionReadModelAllOfEmbedded.fromJson(value);
        case 'FileLinkCollectionReadModelAllOfLinks':
          return FileLinkCollectionReadModelAllOfLinks.fromJson(value);
        case 'FileLinkCollectionReadModelAllOfLinksSelf':
          return FileLinkCollectionReadModelAllOfLinksSelf.fromJson(value);
        case 'FileLinkCollectionWriteModel':
          return FileLinkCollectionWriteModel.fromJson(value);
        case 'FileLinkCollectionWriteModelAllOfEmbedded':
          return FileLinkCollectionWriteModelAllOfEmbedded.fromJson(value);
        case 'FileLinkOriginDataModel':
          return FileLinkOriginDataModel.fromJson(value);
        case 'FileLinkReadModel':
          return FileLinkReadModel.fromJson(value);
        case 'FileLinkReadModelEmbedded':
          return FileLinkReadModelEmbedded.fromJson(value);
        case 'FileLinkReadModelLinks':
          return FileLinkReadModelLinks.fromJson(value);
        case 'FileLinkReadModelLinksContainer':
          return FileLinkReadModelLinksContainer.fromJson(value);
        case 'FileLinkReadModelLinksCreator':
          return FileLinkReadModelLinksCreator.fromJson(value);
        case 'FileLinkReadModelLinksDelete':
          return FileLinkReadModelLinksDelete.fromJson(value);
        case 'FileLinkReadModelLinksOriginOpen':
          return FileLinkReadModelLinksOriginOpen.fromJson(value);
        case 'FileLinkReadModelLinksOriginOpenLocation':
          return FileLinkReadModelLinksOriginOpenLocation.fromJson(value);
        case 'FileLinkReadModelLinksSelf':
          return FileLinkReadModelLinksSelf.fromJson(value);
        case 'FileLinkReadModelLinksStaticOriginDownload':
          return FileLinkReadModelLinksStaticOriginDownload.fromJson(value);
        case 'FileLinkReadModelLinksStaticOriginOpen':
          return FileLinkReadModelLinksStaticOriginOpen.fromJson(value);
        case 'FileLinkReadModelLinksStaticOriginOpenLocation':
          return FileLinkReadModelLinksStaticOriginOpenLocation.fromJson(value);
        case 'FileLinkReadModelLinksStatus':
          return FileLinkReadModelLinksStatus.fromJson(value);
        case 'FileLinkReadModelLinksStorage':
          return FileLinkReadModelLinksStorage.fromJson(value);
        case 'FileLinkWriteModel':
          return FileLinkWriteModel.fromJson(value);
        case 'FileLinkWriteModelLinks':
          return FileLinkWriteModelLinks.fromJson(value);
        case 'FileLinkWriteModelLinksOneOf':
          return FileLinkWriteModelLinksOneOf.fromJson(value);
        case 'FileLinkWriteModelLinksOneOf1':
          return FileLinkWriteModelLinksOneOf1.fromJson(value);
        case 'FileLinkWriteModelLinksOneOf1StorageUrl':
          return FileLinkWriteModelLinksOneOf1StorageUrl.fromJson(value);
        case 'Formattable':
          return Formattable.fromJson(value);
        case 'GridCollectionModel':
          return GridCollectionModel.fromJson(value);
        case 'GridCollectionModelAllOfEmbedded':
          return GridCollectionModelAllOfEmbedded.fromJson(value);
        case 'GridReadModel':
          return GridReadModel.fromJson(value);
        case 'GridReadModelLinks':
          return GridReadModelLinks.fromJson(value);
        case 'GridReadModelLinksAddAttachment':
          return GridReadModelLinksAddAttachment.fromJson(value);
        case 'GridReadModelLinksAttachments':
          return GridReadModelLinksAttachments.fromJson(value);
        case 'GridReadModelLinksDelete':
          return GridReadModelLinksDelete.fromJson(value);
        case 'GridReadModelLinksScope':
          return GridReadModelLinksScope.fromJson(value);
        case 'GridReadModelLinksSelf':
          return GridReadModelLinksSelf.fromJson(value);
        case 'GridReadModelLinksUpdate':
          return GridReadModelLinksUpdate.fromJson(value);
        case 'GridReadModelLinksUpdateImmediately':
          return GridReadModelLinksUpdateImmediately.fromJson(value);
        case 'GridWidgetModel':
          return GridWidgetModel.fromJson(value);
        case 'GridWriteModel':
          return GridWriteModel.fromJson(value);
        case 'GridWriteModelLinks':
          return GridWriteModelLinks.fromJson(value);
        case 'GroupCollectionModel':
          return GroupCollectionModel.fromJson(value);
        case 'GroupCollectionModelAllOfEmbedded':
          return GroupCollectionModelAllOfEmbedded.fromJson(value);
        case 'GroupCollectionModelAllOfLinks':
          return GroupCollectionModelAllOfLinks.fromJson(value);
        case 'GroupCollectionModelAllOfLinksSelf':
          return GroupCollectionModelAllOfLinksSelf.fromJson(value);
        case 'GroupModel':
          return GroupModel.fromJson(value);
        case 'GroupModelLinks':
          return GroupModelLinks.fromJson(value);
        case 'GroupModelLinksDelete':
          return GroupModelLinksDelete.fromJson(value);
        case 'GroupModelLinksMembersInner':
          return GroupModelLinksMembersInner.fromJson(value);
        case 'GroupModelLinksMemberships':
          return GroupModelLinksMemberships.fromJson(value);
        case 'GroupModelLinksSelf':
          return GroupModelLinksSelf.fromJson(value);
        case 'GroupModelLinksUpdateImmediately':
          return GroupModelLinksUpdateImmediately.fromJson(value);
        case 'GroupWriteModel':
          return GroupWriteModel.fromJson(value);
        case 'GroupWriteModelLinks':
          return GroupWriteModelLinks.fromJson(value);
        case 'GroupWriteModelLinksMembersInner':
          return GroupWriteModelLinksMembersInner.fromJson(value);
        case 'HelpTextCollectionModel':
          return HelpTextCollectionModel.fromJson(value);
        case 'HelpTextCollectionModelAllOfEmbedded':
          return HelpTextCollectionModelAllOfEmbedded.fromJson(value);
        case 'HelpTextCollectionModelAllOfLinks':
          return HelpTextCollectionModelAllOfLinks.fromJson(value);
        case 'HelpTextCollectionModelAllOfLinksSelf':
          return HelpTextCollectionModelAllOfLinksSelf.fromJson(value);
        case 'HelpTextModel':
          return HelpTextModel.fromJson(value);
        case 'HelpTextModelLinks':
          return HelpTextModelLinks.fromJson(value);
        case 'HelpTextModelLinksAddAttachment':
          return HelpTextModelLinksAddAttachment.fromJson(value);
        case 'HelpTextModelLinksAttachments':
          return HelpTextModelLinksAttachments.fromJson(value);
        case 'HelpTextModelLinksEditText':
          return HelpTextModelLinksEditText.fromJson(value);
        case 'HelpTextModelLinksSelf':
          return HelpTextModelLinksSelf.fromJson(value);
        case 'Link':
          return Link.fromJson(value);
        case 'MembershipCollectionModel':
          return MembershipCollectionModel.fromJson(value);
        case 'MembershipCollectionModelAllOfEmbedded':
          return MembershipCollectionModelAllOfEmbedded.fromJson(value);
        case 'MembershipFormModel':
          return MembershipFormModel.fromJson(value);
        case 'MembershipFormModelEmbedded':
          return MembershipFormModelEmbedded.fromJson(value);
        case 'MembershipFormModelEmbeddedValidationError':
          return MembershipFormModelEmbeddedValidationError.fromJson(value);
        case 'MembershipFormModelLinks':
          return MembershipFormModelLinks.fromJson(value);
        case 'MembershipFormModelLinksCommit':
          return MembershipFormModelLinksCommit.fromJson(value);
        case 'MembershipFormModelLinksSelf':
          return MembershipFormModelLinksSelf.fromJson(value);
        case 'MembershipFormModelLinksValidateInner':
          return MembershipFormModelLinksValidateInner.fromJson(value);
        case 'MembershipReadModel':
          return MembershipReadModel.fromJson(value);
        case 'MembershipReadModelEmbedded':
          return MembershipReadModelEmbedded.fromJson(value);
        case 'MembershipReadModelEmbeddedPrincipal':
          return MembershipReadModelEmbeddedPrincipal.fromJson(value);
        case 'MembershipReadModelLinks':
          return MembershipReadModelLinks.fromJson(value);
        case 'MembershipReadModelLinksPrincipal':
          return MembershipReadModelLinksPrincipal.fromJson(value);
        case 'MembershipReadModelLinksProject':
          return MembershipReadModelLinksProject.fromJson(value);
        case 'MembershipReadModelLinksRolesInner':
          return MembershipReadModelLinksRolesInner.fromJson(value);
        case 'MembershipReadModelLinksSchema':
          return MembershipReadModelLinksSchema.fromJson(value);
        case 'MembershipReadModelLinksSelf':
          return MembershipReadModelLinksSelf.fromJson(value);
        case 'MembershipReadModelLinksUpdate':
          return MembershipReadModelLinksUpdate.fromJson(value);
        case 'MembershipReadModelLinksUpdateImmediately':
          return MembershipReadModelLinksUpdateImmediately.fromJson(value);
        case 'MembershipSchemaModel':
          return MembershipSchemaModel.fromJson(value);
        case 'MembershipWriteModel':
          return MembershipWriteModel.fromJson(value);
        case 'MembershipWriteModelLinks':
          return MembershipWriteModelLinks.fromJson(value);
        case 'MembershipWriteModelLinksPrincipal':
          return MembershipWriteModelLinksPrincipal.fromJson(value);
        case 'MembershipWriteModelLinksProject':
          return MembershipWriteModelLinksProject.fromJson(value);
        case 'MembershipWriteModelMeta':
          return MembershipWriteModelMeta.fromJson(value);
        case 'MembershipWriteModelMetaNotificationMessage':
          return MembershipWriteModelMetaNotificationMessage.fromJson(value);
        case 'NewsModel':
          return NewsModel.fromJson(value);
        case 'NewsModelLinks':
          return NewsModelLinks.fromJson(value);
        case 'NewsModelLinksAuthor':
          return NewsModelLinksAuthor.fromJson(value);
        case 'NewsModelLinksProject':
          return NewsModelLinksProject.fromJson(value);
        case 'NewsModelLinksSelf':
          return NewsModelLinksSelf.fromJson(value);
        case 'NonWorkingDayCollectionModel':
          return NonWorkingDayCollectionModel.fromJson(value);
        case 'NonWorkingDayCollectionModelAllOfEmbedded':
          return NonWorkingDayCollectionModelAllOfEmbedded.fromJson(value);
        case 'NonWorkingDayCollectionModelAllOfLinks':
          return NonWorkingDayCollectionModelAllOfLinks.fromJson(value);
        case 'NonWorkingDayCollectionModelAllOfLinksSelf':
          return NonWorkingDayCollectionModelAllOfLinksSelf.fromJson(value);
        case 'NonWorkingDayModel':
          return NonWorkingDayModel.fromJson(value);
        case 'NonWorkingDayModelLinks':
          return NonWorkingDayModelLinks.fromJson(value);
        case 'NonWorkingDayModelLinksSelf':
          return NonWorkingDayModelLinksSelf.fromJson(value);
        case 'NotificationCollectionModel':
          return NotificationCollectionModel.fromJson(value);
        case 'NotificationCollectionModelAllOfEmbedded':
          return NotificationCollectionModelAllOfEmbedded.fromJson(value);
        case 'NotificationCollectionModelAllOfLinks':
          return NotificationCollectionModelAllOfLinks.fromJson(value);
        case 'NotificationCollectionModelAllOfLinksChangeSize':
          return NotificationCollectionModelAllOfLinksChangeSize.fromJson(value);
        case 'NotificationCollectionModelAllOfLinksJumpTo':
          return NotificationCollectionModelAllOfLinksJumpTo.fromJson(value);
        case 'NotificationCollectionModelAllOfLinksSelf':
          return NotificationCollectionModelAllOfLinksSelf.fromJson(value);
        case 'NotificationModel':
          return NotificationModel.fromJson(value);
        case 'NotificationModelDetailsInner':
          return NotificationModelDetailsInner.fromJson(value);
        case 'NotificationModelEmbedded':
          return NotificationModelEmbedded.fromJson(value);
        case 'NotificationModelEmbeddedResource':
          return NotificationModelEmbeddedResource.fromJson(value);
        case 'NotificationModelLinks':
          return NotificationModelLinks.fromJson(value);
        case 'NotificationModelLinksActivity':
          return NotificationModelLinksActivity.fromJson(value);
        case 'NotificationModelLinksActor':
          return NotificationModelLinksActor.fromJson(value);
        case 'NotificationModelLinksDetailsInner':
          return NotificationModelLinksDetailsInner.fromJson(value);
        case 'NotificationModelLinksProject':
          return NotificationModelLinksProject.fromJson(value);
        case 'NotificationModelLinksReadIAN':
          return NotificationModelLinksReadIAN.fromJson(value);
        case 'NotificationModelLinksResource':
          return NotificationModelLinksResource.fromJson(value);
        case 'NotificationModelLinksSelf':
          return NotificationModelLinksSelf.fromJson(value);
        case 'NotificationModelLinksUnreadIAN':
          return NotificationModelLinksUnreadIAN.fromJson(value);
        case 'OauthApplicationReadModel':
          return OauthApplicationReadModel.fromJson(value);
        case 'OauthApplicationReadModelLinks':
          return OauthApplicationReadModelLinks.fromJson(value);
        case 'OauthApplicationReadModelLinksIntegration':
          return OauthApplicationReadModelLinksIntegration.fromJson(value);
        case 'OauthApplicationReadModelLinksOwner':
          return OauthApplicationReadModelLinksOwner.fromJson(value);
        case 'OauthApplicationReadModelLinksRedirectUri':
          return OauthApplicationReadModelLinksRedirectUri.fromJson(value);
        case 'OauthApplicationReadModelLinksSelf':
          return OauthApplicationReadModelLinksSelf.fromJson(value);
        case 'OauthClientCredentialsReadModel':
          return OauthClientCredentialsReadModel.fromJson(value);
        case 'OauthClientCredentialsReadModelLinks':
          return OauthClientCredentialsReadModelLinks.fromJson(value);
        case 'OauthClientCredentialsReadModelLinksIntegration':
          return OauthClientCredentialsReadModelLinksIntegration.fromJson(value);
        case 'OauthClientCredentialsReadModelLinksSelf':
          return OauthClientCredentialsReadModelLinksSelf.fromJson(value);
        case 'OauthClientCredentialsWriteModel':
          return OauthClientCredentialsWriteModel.fromJson(value);
        case 'PaginatedCollectionModel':
          return PaginatedCollectionModel.fromJson(value);
        case 'PaginatedCollectionModelAllOfLinks':
          return PaginatedCollectionModelAllOfLinks.fromJson(value);
        case 'PaginatedCollectionModelAllOfLinksChangeSize':
          return PaginatedCollectionModelAllOfLinksChangeSize.fromJson(value);
        case 'PaginatedCollectionModelAllOfLinksJumpTo':
          return PaginatedCollectionModelAllOfLinksJumpTo.fromJson(value);
        case 'PostModel':
          return PostModel.fromJson(value);
        case 'PostModelLinks':
          return PostModelLinks.fromJson(value);
        case 'PostModelLinksAddAttachment':
          return PostModelLinksAddAttachment.fromJson(value);
        case 'PriorityModel':
          return PriorityModel.fromJson(value);
        case 'PriorityModelLinks':
          return PriorityModelLinks.fromJson(value);
        case 'PriorityModelLinksSelf':
          return PriorityModelLinksSelf.fromJson(value);
        case 'ProjectCollectionModel':
          return ProjectCollectionModel.fromJson(value);
        case 'ProjectCollectionModelAllOfEmbedded':
          return ProjectCollectionModelAllOfEmbedded.fromJson(value);
        case 'ProjectCollectionModelAllOfLinks':
          return ProjectCollectionModelAllOfLinks.fromJson(value);
        case 'ProjectCollectionModelAllOfLinksRepresentations':
          return ProjectCollectionModelAllOfLinksRepresentations.fromJson(value);
        case 'ProjectCollectionModelAllOfLinksSelf':
          return ProjectCollectionModelAllOfLinksSelf.fromJson(value);
        case 'ProjectModel':
          return ProjectModel.fromJson(value);
        case 'ProjectModelLinks':
          return ProjectModelLinks.fromJson(value);
        case 'ProjectModelLinksAncestorsInner':
          return ProjectModelLinksAncestorsInner.fromJson(value);
        case 'ProjectModelLinksCategories':
          return ProjectModelLinksCategories.fromJson(value);
        case 'ProjectModelLinksCreateWorkPackage':
          return ProjectModelLinksCreateWorkPackage.fromJson(value);
        case 'ProjectModelLinksCreateWorkPackageImmediately':
          return ProjectModelLinksCreateWorkPackageImmediately.fromJson(value);
        case 'ProjectModelLinksDelete':
          return ProjectModelLinksDelete.fromJson(value);
        case 'ProjectModelLinksMemberships':
          return ProjectModelLinksMemberships.fromJson(value);
        case 'ProjectModelLinksParent':
          return ProjectModelLinksParent.fromJson(value);
        case 'ProjectModelLinksProjectStorages':
          return ProjectModelLinksProjectStorages.fromJson(value);
        case 'ProjectModelLinksSelf':
          return ProjectModelLinksSelf.fromJson(value);
        case 'ProjectModelLinksStatus':
          return ProjectModelLinksStatus.fromJson(value);
        case 'ProjectModelLinksStoragesInner':
          return ProjectModelLinksStoragesInner.fromJson(value);
        case 'ProjectModelLinksTypes':
          return ProjectModelLinksTypes.fromJson(value);
        case 'ProjectModelLinksUpdate':
          return ProjectModelLinksUpdate.fromJson(value);
        case 'ProjectModelLinksUpdateImmediately':
          return ProjectModelLinksUpdateImmediately.fromJson(value);
        case 'ProjectModelLinksVersions':
          return ProjectModelLinksVersions.fromJson(value);
        case 'ProjectModelLinksWorkPackages':
          return ProjectModelLinksWorkPackages.fromJson(value);
        case 'ProjectModelStatusExplanation':
          return ProjectModelStatusExplanation.fromJson(value);
        case 'ProjectStorageCollectionModel':
          return ProjectStorageCollectionModel.fromJson(value);
        case 'ProjectStorageCollectionModelAllOfEmbedded':
          return ProjectStorageCollectionModelAllOfEmbedded.fromJson(value);
        case 'ProjectStorageCollectionModelAllOfLinks':
          return ProjectStorageCollectionModelAllOfLinks.fromJson(value);
        case 'ProjectStorageCollectionModelAllOfLinksSelf':
          return ProjectStorageCollectionModelAllOfLinksSelf.fromJson(value);
        case 'ProjectStorageModel':
          return ProjectStorageModel.fromJson(value);
        case 'ProjectStorageModelLinks':
          return ProjectStorageModelLinks.fromJson(value);
        case 'ProjectStorageModelLinksCreator':
          return ProjectStorageModelLinksCreator.fromJson(value);
        case 'ProjectStorageModelLinksOpen':
          return ProjectStorageModelLinksOpen.fromJson(value);
        case 'ProjectStorageModelLinksOpenWithConnectionEnsured':
          return ProjectStorageModelLinksOpenWithConnectionEnsured.fromJson(value);
        case 'ProjectStorageModelLinksProject':
          return ProjectStorageModelLinksProject.fromJson(value);
        case 'ProjectStorageModelLinksProjectFolder':
          return ProjectStorageModelLinksProjectFolder.fromJson(value);
        case 'ProjectStorageModelLinksSelf':
          return ProjectStorageModelLinksSelf.fromJson(value);
        case 'ProjectStorageModelLinksStorage':
          return ProjectStorageModelLinksStorage.fromJson(value);
        case 'QueryColumnModel':
          return QueryColumnModel.fromJson(value);
        case 'QueryCreateForm':
          return QueryCreateForm.fromJson(value);
        case 'QueryFilterInstanceSchemaModel':
          return QueryFilterInstanceSchemaModel.fromJson(value);
        case 'QueryFilterInstanceSchemaModelLinks':
          return QueryFilterInstanceSchemaModelLinks.fromJson(value);
        case 'QueryFilterInstanceSchemaModelLinksFilter':
          return QueryFilterInstanceSchemaModelLinksFilter.fromJson(value);
        case 'QueryFilterInstanceSchemaModelLinksSelf':
          return QueryFilterInstanceSchemaModelLinksSelf.fromJson(value);
        case 'QueryFilterModel':
          return QueryFilterModel.fromJson(value);
        case 'QueryModel':
          return QueryModel.fromJson(value);
        case 'QueryModelLinks':
          return QueryModelLinks.fromJson(value);
        case 'QueryModelLinksStar':
          return QueryModelLinksStar.fromJson(value);
        case 'QueryModelLinksUnstar':
          return QueryModelLinksUnstar.fromJson(value);
        case 'QueryModelLinksUpdate':
          return QueryModelLinksUpdate.fromJson(value);
        case 'QueryModelLinksUpdateImmediately':
          return QueryModelLinksUpdateImmediately.fromJson(value);
        case 'QueryOperatorModel':
          return QueryOperatorModel.fromJson(value);
        case 'QuerySortByModel':
          return QuerySortByModel.fromJson(value);
        case 'QueryUpdateForm':
          return QueryUpdateForm.fromJson(value);
        case 'RelationModel':
          return RelationModel.fromJson(value);
        case 'RelationModelLinks':
          return RelationModelLinks.fromJson(value);
        case 'RelationModelLinksDelete':
          return RelationModelLinksDelete.fromJson(value);
        case 'RelationModelLinksFrom':
          return RelationModelLinksFrom.fromJson(value);
        case 'RelationModelLinksSchema':
          return RelationModelLinksSchema.fromJson(value);
        case 'RelationModelLinksSelf':
          return RelationModelLinksSelf.fromJson(value);
        case 'RelationModelLinksTo':
          return RelationModelLinksTo.fromJson(value);
        case 'RelationModelLinksUpdate':
          return RelationModelLinksUpdate.fromJson(value);
        case 'RelationModelLinksUpdateImmediately':
          return RelationModelLinksUpdateImmediately.fromJson(value);
        case 'RevisionModel':
          return RevisionModel.fromJson(value);
        case 'RevisionModelLinks':
          return RevisionModelLinks.fromJson(value);
        case 'RevisionModelLinksAuthor':
          return RevisionModelLinksAuthor.fromJson(value);
        case 'RevisionModelLinksProject':
          return RevisionModelLinksProject.fromJson(value);
        case 'RevisionModelLinksSelf':
          return RevisionModelLinksSelf.fromJson(value);
        case 'RevisionModelLinksShowRevision':
          return RevisionModelLinksShowRevision.fromJson(value);
        case 'RevisionModelMessage':
          return RevisionModelMessage.fromJson(value);
        case 'RoleModel':
          return RoleModel.fromJson(value);
        case 'RoleModelLinks':
          return RoleModelLinks.fromJson(value);
        case 'RoleModelLinksSelf':
          return RoleModelLinksSelf.fromJson(value);
        case 'RootModel':
          return RootModel.fromJson(value);
        case 'RootModelLinks':
          return RootModelLinks.fromJson(value);
        case 'RootModelLinksConfiguration':
          return RootModelLinksConfiguration.fromJson(value);
        case 'RootModelLinksMemberships':
          return RootModelLinksMemberships.fromJson(value);
        case 'RootModelLinksPriorities':
          return RootModelLinksPriorities.fromJson(value);
        case 'RootModelLinksRelations':
          return RootModelLinksRelations.fromJson(value);
        case 'RootModelLinksSelf':
          return RootModelLinksSelf.fromJson(value);
        case 'RootModelLinksStatuses':
          return RootModelLinksStatuses.fromJson(value);
        case 'RootModelLinksTimeEntries':
          return RootModelLinksTimeEntries.fromJson(value);
        case 'RootModelLinksTypes':
          return RootModelLinksTypes.fromJson(value);
        case 'RootModelLinksUser':
          return RootModelLinksUser.fromJson(value);
        case 'RootModelLinksUserPreferences':
          return RootModelLinksUserPreferences.fromJson(value);
        case 'RootModelLinksWorkPackages':
          return RootModelLinksWorkPackages.fromJson(value);
        case 'SchemaModel':
          return SchemaModel.fromJson(value);
        case 'SchemaModelLinks':
          return SchemaModelLinks.fromJson(value);
        case 'SchemaModelLinksSelf':
          return SchemaModelLinksSelf.fromJson(value);
        case 'SchemaPropertyModel':
          return SchemaPropertyModel.fromJson(value);
        case 'ShowOrValidateFormRequest':
          return ShowOrValidateFormRequest.fromJson(value);
        case 'StatusCollectionModel':
          return StatusCollectionModel.fromJson(value);
        case 'StatusCollectionModelAllOfEmbedded':
          return StatusCollectionModelAllOfEmbedded.fromJson(value);
        case 'StatusCollectionModelAllOfLinks':
          return StatusCollectionModelAllOfLinks.fromJson(value);
        case 'StatusCollectionModelAllOfLinksSelf':
          return StatusCollectionModelAllOfLinksSelf.fromJson(value);
        case 'StatusModel':
          return StatusModel.fromJson(value);
        case 'StatusModelLinks':
          return StatusModelLinks.fromJson(value);
        case 'StatusModelLinksSelf':
          return StatusModelLinksSelf.fromJson(value);
        case 'StorageCollectionModel':
          return StorageCollectionModel.fromJson(value);
        case 'StorageCollectionModelAllOfEmbedded':
          return StorageCollectionModelAllOfEmbedded.fromJson(value);
        case 'StorageCollectionModelAllOfLinks':
          return StorageCollectionModelAllOfLinks.fromJson(value);
        case 'StorageCollectionModelAllOfLinksSelf':
          return StorageCollectionModelAllOfLinksSelf.fromJson(value);
        case 'StorageFileModel':
          return StorageFileModel.fromJson(value);
        case 'StorageFileModelAllOfLinks':
          return StorageFileModelAllOfLinks.fromJson(value);
        case 'StorageFileModelAllOfLinksSelf':
          return StorageFileModelAllOfLinksSelf.fromJson(value);
        case 'StorageFileUploadLinkModel':
          return StorageFileUploadLinkModel.fromJson(value);
        case 'StorageFileUploadLinkModelLinks':
          return StorageFileUploadLinkModelLinks.fromJson(value);
        case 'StorageFileUploadLinkModelLinksDestination':
          return StorageFileUploadLinkModelLinksDestination.fromJson(value);
        case 'StorageFileUploadLinkModelLinksSelf':
          return StorageFileUploadLinkModelLinksSelf.fromJson(value);
        case 'StorageFileUploadPreparationModel':
          return StorageFileUploadPreparationModel.fromJson(value);
        case 'StorageFilesModel':
          return StorageFilesModel.fromJson(value);
        case 'StorageFilesModelParent':
          return StorageFilesModelParent.fromJson(value);
        case 'StorageReadModel':
          return StorageReadModel.fromJson(value);
        case 'StorageReadModelEmbedded':
          return StorageReadModelEmbedded.fromJson(value);
        case 'StorageReadModelLinks':
          return StorageReadModelLinks.fromJson(value);
        case 'StorageReadModelLinksAuthorizationState':
          return StorageReadModelLinksAuthorizationState.fromJson(value);
        case 'StorageReadModelLinksAuthorize':
          return StorageReadModelLinksAuthorize.fromJson(value);
        case 'StorageReadModelLinksOauthApplication':
          return StorageReadModelLinksOauthApplication.fromJson(value);
        case 'StorageReadModelLinksOauthClientCredentials':
          return StorageReadModelLinksOauthClientCredentials.fromJson(value);
        case 'StorageReadModelLinksOpen':
          return StorageReadModelLinksOpen.fromJson(value);
        case 'StorageReadModelLinksOrigin':
          return StorageReadModelLinksOrigin.fromJson(value);
        case 'StorageReadModelLinksSelf':
          return StorageReadModelLinksSelf.fromJson(value);
        case 'StorageReadModelLinksType':
          return StorageReadModelLinksType.fromJson(value);
        case 'StorageWriteModel':
          return StorageWriteModel.fromJson(value);
        case 'StorageWriteModelLinks':
          return StorageWriteModelLinks.fromJson(value);
        case 'StorageWriteModelLinksOrigin':
          return StorageWriteModelLinksOrigin.fromJson(value);
        case 'StorageWriteModelLinksType':
          return StorageWriteModelLinksType.fromJson(value);
        case 'TimeEntryActivityModel':
          return TimeEntryActivityModel.fromJson(value);
        case 'TimeEntryActivityModelEmbedded':
          return TimeEntryActivityModelEmbedded.fromJson(value);
        case 'TimeEntryActivityModelLinks':
          return TimeEntryActivityModelLinks.fromJson(value);
        case 'TimeEntryActivityModelLinksProjectsInner':
          return TimeEntryActivityModelLinksProjectsInner.fromJson(value);
        case 'TimeEntryActivityModelLinksSelf':
          return TimeEntryActivityModelLinksSelf.fromJson(value);
        case 'TimeEntryCollectionModel':
          return TimeEntryCollectionModel.fromJson(value);
        case 'TimeEntryCollectionModelAllOfEmbedded':
          return TimeEntryCollectionModelAllOfEmbedded.fromJson(value);
        case 'TimeEntryCollectionModelAllOfLinks':
          return TimeEntryCollectionModelAllOfLinks.fromJson(value);
        case 'TimeEntryCollectionModelAllOfLinksSelf':
          return TimeEntryCollectionModelAllOfLinksSelf.fromJson(value);
        case 'TimeEntryModel':
          return TimeEntryModel.fromJson(value);
        case 'TimeEntryModelComment':
          return TimeEntryModelComment.fromJson(value);
        case 'TimeEntryModelLinks':
          return TimeEntryModelLinks.fromJson(value);
        case 'TimeEntryModelLinksActivity':
          return TimeEntryModelLinksActivity.fromJson(value);
        case 'TimeEntryModelLinksDelete':
          return TimeEntryModelLinksDelete.fromJson(value);
        case 'TimeEntryModelLinksProject':
          return TimeEntryModelLinksProject.fromJson(value);
        case 'TimeEntryModelLinksSchema':
          return TimeEntryModelLinksSchema.fromJson(value);
        case 'TimeEntryModelLinksSelf':
          return TimeEntryModelLinksSelf.fromJson(value);
        case 'TimeEntryModelLinksUpdate':
          return TimeEntryModelLinksUpdate.fromJson(value);
        case 'TimeEntryModelLinksUpdateImmediately':
          return TimeEntryModelLinksUpdateImmediately.fromJson(value);
        case 'TimeEntryModelLinksUser':
          return TimeEntryModelLinksUser.fromJson(value);
        case 'TimeEntryModelLinksWorkPackage':
          return TimeEntryModelLinksWorkPackage.fromJson(value);
        case 'TypeModel':
          return TypeModel.fromJson(value);
        case 'TypeModelLinks':
          return TypeModelLinks.fromJson(value);
        case 'TypeModelLinksSelf':
          return TypeModelLinksSelf.fromJson(value);
        case 'UpdateActivityRequest':
          return UpdateActivityRequest.fromJson(value);
        case 'UpdateActivityRequestComment':
          return UpdateActivityRequestComment.fromJson(value);
        case 'UpdateUserPreferencesRequest':
          return UpdateUserPreferencesRequest.fromJson(value);
        case 'UserCollectionModel':
          return UserCollectionModel.fromJson(value);
        case 'UserCollectionModelAllOfEmbedded':
          return UserCollectionModelAllOfEmbedded.fromJson(value);
        case 'UserCollectionModelAllOfLinks':
          return UserCollectionModelAllOfLinks.fromJson(value);
        case 'UserCollectionModelAllOfLinksSelf':
          return UserCollectionModelAllOfLinksSelf.fromJson(value);
        case 'UserCreateModel':
          return UserCreateModel.fromJson(value);
        case 'UserModel':
          return UserModel.fromJson(value);
        case 'UserModelLinks':
          return UserModelLinks.fromJson(value);
        case 'UserModelLinksDelete':
          return UserModelLinksDelete.fromJson(value);
        case 'UserModelLinksLock':
          return UserModelLinksLock.fromJson(value);
        case 'UserModelLinksMemberships':
          return UserModelLinksMemberships.fromJson(value);
        case 'UserModelLinksSelf':
          return UserModelLinksSelf.fromJson(value);
        case 'UserModelLinksShowUser':
          return UserModelLinksShowUser.fromJson(value);
        case 'UserModelLinksUnlock':
          return UserModelLinksUnlock.fromJson(value);
        case 'UserModelLinksUpdateImmediately':
          return UserModelLinksUpdateImmediately.fromJson(value);
        case 'ValuesPropertyModel':
          return ValuesPropertyModel.fromJson(value);
        case 'ValuesPropertyModelLinks':
          return ValuesPropertyModelLinks.fromJson(value);
        case 'ValuesPropertyModelLinksSchema':
          return ValuesPropertyModelLinksSchema.fromJson(value);
        case 'ValuesPropertyModelLinksSelf':
          return ValuesPropertyModelLinksSelf.fromJson(value);
        case 'VersionModel':
          return VersionModel.fromJson(value);
        case 'VersionModelLinks':
          return VersionModelLinks.fromJson(value);
        case 'VersionModelLinksAvailableInProjects':
          return VersionModelLinksAvailableInProjects.fromJson(value);
        case 'VersionModelLinksDefiningProject':
          return VersionModelLinksDefiningProject.fromJson(value);
        case 'VersionModelLinksSelf':
          return VersionModelLinksSelf.fromJson(value);
        case 'VersionModelLinksUpdate':
          return VersionModelLinksUpdate.fromJson(value);
        case 'VersionModelLinksUpdateImmediately':
          return VersionModelLinksUpdateImmediately.fromJson(value);
        case 'WatchersModel':
          return WatchersModel.fromJson(value);
        case 'WatchersModelAllOfEmbedded':
          return WatchersModelAllOfEmbedded.fromJson(value);
        case 'WatchersModelAllOfEmbeddedElements':
          return WatchersModelAllOfEmbeddedElements.fromJson(value);
        case 'WatchersModelAllOfLinks':
          return WatchersModelAllOfLinks.fromJson(value);
        case 'WatchersModelAllOfLinksSelf':
          return WatchersModelAllOfLinksSelf.fromJson(value);
        case 'WeekDayCollectionModel':
          return WeekDayCollectionModel.fromJson(value);
        case 'WeekDayCollectionModelAllOfEmbedded':
          return WeekDayCollectionModelAllOfEmbedded.fromJson(value);
        case 'WeekDayCollectionModelAllOfLinks':
          return WeekDayCollectionModelAllOfLinks.fromJson(value);
        case 'WeekDayCollectionModelAllOfLinksSelf':
          return WeekDayCollectionModelAllOfLinksSelf.fromJson(value);
        case 'WeekDayCollectionWriteModel':
          return WeekDayCollectionWriteModel.fromJson(value);
        case 'WeekDayCollectionWriteModelEmbedded':
          return WeekDayCollectionWriteModelEmbedded.fromJson(value);
        case 'WeekDayCollectionWriteModelEmbeddedElementsInner':
          return WeekDayCollectionWriteModelEmbeddedElementsInner.fromJson(value);
        case 'WeekDayModel':
          return WeekDayModel.fromJson(value);
        case 'WeekDaySelfLinkModel':
          return WeekDaySelfLinkModel.fromJson(value);
        case 'WeekDaySelfLinkModelSelf':
          return WeekDaySelfLinkModelSelf.fromJson(value);
        case 'WeekDayWriteModel':
          return WeekDayWriteModel.fromJson(value);
        case 'WikiPageModel':
          return WikiPageModel.fromJson(value);
        case 'WikiPageModelLinks':
          return WikiPageModelLinks.fromJson(value);
        case 'WikiPageModelLinksAddAttachment':
          return WikiPageModelLinksAddAttachment.fromJson(value);
        case 'WorkPackageModel':
          return WorkPackageModel.fromJson(value);
        case 'WorkPackageModelDescription':
          return WorkPackageModelDescription.fromJson(value);
        case 'WorkPackageModelLinks':
          return WorkPackageModelLinks.fromJson(value);
        case 'WorkPackageModelLinksAddAttachment':
          return WorkPackageModelLinksAddAttachment.fromJson(value);
        case 'WorkPackageModelLinksAddComment':
          return WorkPackageModelLinksAddComment.fromJson(value);
        case 'WorkPackageModelLinksAddFileLink':
          return WorkPackageModelLinksAddFileLink.fromJson(value);
        case 'WorkPackageModelLinksAddRelation':
          return WorkPackageModelLinksAddRelation.fromJson(value);
        case 'WorkPackageModelLinksAddWatcher':
          return WorkPackageModelLinksAddWatcher.fromJson(value);
        case 'WorkPackageModelLinksAncestorsInner':
          return WorkPackageModelLinksAncestorsInner.fromJson(value);
        case 'WorkPackageModelLinksAssignee':
          return WorkPackageModelLinksAssignee.fromJson(value);
        case 'WorkPackageModelLinksAttachments':
          return WorkPackageModelLinksAttachments.fromJson(value);
        case 'WorkPackageModelLinksAuthor':
          return WorkPackageModelLinksAuthor.fromJson(value);
        case 'WorkPackageModelLinksAvailableWatchers':
          return WorkPackageModelLinksAvailableWatchers.fromJson(value);
        case 'WorkPackageModelLinksBudget':
          return WorkPackageModelLinksBudget.fromJson(value);
        case 'WorkPackageModelLinksCategory':
          return WorkPackageModelLinksCategory.fromJson(value);
        case 'WorkPackageModelLinksChildrenInner':
          return WorkPackageModelLinksChildrenInner.fromJson(value);
        case 'WorkPackageModelLinksCustomActionsInner':
          return WorkPackageModelLinksCustomActionsInner.fromJson(value);
        case 'WorkPackageModelLinksFileLinks':
          return WorkPackageModelLinksFileLinks.fromJson(value);
        case 'WorkPackageModelLinksParent':
          return WorkPackageModelLinksParent.fromJson(value);
        case 'WorkPackageModelLinksPreviewMarkup':
          return WorkPackageModelLinksPreviewMarkup.fromJson(value);
        case 'WorkPackageModelLinksPriority':
          return WorkPackageModelLinksPriority.fromJson(value);
        case 'WorkPackageModelLinksProject':
          return WorkPackageModelLinksProject.fromJson(value);
        case 'WorkPackageModelLinksRelations':
          return WorkPackageModelLinksRelations.fromJson(value);
        case 'WorkPackageModelLinksRemoveWatcher':
          return WorkPackageModelLinksRemoveWatcher.fromJson(value);
        case 'WorkPackageModelLinksResponsible':
          return WorkPackageModelLinksResponsible.fromJson(value);
        case 'WorkPackageModelLinksRevisions':
          return WorkPackageModelLinksRevisions.fromJson(value);
        case 'WorkPackageModelLinksSchema':
          return WorkPackageModelLinksSchema.fromJson(value);
        case 'WorkPackageModelLinksSelf':
          return WorkPackageModelLinksSelf.fromJson(value);
        case 'WorkPackageModelLinksStatus':
          return WorkPackageModelLinksStatus.fromJson(value);
        case 'WorkPackageModelLinksTimeEntries':
          return WorkPackageModelLinksTimeEntries.fromJson(value);
        case 'WorkPackageModelLinksType':
          return WorkPackageModelLinksType.fromJson(value);
        case 'WorkPackageModelLinksUnwatch':
          return WorkPackageModelLinksUnwatch.fromJson(value);
        case 'WorkPackageModelLinksUpdate':
          return WorkPackageModelLinksUpdate.fromJson(value);
        case 'WorkPackageModelLinksUpdateImmediately':
          return WorkPackageModelLinksUpdateImmediately.fromJson(value);
        case 'WorkPackageModelLinksVersion':
          return WorkPackageModelLinksVersion.fromJson(value);
        case 'WorkPackageModelLinksWatch':
          return WorkPackageModelLinksWatch.fromJson(value);
        case 'WorkPackageModelLinksWatchers':
          return WorkPackageModelLinksWatchers.fromJson(value);
        case 'WorkPackagePatchModel':
          return WorkPackagePatchModel.fromJson(value);
        case 'WorkPackagePatchModelLinks':
          return WorkPackagePatchModelLinks.fromJson(value);
        case 'WorkPackagesModel':
          return WorkPackagesModel.fromJson(value);
        case 'WorkPackagesModelAllOfEmbedded':
          return WorkPackagesModelAllOfEmbedded.fromJson(value);
        case 'WorkPackagesModelAllOfLinks':
          return WorkPackagesModelAllOfLinks.fromJson(value);
        case 'WorkPackagesModelAllOfLinksSelf':
          return WorkPackagesModelAllOfLinksSelf.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
