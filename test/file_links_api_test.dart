//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for FileLinksApi
void main() {
  // final instance = FileLinksApi();

  group('tests for FileLinksApi', () {
    // Creates a storage.
    //
    // Creates a storage resource. When creating a storage, a confidential OAuth 2 provider application is created automatically. The oauth client id and secret of the created OAuth application are returned in the response.  **IMPORTANT:** This is the only time, the oauth client secret is visible to the consumer. After that, the secret is hidden.  To update the storage with OAuth client credentials, which enable the storage resource to behave as an OAuth 2 client against an external OAuth 2 provider application, another request must be made to create those, see `POST /api/v3/storages/{id}/oauth_client_credentials`.
    //
    //Future<StorageReadModel> createStorage({ StorageWriteModel storageWriteModel }) async
    test('test createStorage', () async {
      // TODO
    });

    // Creates an oauth client credentials object for a storage.
    //
    // Inserts the OAuth 2 credentials into the storage, to allow the storage to act as an OAuth 2 client. Calling this endpoint on a storage that already contains OAuth 2 client credentials will replace them.
    //
    //Future<StorageReadModel> createStorageOauthCredentials(int id, { OauthClientCredentialsWriteModel oauthClientCredentialsWriteModel }) async
    test('test createStorageOauthCredentials', () async {
      // TODO
    });

    // Creates file links.
    //
    // Creates file links on a work package.  The request is interpreted as a bulk insert, where every element of the collection is validated separately. Each element contains the origin meta data and a link to the storage, the file link is about to point to. The storage link can be provided as a resource link with id or as the host url.  The file's id and name are considered mandatory information. The rest of the origin meta data SHOULD be provided by the client. The _mimeType_ SHOULD be a standard mime type. An empty mime type will be handled as unknown. To link a folder, the custom mime type `application/x-op-directory` MUST be used.  Up to 20 file links can be submitted at once.  If any element data is invalid, no file links will be created.  If a file link with matching origin id, work package, and storage already exists, then it will not create an additional file link or update the meta data. Instead the information from the existing file link will be returned.
    //
    //Future<FileLinkCollectionReadModel> createWorkPackageFileLink(int id, { FileLinkCollectionWriteModel fileLinkCollectionWriteModel }) async
    test('test createWorkPackageFileLink', () async {
      // TODO
    });

    // Removes a file link.
    //
    // Removes a file link on a work package.  The request contains only the file link identifier as a path parameter. No request body is needed.
    //
    //Future deleteFileLink(int id) async
    test('test deleteFileLink', () async {
      // TODO
    });

    // Delete a storage
    //
    // Deletes a storage resource. This also deletes all related records, like the created oauth application, client, and any file links created within this storage.
    //
    //Future deleteStorage(int id) async
    test('test deleteStorage', () async {
      // TODO
    });

    // Creates a download uri of the linked file.
    //
    // Creates a uri to download the origin file linked by the given file link. This uri depends on the storage type and is always located on the origin storage itself.
    //
    //Future downloadFileLink(int id) async
    test('test downloadFileLink', () async {
      // TODO
    });

    // Gets a project storage
    //
    // Gets a project storage resource. This resource contains all data that is applicable on the relation between a storage and a project.
    //
    //Future<ProjectStorageModel> getProjectStorage(int id) async
    test('test getProjectStorage', () async {
      // TODO
    });

    // Get a storage
    //
    // Gets a storage resource. As a side effect, a live connection to the storages origin is established to retrieve connection state data.
    //
    //Future<StorageReadModel> getStorage(int id) async
    test('test getStorage', () async {
      // TODO
    });

    // Gets files of a storage.
    //
    // Gets a collection of files from a storage.  If no `parent` context is given, the result is the content of the document root. With `parent` context given, the result contains the collections of files/directories from within the given parent file id.  If given `parent` context is no directory, `400 Bad Request` is returned.
    //
    //Future<StorageFilesModel> getStorageFiles(int id, { String parent }) async
    test('test getStorageFiles', () async {
      // TODO
    });

    // Gets a list of project storages
    //
    // Gets a collection of all project storages that meet the provided filters and the user has permission to see them.
    //
    //Future<ProjectStorageCollectionModel> listProjectStorages({ String filters }) async
    test('test listProjectStorages', () async {
      // TODO
    });

    // Get Storages
    //
    // Returns a collection of storages.
    //
    //Future<StorageCollectionModel> listStorages() async
    test('test listStorages', () async {
      // TODO
    });

    // Gets all file links of a work package
    //
    // Gets all file links of a work package.  As a side effect, for every file link a request is sent to the storage's origin to fetch live data and patch the file link's data before returning, as well as retrieving permissions of the user on this origin file. 
    //
    //Future<FileLinkCollectionReadModel> listWorkPackageFileLinks(int id, { String filters }) async
    test('test listWorkPackageFileLinks', () async {
      // TODO
    });

    // Creates an opening uri of the linked file.
    //
    // Creates a uri to open the origin file linked by the given file link. This uri depends on the storage type and is always located on the origin storage itself.
    //
    //Future openFileLink(int id, { bool location }) async
    test('test openFileLink', () async {
      // TODO
    });

    // Open the project storage
    //
    // Gets a redirect to the location of the project storage's remote origin. If the project storage has a project folder, it is opened at this location. If not, the storage root is opened.
    //
    //Future openProjectStorage(int id) async
    test('test openProjectStorage', () async {
      // TODO
    });

    // Open the storage
    //
    // Gets a redirect to the location of the storage's remote origin. The storage's files root should be the target location.
    //
    //Future openStorage(int id) async
    test('test openStorage', () async {
      // TODO
    });

    // Preparation of a direct upload of a file to the given storage.
    //
    // Executes a request that prepares a link for a direct upload to the storage.  The background here is, that the client needs to make a direct request to the storage instance for file uploading, but should not get access to the credentials, which are stored in the backend. The response contains a link object, that enables the client to execute a file upload without the real credentials.
    //
    //Future<StorageFileUploadLinkModel> prepareStorageFileUpload(int id, { StorageFileUploadPreparationModel storageFileUploadPreparationModel }) async
    test('test prepareStorageFileUpload', () async {
      // TODO
    });

    // Update a storage
    //
    // Updates a storage resource. Only data that is not generated by the server can be updated. This excludes the OAuth 2 application data.
    //
    //Future<StorageReadModel> updateStorage(int id, { StorageWriteModel storageWriteModel }) async
    test('test updateStorage', () async {
      // TODO
    });

    // Gets a file link.
    //
    // Gets a single file link resource of a work package.
    //
    //Future<FileLinkReadModel> viewFileLink(int id) async
    test('test viewFileLink', () async {
      // TODO
    });

  });
}
