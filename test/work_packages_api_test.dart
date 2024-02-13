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


/// tests for WorkPackagesApi
void main() {
  // final instance = WorkPackagesApi();

  group('tests for WorkPackagesApi', () {
    // Add watcher
    //
    // Adds a watcher to the specified work package.  The request is expected to contain a single JSON object, that contains a link object under the `user` key.  The response will be user added as watcher. In case the user was already watching the work package an `HTTP 200` is returned, an `HTTP 201` if the user was added as a new watcher.
    //
    //Future addWatcher(int id, { AddWatcherRequest addWatcherRequest }) async
    test('test addWatcher', () async {
      // TODO
    });

    // Available projects for work package
    //
    // Gets a list of projects that are available as projects to which the work package can be moved.
    //
    //Future<Object> availableProjectsForWorkPackage(int id) async
    test('test availableProjectsForWorkPackage', () async {
      // TODO
    });

    // Available responsibles
    //
    // Gets a list of users that can be assigned as the responsible of a work package in the given project.
    //
    //Future<Object> availableResponsibles(int id) async
    test('test availableResponsibles', () async {
      // TODO
    });

    // Available watchers
    //
    // Gets a list of users that are able to be watchers of the specified work package.
    //
    //Future<Object> availableWatchers(int id) async
    test('test availableWatchers', () async {
      // TODO
    });

    // Comment work package
    //
    // Creates an activity for the selected work package and, on success, returns the updated activity.
    //
    //Future commentWorkPackage(int id, { bool notify, CommentWorkPackageRequest commentWorkPackageRequest }) async
    test('test commentWorkPackage', () async {
      // TODO
    });

    // Create work package in project
    //
    // When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
    //
    //Future<WorkPackageModel> createProjectWorkPackage(int id, { bool notify }) async
    test('test createProjectWorkPackage', () async {
      // TODO
    });

    // Create Relation
    //
    // When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Relation can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
    //
    //Future createRelation(int id) async
    test('test createRelation', () async {
      // TODO
    });

    // Create Work Package
    //
    // When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  A project link must be set when creating work packages through this route.  When setting start date, finish date, and duration together, their correctness will be checked and a 422 error will be returned if one value does not match with the two others. You can make the server compute a value: set only two values in the request and the third one will be computed and returned in the response. For instance, when sending `{ \"startDate\": \"2022-08-23\", duration: \"P2D\" }`, the response will include `{ \"dueDate\": \"2022-08-24\" }`.
    //
    //Future<WorkPackageModel> createWorkPackage({ bool notify, WorkPackageModel workPackageModel }) async
    test('test createWorkPackage', () async {
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

    // Delete Work Package
    //
    // Deletes the work package, as well as:  - all associated time entries - its hierarchy of child work packages
    //
    //Future deleteWorkPackage(int id) async
    test('test deleteWorkPackage', () async {
      // TODO
    });

    // Get work packages of project
    //
    // Returns the collection of work packages that are related to the given project.
    //
    //Future<WorkPackagesModel> getProjectWorkPackageCollection(int id, { int offset, int pageSize, String filters, String sortBy, String groupBy, bool showSums, String select }) async
    test('test getProjectWorkPackageCollection', () async {
      // TODO
    });

    // Available relation candidates
    //
    // 
    //
    //Future<Object> listAvailableRelationCandidates(int id, { int pageSize, String filters, String query, String type, String sortBy }) async
    test('test listAvailableRelationCandidates', () async {
      // TODO
    });

    // List relations
    //
    // Lists all relations this work package is involved in.
    //
    //Future listRelations(int id) async
    test('test listRelations', () async {
      // TODO
    });

    // List watchers
    //
    // 
    //
    //Future<WatchersModel> listWatchers(int id) async
    test('test listWatchers', () async {
      // TODO
    });

    // List work package activities
    //
    // 
    //
    //Future<Object> listWorkPackageActivities(int id) async
    test('test listWorkPackageActivities', () async {
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

    // List Work Package Schemas
    //
    // List work package schemas.
    //
    //Future<Object> listWorkPackageSchemas(String filters) async
    test('test listWorkPackageSchemas', () async {
      // TODO
    });

    // List work packages
    //
    // Returns a collection of work packages.
    //
    //Future<WorkPackagesModel> listWorkPackages({ int offset, int pageSize, String filters, String sortBy, String groupBy, bool showSums, String select, String timestamps }) async
    test('test listWorkPackages', () async {
      // TODO
    });

    // Project Available assignees
    //
    // Gets a list of users that can be assigned to work packages in the given project.
    //
    //Future<Object> projectAvailableAssignees(int id) async
    test('test projectAvailableAssignees', () async {
      // TODO
    });

    // Remove watcher
    //
    // Removes the specified user from the list of watchers for the given work package.  If the request succeeds, the specified user is not watching the work package anymore.  *Note: This might also be the case, if the specified user did not watch the work package prior to the request.*
    //
    //Future removeWatcher(int id, int userId) async
    test('test removeWatcher', () async {
      // TODO
    });

    // Revisions
    //
    // Gets a list of revisions that are linked to this work package, e.g., because it is referenced in the commit message of the revision. Only linked revisions from repositories are shown if the user has the view changesets permission in the defining project.
    //
    //Future<Object> revisions(int id) async
    test('test revisions', () async {
      // TODO
    });

    // Update a Work Package
    //
    // When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.  Additionally to the fields the client wants to change, it is mandatory to provide the value of `lockVersion` which was received by the `GET` request this change originates from.  The value of `lockVersion` is used to implement [optimistic locking](https://en.wikipedia.org/wiki/Optimistic_concurrency_control).
    //
    //Future<WorkPackagePatchModel> updateWorkPackage(int id, { bool notify, WorkPackageModel workPackageModel }) async
    test('test updateWorkPackage', () async {
      // TODO
    });

    // View Work Package
    //
    // Returns the specified work package.
    //
    //Future<WorkPackageModel> viewWorkPackage(int id, { String timestamps }) async
    test('test viewWorkPackage', () async {
      // TODO
    });

    // View Work Package Schema
    //
    // 
    //
    //Future viewWorkPackageSchema(String identifier) async
    test('test viewWorkPackageSchema', () async {
      // TODO
    });

    // Work Package Available assignees
    //
    // Gets a list of users that can be assigned to the given work package.
    //
    //Future<Object> workPackageAvailableAssignees(int id) async
    test('test workPackageAvailableAssignees', () async {
      // TODO
    });

    // Work Package Create Form
    //
    // 
    //
    //Future workPackageCreateForm() async
    test('test workPackageCreateForm', () async {
      // TODO
    });

    // Work Package Create Form For Project
    //
    // 
    //
    //Future workPackageCreateFormForProject(int id) async
    test('test workPackageCreateFormForProject', () async {
      // TODO
    });

    // Work Package Edit Form
    //
    // When calling this endpoint, the client provides a single object containing the properties and links to be edited, in the body.  Note that it is only allowed to provide properties or links supporting the write operation.  When setting start date, finish date, and duration together, their correctness will be checked and a 422 error will be returned if one value does not match with the two others. You can make the server compute a value: set only two values in the request and the third one will be computed and returned in the response. For instance, when sending `{ \"startDate\": \"2022-08-23\", duration: \"P2D\" }`, the response will include `{ \"dueDate\": \"2022-08-24\" }`.
    //
    //Future workPackageEditForm(int id, { WorkPackageModel workPackageModel }) async
    test('test workPackageEditForm', () async {
      // TODO
    });

  });
}
