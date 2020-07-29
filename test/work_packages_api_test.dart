import 'package:openproject_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for WorkPackagesApi
void main() {
  var instance = WorkPackagesApi();

  group('tests for WorkPackagesApi', () {
    // WorkPackage Create Form
    //
    //Future apiV3ProjectsIdWorkPackagesFormPost(int id) async
    test('test apiV3ProjectsIdWorkPackagesFormPost', () async {
      // TODO
    });

    // List WorkPackages
    //
    //Future<WorkPackages> apiV3ProjectsIdWorkPackagesGet(int id, { int offset, int pageSize, String filters, String sortBy, String groupBy, bool showSums }) async
    test('test apiV3ProjectsIdWorkPackagesGet', () async {
      // TODO
    });

    // Create WorkPackage
    //
    // When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
    //
    //Future<WorkPackage> apiV3ProjectsIdWorkPackagesPost(int id, WorkPackage workPackage, { bool notify }) async
    test('test apiV3ProjectsIdWorkPackagesPost', () async {
      // TODO
    });

    // Available assignees
    //
    // Gets a list of users that can be assigned to WorkPackages in the given project.
    //
    //Future apiV3ProjectsProjectIdWorkPackagesAvailableAssigneesGet(int projectId) async
    test('test apiV3ProjectsProjectIdWorkPackagesAvailableAssigneesGet', () async {
      // TODO
    });

    // Available responsibles
    //
    // Gets a list of users that can be assigned as the responsible of a WorkPackage in the given project.
    //
    //Future apiV3ProjectsProjectIdWorkPackagesAvailableResponsiblesGet(int projectId) async
    test('test apiV3ProjectsProjectIdWorkPackagesAvailableResponsiblesGet', () async {
      // TODO
    });

    // WorkPackage Create Form
    //
    //Future apiV3WorkPackagesFormPost() async
    test('test apiV3WorkPackagesFormPost', () async {
      // TODO
    });

    // List WorkPackages
    //
    //Future<WorkPackages> apiV3WorkPackagesGet({ int offset, int pageSize, String filters, String sortBy, String groupBy, bool showSums }) async
    test('test apiV3WorkPackagesGet', () async {
      // TODO
    });

    // List WorkPackage activities
    //
    //Future apiV3WorkPackagesIdActivitiesGet(int id) async
    test('test apiV3WorkPackagesIdActivitiesGet', () async {
      // TODO
    });

    // Comment WorkPackage
    //
    // Creates an activity for the selected WorkPackage and, on success, returns the updated activity.
    //
    //Future apiV3WorkPackagesIdActivitiesPost(int id, { bool notify, InlineObject8 body }) async
    test('test apiV3WorkPackagesIdActivitiesPost', () async {
      // TODO
    });

    // Available projects
    //
    // Gets a list of projects that are available as projects to which the WorkPackage can be moved.
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
    // Gets a list of users that are able to be watchers of the specified WorkPackage.
    //
    //Future apiV3WorkPackagesIdAvailableWatchersGet(int id) async
    test('test apiV3WorkPackagesIdAvailableWatchersGet', () async {
      // TODO
    });

    // Delete WorkPackage
    //
    // Deletes the WorkPackage, as well as:  * all associated TimeEntries  * its hierarchy of child WorkPackages
    //
    //Future apiV3WorkPackagesIdDelete(int id) async
    test('test apiV3WorkPackagesIdDelete', () async {
      // TODO
    });

    // WorkPackage Edit Form
    //
    //Future apiV3WorkPackagesIdFormPost(int id) async
    test('test apiV3WorkPackagesIdFormPost', () async {
      // TODO
    });

    // View WorkPackage
    //
    //Future<WorkPackage> apiV3WorkPackagesIdGet(int id) async
    test('test apiV3WorkPackagesIdGet', () async {
      // TODO
    });

    // Edit WorkPackage
    //
    // When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.  Additionally to the fields the client wants to change, it is mandatory to provide the value of `lockVersion` which was received by the `GET` request this change originates from.  The value of `lockVersion` is used to implement [optimistic locking](http://en.wikipedia.org/wiki/Optimistic_concurrency_control).
    //
    //Future<WorkPackage> apiV3WorkPackagesIdPatch(int id, { bool notify, WorkPackage body }) async
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
    // Gets a list of revisions that are linked to this WorkPackage, e.g., because it is referenced in the commit message of the revision. Only linked revisions from repositories are shown if the user has the view changesets permission in the defining project.
    //
    //Future apiV3WorkPackagesIdRevisionsGet(int id) async
    test('test apiV3WorkPackagesIdRevisionsGet', () async {
      // TODO
    });

    // Create WorkPackage
    //
    // When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  A project link must be set when creating WorkPackages through this route.
    //
    //Future<WorkPackage> apiV3WorkPackagesPost(WorkPackage workPackage, { bool notify }) async
    test('test apiV3WorkPackagesPost', () async {
      // TODO
    });

    // List WorkPackage Schemas
    //
    // List WorkPackage schemas.
    //
    //Future apiV3WorkPackagesSchemasGet(String filters) async
    test('test apiV3WorkPackagesSchemasGet', () async {
      // TODO
    });

    // View WorkPackage Schema
    //
    //Future apiV3WorkPackagesSchemasIdentifierGet(String identifier) async
    test('test apiV3WorkPackagesSchemasIdentifierGet', () async {
      // TODO
    });

    // List relations
    //
    // Lists all relations this WorkPackage is involved in.
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
    // Removes the specified user from the list of watchers for the given WorkPackage.  If the request succeeds, the specified user is not watching the WorkPackage anymore.  *Note: This might also be the case, if the specified user did not watch the WorkPackage prior to the request.*
    //
    //Future apiV3WorkPackagesWorkPackageIdWatchersIdDelete(int workPackageId, int id) async
    test('test apiV3WorkPackagesWorkPackageIdWatchersIdDelete', () async {
      // TODO
    });

    // Add watcher
    //
    // Adds a watcher to the specified WorkPackage.  The request is expected to contain a single JSON object, that contains a link object under the `user` key.  The response will be user added as watcher. In case the user was already watching the WorkPackage an `HTTP 200` is returned, an `HTTP 201` if the user was added as a new watcher.
    //
    //Future apiV3WorkPackagesWorkPackageIdWatchersPost(int workPackageId, { InlineObject7 body }) async
    test('test apiV3WorkPackagesWorkPackageIdWatchersPost', () async {
      // TODO
    });

  });
}
