# openproject_dart_sdk
No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0-oas3
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 2.0 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  openproject_dart_sdk:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  openproject_dart_sdk:
    path: /path/to/openproject_dart_sdk
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openproject_dart_sdk/api.dart';

// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ActivitiesApi();
final id = 56; // int | Activity id

try {
    final result = api_instance.apiV3ActivitiesIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling ActivitiesApi->apiV3ActivitiesIdGet: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ActivitiesApi* | [**apiV3ActivitiesIdGet**](doc\/ActivitiesApi.md#apiv3activitiesidget) | **GET** /api/v3/activities/{id} | View activity
*ActivitiesApi* | [**apiV3ActivitiesIdPatch**](doc\/ActivitiesApi.md#apiv3activitiesidpatch) | **PATCH** /api/v3/activities/{id} | Update activity
*AttachmentsApi* | [**apiV3AttachmentsIdDelete**](doc\/AttachmentsApi.md#apiv3attachmentsiddelete) | **DELETE** /api/v3/attachments/{id} | Delete attachment
*AttachmentsApi* | [**apiV3AttachmentsIdGet**](doc\/AttachmentsApi.md#apiv3attachmentsidget) | **GET** /api/v3/attachments/{id} | View attachment
*AttachmentsApi* | [**apiV3WorkPackagesIdAttachmentsGet**](doc\/AttachmentsApi.md#apiv3workpackagesidattachmentsget) | **GET** /api/v3/work_packages/{id}/attachments | List attachments
*AttachmentsApi* | [**apiV3WorkPackagesIdAttachmentsPost**](doc\/AttachmentsApi.md#apiv3workpackagesidattachmentspost) | **POST** /api/v3/work_packages/{id}/attachments | Add attachment
*BudgetsApi* | [**apiV3BudgetsIdGet**](doc\/BudgetsApi.md#apiv3budgetsidget) | **GET** /api/v3/budgets/{id} | 
*CategoriesApi* | [**apiV3CategoriesIdGet**](doc\/CategoriesApi.md#apiv3categoriesidget) | **GET** /api/v3/categories/{id} | View Category
*CategoriesApi* | [**apiV3ProjectsProjectIdCategoriesGet**](doc\/CategoriesApi.md#apiv3projectsprojectidcategoriesget) | **GET** /api/v3/projects/{project_id}/categories | List categories of a project
*CollectionsApi* | [**apiV3ExamplesGet**](doc\/CollectionsApi.md#apiv3examplesget) | **GET** /api/v3/examples | view aggregated result
*ConfigurationApi* | [**apiV3ConfigurationGet**](doc\/ConfigurationApi.md#apiv3configurationget) | **GET** /api/v3/configuration | View configuration
*CustomActionsApi* | [**apiV3CustomActionsCustomActionIdExecutePost**](doc\/CustomActionsApi.md#apiv3customactionscustomactionidexecutepost) | **POST** /api/v3/custom_actions/{custom_action_id}/execute | Execute custom action
*CustomActionsApi* | [**apiV3CustomActionsCustomActionIdGet**](doc\/CustomActionsApi.md#apiv3customactionscustomactionidget) | **GET** /api/v3/custom_actions/{custom_action_id} | View custom action
*CustomObjectsApi* | [**apiV3CustomObjectsIdGet**](doc\/CustomObjectsApi.md#apiv3customobjectsidget) | **GET** /api/v3/custom_objects/{id} | View Custom Object
*FormsApi* | [**apiV3ExampleFormPost**](doc\/FormsApi.md#apiv3exampleformpost) | **POST** /api/v3/example/form | show or validate form
*HelpTextsApi* | [**apiV3HelpTextsGet**](doc\/HelpTextsApi.md#apiv3helptextsget) | **GET** /api/v3/help_texts | List all help texts
*HelpTextsApi* | [**apiV3HelpTextsIdGet**](doc\/HelpTextsApi.md#apiv3helptextsidget) | **GET** /api/v3/help_texts/{id} | View help text
*NewsApi* | [**apiV3NewsGet**](doc\/NewsApi.md#apiv3newsget) | **GET** /api/v3/news | list news
*NewsApi* | [**apiV3NewsIdGet**](doc\/NewsApi.md#apiv3newsidget) | **GET** /api/v3/news/{id} | view news
*PreviewingApi* | [**apiV3RenderPlainPost**](doc\/PreviewingApi.md#apiv3renderplainpost) | **POST** /api/v3/render/plain | Preview plain document
*PreviewingApi* | [**apiV3RenderTextilePost**](doc\/PreviewingApi.md#apiv3rendertextilepost) | **POST** /api/v3/render/textile | Preview Textile document
*PrincipalsApi* | [**apiV3PrincipalsGet**](doc\/PrincipalsApi.md#apiv3principalsget) | **GET** /api/v3/principals | List principals
*PrioritiesApi* | [**apiV3PrioritiesGet**](doc\/PrioritiesApi.md#apiv3prioritiesget) | **GET** /api/v3/priorities | List all Priorities
*PrioritiesApi* | [**apiV3PrioritiesIdGet**](doc\/PrioritiesApi.md#apiv3prioritiesidget) | **GET** /api/v3/priorities/{id} | View Priority
*ProjectsApi* | [**apiV3ProjectsAvailableParentProjectsGet**](doc\/ProjectsApi.md#apiv3projectsavailableparentprojectsget) | **GET** /api/v3/projects/available_parent_projects | list available parent project candidates
*ProjectsApi* | [**apiV3ProjectsGet**](doc\/ProjectsApi.md#apiv3projectsget) | **GET** /api/v3/projects | List projects
*ProjectsApi* | [**apiV3ProjectsIdDelete**](doc\/ProjectsApi.md#apiv3projectsiddelete) | **DELETE** /api/v3/projects/{id} | delete project
*ProjectsApi* | [**apiV3ProjectsIdGet**](doc\/ProjectsApi.md#apiv3projectsidget) | **GET** /api/v3/projects/{id} | View project
*ProjectsApi* | [**apiV3ProjectsIdPatch**](doc\/ProjectsApi.md#apiv3projectsidpatch) | **PATCH** /api/v3/projects/{id} | update project
*ProjectsApi* | [**apiV3ProjectsPost**](doc\/ProjectsApi.md#apiv3projectspost) | **POST** /api/v3/projects | create project
*ProjectsApi* | [**apiV3VersionsIdProjectsGet**](doc\/ProjectsApi.md#apiv3versionsidprojectsget) | **GET** /api/v3/versions/{id}/projects | List projects with version
*QueriesApi* | [**apiV3ProjectsIdQueriesDefaultGet**](doc\/QueriesApi.md#apiv3projectsidqueriesdefaultget) | **GET** /api/v3/projects/{id}/queries/default | View default query for project
*QueriesApi* | [**apiV3ProjectsIdQueriesSchemaGet**](doc\/QueriesApi.md#apiv3projectsidqueriesschemaget) | **GET** /api/v3/projects/{id}/queries/schema | View schema for project queries
*QueriesApi* | [**apiV3QueriesAvailableProjectsGet**](doc\/QueriesApi.md#apiv3queriesavailableprojectsget) | **GET** /api/v3/queries/available_projects | Available projects
*QueriesApi* | [**apiV3QueriesDefaultGet**](doc\/QueriesApi.md#apiv3queriesdefaultget) | **GET** /api/v3/queries/default | View default query
*QueriesApi* | [**apiV3QueriesFormPost**](doc\/QueriesApi.md#apiv3queriesformpost) | **POST** /api/v3/queries/form | Query Create Form
*QueriesApi* | [**apiV3QueriesGet**](doc\/QueriesApi.md#apiv3queriesget) | **GET** /api/v3/queries | List queries
*QueriesApi* | [**apiV3QueriesIdDelete**](doc\/QueriesApi.md#apiv3queriesiddelete) | **DELETE** /api/v3/queries/{id} | Delete query
*QueriesApi* | [**apiV3QueriesIdGet**](doc\/QueriesApi.md#apiv3queriesidget) | **GET** /api/v3/queries/{id} | View query
*QueriesApi* | [**apiV3QueriesIdPatch**](doc\/QueriesApi.md#apiv3queriesidpatch) | **PATCH** /api/v3/queries/{id} | Edit Query
*QueriesApi* | [**apiV3QueriesIdStarPatch**](doc\/QueriesApi.md#apiv3queriesidstarpatch) | **PATCH** /api/v3/queries/{id}/star | Star query
*QueriesApi* | [**apiV3QueriesIdUnstarPatch**](doc\/QueriesApi.md#apiv3queriesidunstarpatch) | **PATCH** /api/v3/queries/{id}/unstar | Unstar query
*QueriesApi* | [**apiV3QueriesPost**](doc\/QueriesApi.md#apiv3queriespost) | **POST** /api/v3/queries | Create query
*QueriesApi* | [**apiV3QueriesSchemaGet**](doc\/QueriesApi.md#apiv3queriesschemaget) | **GET** /api/v3/queries/schema | View schema for global queries
*QueryColumnsApi* | [**apiV3QueriesColumnsIdGet**](doc\/QueryColumnsApi.md#apiv3queriescolumnsidget) | **GET** /api/v3/queries/columns/{id} | View Query Column
*QueryFilterInstanceSchemaApi* | [**apiV3ProjectsIdQueriesFilterInstanceSchemasGet**](doc\/QueryFilterInstanceSchemaApi.md#apiv3projectsidqueriesfilterinstanceschemasget) | **GET** /api/v3/projects/{id}/queries/filter_instance_schemas | List Query Filter Instance Schemas for Project
*QueryFilterInstanceSchemaApi* | [**apiV3QueriesFilterInstanceSchemasGet**](doc\/QueryFilterInstanceSchemaApi.md#apiv3queriesfilterinstanceschemasget) | **GET** /api/v3/queries/filter_instance_schemas | List Query Filter Instance Schemas
*QueryFilterInstanceSchemaApi* | [**apiV3QueriesFilterInstanceSchemasIdentifierGet**](doc\/QueryFilterInstanceSchemaApi.md#apiv3queriesfilterinstanceschemasidentifierget) | **GET** /api/v3/queries/filter_instance_schemas/{identifier} | View Query Filter Instance Schema
*QueryFiltersApi* | [**apiV3QueriesFiltersIdGet**](doc\/QueryFiltersApi.md#apiv3queriesfiltersidget) | **GET** /api/v3/queries/filters/{id} | View Query Filter
*QueryOperatorsApi* | [**apiV3QueriesOperatorsIdGet**](doc\/QueryOperatorsApi.md#apiv3queriesoperatorsidget) | **GET** /api/v3/queries/operators/{id} | View Query Operator
*QuerySortBysApi* | [**apiV3QueriesSortBysIdGet**](doc\/QuerySortBysApi.md#apiv3queriessortbysidget) | **GET** /api/v3/queries/sort_bys/{id} | View Query Sort By
*RelationsApi* | [**apiV3RelationsGet**](doc\/RelationsApi.md#apiv3relationsget) | **GET** /api/v3/relations | List Relations
*RelationsApi* | [**apiV3RelationsIdDelete**](doc\/RelationsApi.md#apiv3relationsiddelete) | **DELETE** /api/v3/relations/{id} | Delete Relation
*RelationsApi* | [**apiV3RelationsIdFormPost**](doc\/RelationsApi.md#apiv3relationsidformpost) | **POST** /api/v3/relations/{id}/form | Relation edit form
*RelationsApi* | [**apiV3RelationsIdGet**](doc\/RelationsApi.md#apiv3relationsidget) | **GET** /api/v3/relations/{id} | View Relation
*RelationsApi* | [**apiV3RelationsIdPatch**](doc\/RelationsApi.md#apiv3relationsidpatch) | **PATCH** /api/v3/relations/{id} | Edit Relation
*RelationsApi* | [**apiV3RelationsSchemaGet**](doc\/RelationsApi.md#apiv3relationsschemaget) | **GET** /api/v3/relations/schema | View relation schema
*RelationsApi* | [**apiV3RelationsSchemaTypeGet**](doc\/RelationsApi.md#apiv3relationsschematypeget) | **GET** /api/v3/relations/schema/{type} | View relation schema for type
*RevisionsApi* | [**apiV3RevisionsIdGet**](doc\/RevisionsApi.md#apiv3revisionsidget) | **GET** /api/v3/revisions/{id} | View revision
*RolesApi* | [**apiV3RolesGet**](doc\/RolesApi.md#apiv3rolesget) | **GET** /api/v3/roles | List roles
*RolesApi* | [**apiV3RolesIdGet**](doc\/RolesApi.md#apiv3rolesidget) | **GET** /api/v3/roles/{id} | View role
*RootApi* | [**apiV3Get**](doc\/RootApi.md#apiv3get) | **GET** /api/v3 | View root
*SchemasApi* | [**apiV3ExampleSchemaGet**](doc\/SchemasApi.md#apiv3exampleschemaget) | **GET** /api/v3/example/schema | view the schema
*StatusesApi* | [**apiV3StatusesGet**](doc\/StatusesApi.md#apiv3statusesget) | **GET** /api/v3/statuses | List all Statuses
*StatusesApi* | [**apiV3StatusesIdGet**](doc\/StatusesApi.md#apiv3statusesidget) | **GET** /api/v3/statuses/{id} | View Status
*StringObjectsApi* | [**apiV3StringObjectsGet**](doc\/StringObjectsApi.md#apiv3stringobjectsget) | **GET** /api/v3/string_objects | View String Object
*TimeEntriesApi* | [**apiV3TimeEntriesGet**](doc\/TimeEntriesApi.md#apiv3timeentriesget) | **GET** /api/v3/time_entries | List Time entries
*TimeEntriesApi* | [**apiV3TimeEntriesIdDelete**](doc\/TimeEntriesApi.md#apiv3timeentriesiddelete) | **DELETE** /api/v3/time_entries/{id} | delete time entry
*TimeEntriesApi* | [**apiV3TimeEntriesIdGet**](doc\/TimeEntriesApi.md#apiv3timeentriesidget) | **GET** /api/v3/time_entries/{id} | View time entry
*TimeEntriesApi* | [**apiV3TimeEntriesPost**](doc\/TimeEntriesApi.md#apiv3timeentriespost) | **POST** /api/v3/time_entries | create time entry
*TimeEntryActivitiesApi* | [**apiV3TimeEntriesActivitiesIdGet**](doc\/TimeEntryActivitiesApi.md#apiv3timeentriesactivitiesidget) | **GET** /api/v3/time_entries/activities/{id} | View time entries activity
*TypesApi* | [**apiV3ProjectsProjectIdTypesGet**](doc\/TypesApi.md#apiv3projectsprojectidtypesget) | **GET** /api/v3/projects/{project_id}/types | List types available in a project
*TypesApi* | [**apiV3TypesGet**](doc\/TypesApi.md#apiv3typesget) | **GET** /api/v3/types | List all Types
*TypesApi* | [**apiV3TypesIdGet**](doc\/TypesApi.md#apiv3typesidget) | **GET** /api/v3/types/{id} | View Type
*UserPreferencesApi* | [**apiV3MyPreferencesGet**](doc\/UserPreferencesApi.md#apiv3mypreferencesget) | **GET** /api/v3/my_preferences | Show my preferences
*UserPreferencesApi* | [**apiV3MyPreferencesPatch**](doc\/UserPreferencesApi.md#apiv3mypreferencespatch) | **PATCH** /api/v3/my_preferences | Update UserPreferences
*UsersApi* | [**apiV3UsersGet**](doc\/UsersApi.md#apiv3usersget) | **GET** /api/v3/users | List Users
*UsersApi* | [**apiV3UsersIdDelete**](doc\/UsersApi.md#apiv3usersiddelete) | **DELETE** /api/v3/users/{id} | Delete user
*UsersApi* | [**apiV3UsersIdGet**](doc\/UsersApi.md#apiv3usersidget) | **GET** /api/v3/users/{id} | View user
*UsersApi* | [**apiV3UsersIdLockDelete**](doc\/UsersApi.md#apiv3usersidlockdelete) | **DELETE** /api/v3/users/{id}/lock | Remove Lock
*UsersApi* | [**apiV3UsersIdLockPost**](doc\/UsersApi.md#apiv3usersidlockpost) | **POST** /api/v3/users/{id}/lock | Set Lock
*UsersApi* | [**apiV3UsersIdPatch**](doc\/UsersApi.md#apiv3usersidpatch) | **PATCH** /api/v3/users/{id} | Update user
*UsersApi* | [**apiV3UsersPost**](doc\/UsersApi.md#apiv3userspost) | **POST** /api/v3/users | Create User
*VersionsApi* | [**apiV3ProjectsProjectIdVersionsGet**](doc\/VersionsApi.md#apiv3projectsprojectidversionsget) | **GET** /api/v3/projects/{project_id}/versions | List versions available in a project
*VersionsApi* | [**apiV3VersionsGet**](doc\/VersionsApi.md#apiv3versionsget) | **GET** /api/v3/versions | List versions
*VersionsApi* | [**apiV3VersionsIdGet**](doc\/VersionsApi.md#apiv3versionsidget) | **GET** /api/v3/versions/{id} | View version
*WorkPackagesApi* | [**apiV3ProjectsIdWorkPackagesFormPost**](doc\/WorkPackagesApi.md#apiv3projectsidworkpackagesformpost) | **POST** /api/v3/projects/{id}/work_packages/form | Work Package Create Form
*WorkPackagesApi* | [**apiV3ProjectsIdWorkPackagesGet**](doc\/WorkPackagesApi.md#apiv3projectsidworkpackagesget) | **GET** /api/v3/projects/{id}/work_packages | List Work Packages
*WorkPackagesApi* | [**apiV3ProjectsIdWorkPackagesPost**](doc\/WorkPackagesApi.md#apiv3projectsidworkpackagespost) | **POST** /api/v3/projects/{id}/work_packages | Create Work Package
*WorkPackagesApi* | [**apiV3ProjectsProjectIdAvailableAssigneesGet**](doc\/WorkPackagesApi.md#apiv3projectsprojectidavailableassigneesget) | **GET** /api/v3/projects/{project_id}/available_assignees | Available assignees
*WorkPackagesApi* | [**apiV3ProjectsProjectIdAvailableResponsiblesGet**](doc\/WorkPackagesApi.md#apiv3projectsprojectidavailableresponsiblesget) | **GET** /api/v3/projects/{project_id}/available_responsibles | Available responsibles
*WorkPackagesApi* | [**apiV3WorkPackagesFormPost**](doc\/WorkPackagesApi.md#apiv3workpackagesformpost) | **POST** /api/v3/work_packages/form | Work Package Create Form
*WorkPackagesApi* | [**apiV3WorkPackagesGet**](doc\/WorkPackagesApi.md#apiv3workpackagesget) | **GET** /api/v3/work_packages | List Work Packages
*WorkPackagesApi* | [**apiV3WorkPackagesIdActivitiesGet**](doc\/WorkPackagesApi.md#apiv3workpackagesidactivitiesget) | **GET** /api/v3/work_packages/{id}/activities | List work package activities
*WorkPackagesApi* | [**apiV3WorkPackagesIdActivitiesPost**](doc\/WorkPackagesApi.md#apiv3workpackagesidactivitiespost) | **POST** /api/v3/work_packages/{id}/activities | Comment work package
*WorkPackagesApi* | [**apiV3WorkPackagesIdAvailableProjectsGet**](doc\/WorkPackagesApi.md#apiv3workpackagesidavailableprojectsget) | **GET** /api/v3/work_packages/{id}/available_projects | Available projects
*WorkPackagesApi* | [**apiV3WorkPackagesIdAvailableRelationCandidatesGet**](doc\/WorkPackagesApi.md#apiv3workpackagesidavailablerelationcandidatesget) | **GET** /api/v3/work_packages/{id}/available_relation_candidates | Available relation candidates
*WorkPackagesApi* | [**apiV3WorkPackagesIdAvailableWatchersGet**](doc\/WorkPackagesApi.md#apiv3workpackagesidavailablewatchersget) | **GET** /api/v3/work_packages/{id}/available_watchers | Available watchers
*WorkPackagesApi* | [**apiV3WorkPackagesIdDelete**](doc\/WorkPackagesApi.md#apiv3workpackagesiddelete) | **DELETE** /api/v3/work_packages/{id} | Delete Work Package
*WorkPackagesApi* | [**apiV3WorkPackagesIdFormPost**](doc\/WorkPackagesApi.md#apiv3workpackagesidformpost) | **POST** /api/v3/work_packages/{id}/form | Work Package Edit Form
*WorkPackagesApi* | [**apiV3WorkPackagesIdGet**](doc\/WorkPackagesApi.md#apiv3workpackagesidget) | **GET** /api/v3/work_packages/{id} | View Work Package
*WorkPackagesApi* | [**apiV3WorkPackagesIdPatch**](doc\/WorkPackagesApi.md#apiv3workpackagesidpatch) | **PATCH** /api/v3/work_packages/{id} | Edit Work Package
*WorkPackagesApi* | [**apiV3WorkPackagesIdRelationsFormPost**](doc\/WorkPackagesApi.md#apiv3workpackagesidrelationsformpost) | **POST** /api/v3/work_packages/{id}/relations/form | Relation create form
*WorkPackagesApi* | [**apiV3WorkPackagesIdRevisionsGet**](doc\/WorkPackagesApi.md#apiv3workpackagesidrevisionsget) | **GET** /api/v3/work_packages/{id}/revisions | Revisions
*WorkPackagesApi* | [**apiV3WorkPackagesPost**](doc\/WorkPackagesApi.md#apiv3workpackagespost) | **POST** /api/v3/work_packages | Create Work Package
*WorkPackagesApi* | [**apiV3WorkPackagesSchemasGet**](doc\/WorkPackagesApi.md#apiv3workpackagesschemasget) | **GET** /api/v3/work_packages/schemas/ | List Work Package Schemas
*WorkPackagesApi* | [**apiV3WorkPackagesSchemasIdentifierGet**](doc\/WorkPackagesApi.md#apiv3workpackagesschemasidentifierget) | **GET** /api/v3/work_packages/schemas/{identifier} | View Work Package Schema
*WorkPackagesApi* | [**apiV3WorkPackagesWorkPackageIdRelationsGet**](doc\/WorkPackagesApi.md#apiv3workpackagesworkpackageidrelationsget) | **GET** /api/v3/work_packages/{work_package_id}/relations | List relations
*WorkPackagesApi* | [**apiV3WorkPackagesWorkPackageIdRelationsPost**](doc\/WorkPackagesApi.md#apiv3workpackagesworkpackageidrelationspost) | **POST** /api/v3/work_packages/{work_package_id}/relations | Create Relation
*WorkPackagesApi* | [**apiV3WorkPackagesWorkPackageIdWatchersGet**](doc\/WorkPackagesApi.md#apiv3workpackagesworkpackageidwatchersget) | **GET** /api/v3/work_packages/{work_package_id}/watchers | List watchers
*WorkPackagesApi* | [**apiV3WorkPackagesWorkPackageIdWatchersIdDelete**](doc\/WorkPackagesApi.md#apiv3workpackagesworkpackageidwatchersiddelete) | **DELETE** /api/v3/work_packages/{work_package_id}/watchers/{id} | Remove watcher
*WorkPackagesApi* | [**apiV3WorkPackagesWorkPackageIdWatchersPost**](doc\/WorkPackagesApi.md#apiv3workpackagesworkpackageidwatcherspost) | **POST** /api/v3/work_packages/{work_package_id}/watchers | Add watcher


## Documentation For Models

 - [Activity](doc\/Activity.md)
 - [ActivityLinks](doc\/ActivityLinks.md)
 - [ApiV3CustomActionsCustomActionIdExecuteLinks](doc\/ApiV3CustomActionsCustomActionIdExecuteLinks.md)
 - [ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage](doc\/ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.md)
 - [Attachment](doc\/Attachment.md)
 - [Budget](doc\/Budget.md)
 - [BudgetLinks](doc\/BudgetLinks.md)
 - [Categories](doc\/Categories.md)
 - [CategoriesEmbedded](doc\/CategoriesEmbedded.md)
 - [Category](doc\/Category.md)
 - [CategoryLinks](doc\/CategoryLinks.md)
 - [Comment](doc\/Comment.md)
 - [Configuration](doc\/Configuration.md)
 - [Description](doc\/Description.md)
 - [Digest](doc\/Digest.md)
 - [InlineObject](doc\/InlineObject.md)
 - [InlineObject1](doc\/InlineObject1.md)
 - [InlineObject2](doc\/InlineObject2.md)
 - [InlineObject3](doc\/InlineObject3.md)
 - [InlineObject4](doc\/InlineObject4.md)
 - [InlineObject5](doc\/InlineObject5.md)
 - [InlineObject6](doc\/InlineObject6.md)
 - [Link](doc\/Link.md)
 - [News](doc\/News.md)
 - [NewsEmbedded](doc\/NewsEmbedded.md)
 - [NewsLinks](doc\/NewsLinks.md)
 - [NewsList](doc\/NewsList.md)
 - [NewsListEmbedded](doc\/NewsListEmbedded.md)
 - [NewsListLinks](doc\/NewsListLinks.md)
 - [Priorities](doc\/Priorities.md)
 - [PrioritiesEmbedded](doc\/PrioritiesEmbedded.md)
 - [PrioritiesLinks](doc\/PrioritiesLinks.md)
 - [Priority](doc\/Priority.md)
 - [PriorityLinks](doc\/PriorityLinks.md)
 - [Project](doc\/Project.md)
 - [ProjectLinks](doc\/ProjectLinks.md)
 - [Projects](doc\/Projects.md)
 - [ProjectsEmbedded](doc\/ProjectsEmbedded.md)
 - [ProjectsLinks](doc\/ProjectsLinks.md)
 - [Root](doc\/Root.md)
 - [RootLinks](doc\/RootLinks.md)
 - [Status](doc\/Status.md)
 - [StatusLinks](doc\/StatusLinks.md)
 - [Statuses](doc\/Statuses.md)
 - [StatusesEmbedded](doc\/StatusesEmbedded.md)
 - [StatusesLinks](doc\/StatusesLinks.md)
 - [TimeEntries](doc\/TimeEntries.md)
 - [TimeEntriesActivity](doc\/TimeEntriesActivity.md)
 - [TimeEntriesActivityEmbedded](doc\/TimeEntriesActivityEmbedded.md)
 - [TimeEntriesActivityLinks](doc\/TimeEntriesActivityLinks.md)
 - [TimeEntriesEmbedded](doc\/TimeEntriesEmbedded.md)
 - [TimeEntriesLinks](doc\/TimeEntriesLinks.md)
 - [TimeEntry](doc\/TimeEntry.md)
 - [TimeEntryEmbedded](doc\/TimeEntryEmbedded.md)
 - [TimeEntryLinks](doc\/TimeEntryLinks.md)
 - [User](doc\/User.md)
 - [UserLinks](doc\/UserLinks.md)
 - [UserPreferences](doc\/UserPreferences.md)
 - [UserPreferencesLinks](doc\/UserPreferencesLinks.md)
 - [Users](doc\/Users.md)
 - [UsersEmbedded](doc\/UsersEmbedded.md)
 - [Version](doc\/Version.md)
 - [VersionLinks](doc\/VersionLinks.md)
 - [Versions](doc\/Versions.md)
 - [VersionsEmbedded](doc\/VersionsEmbedded.md)
 - [WPType](doc\/WPType.md)
 - [WPTypeLinks](doc\/WPTypeLinks.md)
 - [WPTypes](doc\/WPTypes.md)
 - [WPTypesEmbedded](doc\/WPTypesEmbedded.md)
 - [WorkPackage](doc\/WorkPackage.md)
 - [WorkPackageEmbedded](doc\/WorkPackageEmbedded.md)
 - [WorkPackageLinks](doc\/WorkPackageLinks.md)
 - [WorkPackagePatch](doc\/WorkPackagePatch.md)
 - [WorkPackages](doc\/WorkPackages.md)
 - [WorkPackagesEmbedded](doc\/WorkPackagesEmbedded.md)


## Documentation For Authorization


## basicAuth

- **Type**: HTTP Basic authentication

## oAuth

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: /oauth/authorize
- **Scopes**: N/A


## Author



