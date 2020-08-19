import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for WorkPackagesApi
void main() {
  var instance = WorkPackagesApi();

  group('tests for WorkPackagesApi', () {
    // Work Package Create Form
    //
    //Future apiV3ProjectsIdWorkPackagesFormPost(int id) async
    test('test apiV3ProjectsIdWorkPackagesFormPost', () async {
      // TODO
    });

    // List Work Packages
    //
    //Future<WorkPackages> apiV3ProjectsIdWorkPackagesGet(int id, { int offset, int pageSize, String filters, String sortBy, String groupBy, bool showSums }) async
    test('test apiV3ProjectsIdWorkPackagesGet', () async {
      // TODO
    });

    // Create Work Package
    //
    // When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
    //
    //Future<WorkPackage> apiV3ProjectsIdWorkPackagesPost(int id, WorkPackage workPackage, { bool notify }) async
    test('test apiV3ProjectsIdWorkPackagesPost', () async {
      // TODO
    });

    // Available assignees
    //
    // Gets a list of users that can be assigned to work packages in the given project.
    //
    //Future<Users> apiV3ProjectsProjectIdWorkPackagesAvailableAssigneesGet(int projectId) async
    test('test apiV3ProjectsProjectIdWorkPackagesAvailableAssigneesGet', () async {
      // TODO
    });

    // Available responsibles
    //
    // Gets a list of users that can be assigned as the responsible of a work package in the given project.
    //
    //Future<Users> apiV3ProjectsProjectIdWorkPackagesAvailableResponsiblesGet(int projectId) async
    test('test apiV3ProjectsProjectIdWorkPackagesAvailableResponsiblesGet', () async {
      // TODO
    });

    // Work Package Create Form
    //
    //Future apiV3WorkPackagesFormPost() async
    test('test apiV3WorkPackagesFormPost', () async {
      // TODO
    });

    // List Work Packages
    //
    //Future<WorkPackages> apiV3WorkPackagesGet({ int offset, int pageSize, String filters, String sortBy, String groupBy, bool showSums }) async
    test('test apiV3WorkPackagesGet', () async {
      // TODO
    });

    // List work package activities
    //
    //Future apiV3WorkPackagesIdActivitiesGet(int id) async
    test('test apiV3WorkPackagesIdActivitiesGet', () async {
      // TODO
    });

    // Comment work package
    //
    // Creates an activity for the selected work package and, on success, returns the updated activity.
    //
    //Future apiV3WorkPackagesIdActivitiesPost(int id, { bool notify, dynamic UNKNOWN_BASE_TYPE }) async
    test('test apiV3WorkPackagesIdActivitiesPost', () async {
      // TODO
    });

    // Available projects
    //
    // Gets a list of projects that are available as projects to which the work package can be moved.
    //
    //Future apiV3WorkPackagesIdAvailableProjectsGet(int id) async
    test('test apiV3WorkPackagesIdAvailableProjectsGet', () async {
      // TODO
    });

    // Available relation candidates
    //
    //Future apiV3WorkPackagesIdAvailableRelationCandidatesGet(int id, { int pageSize, String filters, String query, String type }) async
    test('test apiV3WorkPackagesIdAvailableRelationCandidatesGet', () async {
      // TODO
    });

    // Available watchers
    //
    // Gets a list of users that are able to be watchers of the specified work package.
    //
    //Future apiV3WorkPackagesIdAvailableWatchersGet(int id) async
    test('test apiV3WorkPackagesIdAvailableWatchersGet', () async {
      // TODO
    });

    // Delete Work Package
    //
    // Deletes the work package, as well as:  * all associated time entries  * its hierarchy of child work packages
    //
    //Future apiV3WorkPackagesIdDelete(int id) async
    test('test apiV3WorkPackagesIdDelete', () async {
      // TODO
    });

    // Work Package Edit Form
    //
    //Future apiV3WorkPackagesIdFormPost(int id) async
    test('test apiV3WorkPackagesIdFormPost', () async {
      // TODO
    });

    // View Work Package
    //
    //Future<WorkPackage> apiV3WorkPackagesIdGet(int id) async
    test('test apiV3WorkPackagesIdGet', () async {
      // TODO
    });

    // Edit Work Package
    //
    // When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.  Additionally to the fields the client wants to change, it is mandatory to provide the value of `lockVersion` which was received by the `GET` request this change originates from.  The value of `lockVersion` is used to implement [optimistic locking](http://en.wikipedia.org/wiki/Optimistic_concurrency_control).
    //
    //Future<WorkPackage> apiV3WorkPackagesIdPatch(int id, { bool notify, WorkPackage workPackage }) async
    test('test apiV3WorkPackagesIdPatch', () async {
      // TODO
    });

    // Relation create form
    //
    //Future apiV3WorkPackagesIdRelationsFormPost(int id) async
    test('test apiV3WorkPackagesIdRelationsFormPost', () async {
      // TODO
    });

    // Revisions
    //
    // Gets a list of revisions that are linked to this work package, e.g., because it is referenced in the commit message of the revision. Only linked revisions from repositories are shown if the user has the view changesets permission in the defining project.
    //
    //Future apiV3WorkPackagesIdRevisionsGet(int id) async
    test('test apiV3WorkPackagesIdRevisionsGet', () async {
      // TODO
    });

    // Create Work Package
    //
    // When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  A project link must be set when creating work packages through this route.
    //
    //Future<WorkPackage> apiV3WorkPackagesPost(WorkPackage workPackage, { bool notify }) async
    test('test apiV3WorkPackagesPost', () async {
      // TODO
    });

    // List Work Package Schemas
    //
    // List work package schemas.
    //
    //Future apiV3WorkPackagesSchemasGet(String filters) async
    test('test apiV3WorkPackagesSchemasGet', () async {
      // TODO
    });

    // View Work Package Schema
    //
    //Future apiV3WorkPackagesSchemasIdentifierGet(String identifier) async
    test('test apiV3WorkPackagesSchemasIdentifierGet', () async {
      // TODO
    });

    // List relations
    //
    // Lists all relations this work package is involved in.
    //
    //Future apiV3WorkPackagesWorkPackageIdRelationsGet(int workPackageId) async
    test('test apiV3WorkPackagesWorkPackageIdRelationsGet', () async {
      // TODO
    });

    // Create Relation
    //
    // When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Relation can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
    //
    //Future apiV3WorkPackagesWorkPackageIdRelationsPost(int workPackageId) async
    test('test apiV3WorkPackagesWorkPackageIdRelationsPost', () async {
      // TODO
    });

    // List watchers
    //
    //Future apiV3WorkPackagesWorkPackageIdWatchersGet(int workPackageId) async
    test('test apiV3WorkPackagesWorkPackageIdWatchersGet', () async {
      // TODO
    });

    // Remove watcher
    //
    // Removes the specified user from the list of watchers for the given work package.  If the request succeeds, the specified user is not watching the work package anymore.  *Note: This might also be the case, if the specified user did not watch the work package prior to the request.*
    //
    //Future apiV3WorkPackagesWorkPackageIdWatchersIdDelete(int workPackageId, int id) async
    test('test apiV3WorkPackagesWorkPackageIdWatchersIdDelete', () async {
      // TODO
    });

    // Add watcher
    //
    // Adds a watcher to the specified work package.  The request is expected to contain a single JSON object, that contains a link object under the `user` key.  The response will be user added as watcher. In case the user was already watching the work package an `HTTP 200` is returned, an `HTTP 201` if the user was added as a new watcher.
    //
    //Future apiV3WorkPackagesWorkPackageIdWatchersPost(int workPackageId, { InlineObject6 inlineObject6 }) async
    test('test apiV3WorkPackagesWorkPackageIdWatchersPost', () async {
      // TODO
    });

  });
}
