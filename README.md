# swagger
No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This Dart package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 
- Build package: io.swagger.codegen.languages.DartClientCodegen

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: swagger
version: 1.0.0
description: Swagger API client
dependencies:
  swagger:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  swagger:
    path: /path/to/swagger
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:swagger/api.dart';

// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new ActivitiesApi();
var id = 56; // int | Activity id

try {
    api_instance.apiV3ActivitiesIdGet(id);
} catch (e) {
    print("Exception when calling ActivitiesApi->apiV3ActivitiesIdGet: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ActivitiesApi* | [**apiV3ActivitiesIdGet**](docs//ActivitiesApi.md#apiv3activitiesidget) | **GET** /api/v3/activities/{id} | View activity
*ActivitiesApi* | [**apiV3ActivitiesIdPatch**](docs//ActivitiesApi.md#apiv3activitiesidpatch) | **PATCH** /api/v3/activities/{id} | Update activity
*AttachmentsApi* | [**apiV3AttachmentsIdDelete**](docs//AttachmentsApi.md#apiv3attachmentsiddelete) | **DELETE** /api/v3/attachments/{id} | Delete attachment
*AttachmentsApi* | [**apiV3AttachmentsIdGet**](docs//AttachmentsApi.md#apiv3attachmentsidget) | **GET** /api/v3/attachments/{id} | View attachment
*AttachmentsApi* | [**apiV3WorkPackagesIdAttachmentsGet**](docs//AttachmentsApi.md#apiv3workpackagesidattachmentsget) | **GET** /api/v3/work_packages/{id}/attachments | List attachments
*AttachmentsApi* | [**apiV3WorkPackagesIdAttachmentsPost**](docs//AttachmentsApi.md#apiv3workpackagesidattachmentspost) | **POST** /api/v3/work_packages/{id}/attachments | Add attachment
*CategoriesApi* | [**apiV3CategoriesIdGet**](docs//CategoriesApi.md#apiv3categoriesidget) | **GET** /api/v3/categories/{id} | View Category
*CategoriesApi* | [**apiV3ProjectsProjectIdCategoriesGet**](docs//CategoriesApi.md#apiv3projectsprojectidcategoriesget) | **GET** /api/v3/projects/{project_id}/categories | List categories of a project
*CollectionsApi* | [**apiV3ExamplesGet**](docs//CollectionsApi.md#apiv3examplesget) | **GET** /api/v3/examples | view aggregated result
*ConfigurationApi* | [**apiV3ConfigurationGet**](docs//ConfigurationApi.md#apiv3configurationget) | **GET** /api/v3/configuration | View configuration
*CustomActionsApi* | [**apiV3CustomActionsCustomActionIdExecutePost**](docs//CustomActionsApi.md#apiv3customactionscustomactionidexecutepost) | **POST** /api/v3/custom_actions/{custom_action_id}/execute | Execute custom action
*CustomActionsApi* | [**apiV3CustomActionsCustomActionIdGet**](docs//CustomActionsApi.md#apiv3customactionscustomactionidget) | **GET** /api/v3/custom_actions/{custom_action_id} | View custom action
*CustomObjectsApi* | [**apiV3CustomObjectsIdGet**](docs//CustomObjectsApi.md#apiv3customobjectsidget) | **GET** /api/v3/custom_objects/{id} | View Custom Object
*FormsApi* | [**apiV3ExampleFormPost**](docs//FormsApi.md#apiv3exampleformpost) | **POST** /api/v3/example/form | show or validate form
*HelpTextsApi* | [**apiV3HelpTextsGet**](docs//HelpTextsApi.md#apiv3helptextsget) | **GET** /api/v3/help_texts | List all help texts
*HelpTextsApi* | [**apiV3HelpTextsIdGet**](docs//HelpTextsApi.md#apiv3helptextsidget) | **GET** /api/v3/help_texts/{id} | View help text
*PreviewingApi* | [**apiV3RenderPlainPost**](docs//PreviewingApi.md#apiv3renderplainpost) | **POST** /api/v3/render/plain | Preview plain document
*PreviewingApi* | [**apiV3RenderTextilePost**](docs//PreviewingApi.md#apiv3rendertextilepost) | **POST** /api/v3/render/textile | Preview Textile document
*PrincipalsApi* | [**apiV3PrincipalsGet**](docs//PrincipalsApi.md#apiv3principalsget) | **GET** /api/v3/principals | List principals
*PrioritiesApi* | [**apiV3PrioritiesGet**](docs//PrioritiesApi.md#apiv3prioritiesget) | **GET** /api/v3/priorities | List all Priorities
*PrioritiesApi* | [**apiV3PrioritiesIdGet**](docs//PrioritiesApi.md#apiv3prioritiesidget) | **GET** /api/v3/priorities/{id} | View Priority
*ProjectsApi* | [**apiV3ProjectsGet**](docs//ProjectsApi.md#apiv3projectsget) | **GET** /api/v3/projects | List projects
*ProjectsApi* | [**apiV3ProjectsIdGet**](docs//ProjectsApi.md#apiv3projectsidget) | **GET** /api/v3/projects/{id} | View project
*ProjectsApi* | [**apiV3VersionsIdProjectsGet**](docs//ProjectsApi.md#apiv3versionsidprojectsget) | **GET** /api/v3/versions/{id}/projects | List projects with version
*QueriesApi* | [**apiV3ProjectsIdQueriesDefaultGet**](docs//QueriesApi.md#apiv3projectsidqueriesdefaultget) | **GET** /api/v3/projects/{id}/queries/default | View default query for project
*QueriesApi* | [**apiV3ProjectsIdQueriesSchemaGet**](docs//QueriesApi.md#apiv3projectsidqueriesschemaget) | **GET** /api/v3/projects/{id}/queries/schema | View schema for project queries
*QueriesApi* | [**apiV3QueriesAvailableProjectsGet**](docs//QueriesApi.md#apiv3queriesavailableprojectsget) | **GET** /api/v3/queries/available_projects | Available projects
*QueriesApi* | [**apiV3QueriesDefaultGet**](docs//QueriesApi.md#apiv3queriesdefaultget) | **GET** /api/v3/queries/default | View default query
*QueriesApi* | [**apiV3QueriesFormPost**](docs//QueriesApi.md#apiv3queriesformpost) | **POST** /api/v3/queries/form | Query Create Form
*QueriesApi* | [**apiV3QueriesGet**](docs//QueriesApi.md#apiv3queriesget) | **GET** /api/v3/queries | List queries
*QueriesApi* | [**apiV3QueriesIdDelete**](docs//QueriesApi.md#apiv3queriesiddelete) | **DELETE** /api/v3/queries/{id} | Delete query
*QueriesApi* | [**apiV3QueriesIdGet**](docs//QueriesApi.md#apiv3queriesidget) | **GET** /api/v3/queries/{id} | View query
*QueriesApi* | [**apiV3QueriesIdPatch**](docs//QueriesApi.md#apiv3queriesidpatch) | **PATCH** /api/v3/queries/{id} | Edit Query
*QueriesApi* | [**apiV3QueriesIdStarPatch**](docs//QueriesApi.md#apiv3queriesidstarpatch) | **PATCH** /api/v3/queries/{id}/star | Star query
*QueriesApi* | [**apiV3QueriesIdUnstarPatch**](docs//QueriesApi.md#apiv3queriesidunstarpatch) | **PATCH** /api/v3/queries/{id}/unstar | Unstar query
*QueriesApi* | [**apiV3QueriesPost**](docs//QueriesApi.md#apiv3queriespost) | **POST** /api/v3/queries | Create query
*QueriesApi* | [**apiV3QueriesSchemaGet**](docs//QueriesApi.md#apiv3queriesschemaget) | **GET** /api/v3/queries/schema | View schema for global queries
*QueryColumnsApi* | [**apiV3QueriesColumnsIdGet**](docs//QueryColumnsApi.md#apiv3queriescolumnsidget) | **GET** /api/v3/queries/columns/{id} | View Query Column
*QueryFilterInstanceSchemaApi* | [**apiV3ProjectsIdQueriesFilterInstanceSchemasGet**](docs//QueryFilterInstanceSchemaApi.md#apiv3projectsidqueriesfilterinstanceschemasget) | **GET** /api/v3/projects/{id}/queries/filter_instance_schemas | List Query Filter Instance Schemas for Project
*QueryFilterInstanceSchemaApi* | [**apiV3QueriesFilterInstanceSchemasGet**](docs//QueryFilterInstanceSchemaApi.md#apiv3queriesfilterinstanceschemasget) | **GET** /api/v3/queries/filter_instance_schemas | List Query Filter Instance Schemas
*QueryFilterInstanceSchemaApi* | [**apiV3QueriesFilterInstanceSchemasIdentifierGet**](docs//QueryFilterInstanceSchemaApi.md#apiv3queriesfilterinstanceschemasidentifierget) | **GET** /api/v3/queries/filter_instance_schemas/{identifier} | View Query Filter Instance Schema
*QueryFiltersApi* | [**apiV3QueriesFiltersIdGet**](docs//QueryFiltersApi.md#apiv3queriesfiltersidget) | **GET** /api/v3/queries/filters/{id} | View Query Filter
*QueryOperatorsApi* | [**apiV3QueriesOperatorsIdGet**](docs//QueryOperatorsApi.md#apiv3queriesoperatorsidget) | **GET** /api/v3/queries/operators/{id} | View Query Operator
*QuerySortBysApi* | [**apiV3QueriesSortBysIdGet**](docs//QuerySortBysApi.md#apiv3queriessortbysidget) | **GET** /api/v3/queries/sort_bys/{id} | View Query Sort By
*RelationsApi* | [**apiV3RelationsGet**](docs//RelationsApi.md#apiv3relationsget) | **GET** /api/v3/relations | List Relations
*RelationsApi* | [**apiV3RelationsIdDelete**](docs//RelationsApi.md#apiv3relationsiddelete) | **DELETE** /api/v3/relations/{id} | Delete Relation
*RelationsApi* | [**apiV3RelationsIdFormPost**](docs//RelationsApi.md#apiv3relationsidformpost) | **POST** /api/v3/relations/{id}/form | Relation edit form
*RelationsApi* | [**apiV3RelationsIdGet**](docs//RelationsApi.md#apiv3relationsidget) | **GET** /api/v3/relations/{id} | View Relation
*RelationsApi* | [**apiV3RelationsIdPatch**](docs//RelationsApi.md#apiv3relationsidpatch) | **PATCH** /api/v3/relations/{id} | Edit Relation
*RelationsApi* | [**apiV3RelationsSchemaGet**](docs//RelationsApi.md#apiv3relationsschemaget) | **GET** /api/v3/relations/schema | View relation schema
*RelationsApi* | [**apiV3RelationsSchemaTypeGet**](docs//RelationsApi.md#apiv3relationsschematypeget) | **GET** /api/v3/relations/schema/{type} | View relation schema for type
*RevisionsApi* | [**apiV3RevisionsIdGet**](docs//RevisionsApi.md#apiv3revisionsidget) | **GET** /api/v3/revisions/{id} | View revision
*RolesApi* | [**apiV3RolesGet**](docs//RolesApi.md#apiv3rolesget) | **GET** /api/v3/roles | List roles
*RolesApi* | [**apiV3RolesIdGet**](docs//RolesApi.md#apiv3rolesidget) | **GET** /api/v3/roles/{id} | View role
*RootApi* | [**apiV3Get**](docs//RootApi.md#apiv3get) | **GET** /api/v3 | View root
*SchemasApi* | [**apiV3ExampleSchemaGet**](docs//SchemasApi.md#apiv3exampleschemaget) | **GET** /api/v3/example/schema | view the schema
*StatusesApi* | [**apiV3StatusesGet**](docs//StatusesApi.md#apiv3statusesget) | **GET** /api/v3/statuses | List all Statuses
*StatusesApi* | [**apiV3StatusesIdGet**](docs//StatusesApi.md#apiv3statusesidget) | **GET** /api/v3/statuses/{id} | View Status
*StringObjectsApi* | [**apiV3StringObjectsGet**](docs//StringObjectsApi.md#apiv3stringobjectsget) | **GET** /api/v3/string_objects | View String Object
*TimeEntriesApi* | [**apiV3TimeEntriesGet**](docs//TimeEntriesApi.md#apiv3timeentriesget) | **GET** /api/v3/time_entries | List Time entries
*TimeEntriesApi* | [**apiV3TimeEntriesIdGet**](docs//TimeEntriesApi.md#apiv3timeentriesidget) | **GET** /api/v3/time_entries/{id} | View time entry
*TimeEntryActivitiesApi* | [**apiV3TimeEntriesActivityIdGet**](docs//TimeEntryActivitiesApi.md#apiv3timeentriesactivityidget) | **GET** /api/v3/time_entries/activity/{id} | View time entries activity
*TypesApi* | [**apiV3ProjectsProjectIdTypesGet**](docs//TypesApi.md#apiv3projectsprojectidtypesget) | **GET** /api/v3/projects/{project_id}/types | List types available in a project
*TypesApi* | [**apiV3TypesGet**](docs//TypesApi.md#apiv3typesget) | **GET** /api/v3/types | List all Types
*TypesApi* | [**apiV3TypesIdGet**](docs//TypesApi.md#apiv3typesidget) | **GET** /api/v3/types/{id} | View Type
*UserPreferencesApi* | [**apiV3MyPreferencesGet**](docs//UserPreferencesApi.md#apiv3mypreferencesget) | **GET** /api/v3/my_preferences | Show my preferences
*UserPreferencesApi* | [**apiV3MyPreferencesPatch**](docs//UserPreferencesApi.md#apiv3mypreferencespatch) | **PATCH** /api/v3/my_preferences | Update UserPreferences
*UsersApi* | [**apiV3UsersGet**](docs//UsersApi.md#apiv3usersget) | **GET** /api/v3/users | List Users
*UsersApi* | [**apiV3UsersIdDelete**](docs//UsersApi.md#apiv3usersiddelete) | **DELETE** /api/v3/users/{id} | Delete user
*UsersApi* | [**apiV3UsersIdGet**](docs//UsersApi.md#apiv3usersidget) | **GET** /api/v3/users/{id} | View user
*UsersApi* | [**apiV3UsersIdLockDelete**](docs//UsersApi.md#apiv3usersidlockdelete) | **DELETE** /api/v3/users/{id}/lock | Remove Lock
*UsersApi* | [**apiV3UsersIdLockPost**](docs//UsersApi.md#apiv3usersidlockpost) | **POST** /api/v3/users/{id}/lock | Set Lock
*UsersApi* | [**apiV3UsersIdPatch**](docs//UsersApi.md#apiv3usersidpatch) | **PATCH** /api/v3/users/{id} | Update user
*UsersApi* | [**apiV3UsersPost**](docs//UsersApi.md#apiv3userspost) | **POST** /api/v3/users | Create User
*VersionsApi* | [**apiV3ProjectsProjectIdVersionsGet**](docs//VersionsApi.md#apiv3projectsprojectidversionsget) | **GET** /api/v3/projects/{project_id}/versions | List versions available in a project
*VersionsApi* | [**apiV3VersionsGet**](docs//VersionsApi.md#apiv3versionsget) | **GET** /api/v3/versions | List versions
*VersionsApi* | [**apiV3VersionsIdGet**](docs//VersionsApi.md#apiv3versionsidget) | **GET** /api/v3/versions/{id} | View version
*WorkPackagesApi* | [**apiV3ProjectsIdWorkPackagesFormPost**](docs//WorkPackagesApi.md#apiv3projectsidworkpackagesformpost) | **POST** /api/v3/projects/{id}/work_packages/form | Work Package Create Form
*WorkPackagesApi* | [**apiV3ProjectsIdWorkPackagesGet**](docs//WorkPackagesApi.md#apiv3projectsidworkpackagesget) | **GET** /api/v3/projects/{id}/work_packages | List Work Packages
*WorkPackagesApi* | [**apiV3ProjectsIdWorkPackagesPost**](docs//WorkPackagesApi.md#apiv3projectsidworkpackagespost) | **POST** /api/v3/projects/{id}/work_packages | Create Work Package
*WorkPackagesApi* | [**apiV3ProjectsProjectIdWorkPackagesAvailableAssigneesGet**](docs//WorkPackagesApi.md#apiv3projectsprojectidworkpackagesavailableassigneesget) | **GET** /api/v3/projects/{project_id}/work_packages/available_assignees | Available assignees
*WorkPackagesApi* | [**apiV3ProjectsProjectIdWorkPackagesAvailableResponsiblesGet**](docs//WorkPackagesApi.md#apiv3projectsprojectidworkpackagesavailableresponsiblesget) | **GET** /api/v3/projects/{project_id}/work_packages/available_responsibles | Available responsibles
*WorkPackagesApi* | [**apiV3WorkPackagesFormPost**](docs//WorkPackagesApi.md#apiv3workpackagesformpost) | **POST** /api/v3/work_packages/form | Work Package Create Form
*WorkPackagesApi* | [**apiV3WorkPackagesGet**](docs//WorkPackagesApi.md#apiv3workpackagesget) | **GET** /api/v3/work_packages | List Work Packages
*WorkPackagesApi* | [**apiV3WorkPackagesIdActivitiesGet**](docs//WorkPackagesApi.md#apiv3workpackagesidactivitiesget) | **GET** /api/v3/work_packages/{id}/activities | List work package activities
*WorkPackagesApi* | [**apiV3WorkPackagesIdActivitiesPost**](docs//WorkPackagesApi.md#apiv3workpackagesidactivitiespost) | **POST** /api/v3/work_packages/{id}/activities | Comment work package
*WorkPackagesApi* | [**apiV3WorkPackagesIdAvailableProjectsGet**](docs//WorkPackagesApi.md#apiv3workpackagesidavailableprojectsget) | **GET** /api/v3/work_packages/{id}/available_projects | Available projects
*WorkPackagesApi* | [**apiV3WorkPackagesIdAvailableRelationCandidatesGet**](docs//WorkPackagesApi.md#apiv3workpackagesidavailablerelationcandidatesget) | **GET** /api/v3/work_packages/{id}/available_relation_candidates | Available relation candidates
*WorkPackagesApi* | [**apiV3WorkPackagesIdAvailableWatchersGet**](docs//WorkPackagesApi.md#apiv3workpackagesidavailablewatchersget) | **GET** /api/v3/work_packages/{id}/available_watchers | Available watchers
*WorkPackagesApi* | [**apiV3WorkPackagesIdDelete**](docs//WorkPackagesApi.md#apiv3workpackagesiddelete) | **DELETE** /api/v3/work_packages/{id} | Delete Work Package
*WorkPackagesApi* | [**apiV3WorkPackagesIdFormPost**](docs//WorkPackagesApi.md#apiv3workpackagesidformpost) | **POST** /api/v3/work_packages/{id}/form | Work Package Edit Form
*WorkPackagesApi* | [**apiV3WorkPackagesIdGet**](docs//WorkPackagesApi.md#apiv3workpackagesidget) | **GET** /api/v3/work_packages/{id} | View Work Package
*WorkPackagesApi* | [**apiV3WorkPackagesIdPatch**](docs//WorkPackagesApi.md#apiv3workpackagesidpatch) | **PATCH** /api/v3/work_packages/{id} | Edit Work Package
*WorkPackagesApi* | [**apiV3WorkPackagesIdRelationsFormPost**](docs//WorkPackagesApi.md#apiv3workpackagesidrelationsformpost) | **POST** /api/v3/work_packages/{id}/relations/form | Relation create form
*WorkPackagesApi* | [**apiV3WorkPackagesIdRevisionsGet**](docs//WorkPackagesApi.md#apiv3workpackagesidrevisionsget) | **GET** /api/v3/work_packages/{id}/revisions | Revisions
*WorkPackagesApi* | [**apiV3WorkPackagesPost**](docs//WorkPackagesApi.md#apiv3workpackagespost) | **POST** /api/v3/work_packages | Create Work Package
*WorkPackagesApi* | [**apiV3WorkPackagesSchemasGet**](docs//WorkPackagesApi.md#apiv3workpackagesschemasget) | **GET** /api/v3/work_packages/schemas/ | List Work Package Schemas
*WorkPackagesApi* | [**apiV3WorkPackagesSchemasIdentifierGet**](docs//WorkPackagesApi.md#apiv3workpackagesschemasidentifierget) | **GET** /api/v3/work_packages/schemas/{identifier} | View Work Package Schema
*WorkPackagesApi* | [**apiV3WorkPackagesWorkPackageIdRelationsGet**](docs//WorkPackagesApi.md#apiv3workpackagesworkpackageidrelationsget) | **GET** /api/v3/work_packages/{work_package_id}/relations | List relations
*WorkPackagesApi* | [**apiV3WorkPackagesWorkPackageIdRelationsPost**](docs//WorkPackagesApi.md#apiv3workpackagesworkpackageidrelationspost) | **POST** /api/v3/work_packages/{work_package_id}/relations | Create Relation
*WorkPackagesApi* | [**apiV3WorkPackagesWorkPackageIdWatchersGet**](docs//WorkPackagesApi.md#apiv3workpackagesworkpackageidwatchersget) | **GET** /api/v3/work_packages/{work_package_id}/watchers | List watchers
*WorkPackagesApi* | [**apiV3WorkPackagesWorkPackageIdWatchersIdDelete**](docs//WorkPackagesApi.md#apiv3workpackagesworkpackageidwatchersiddelete) | **DELETE** /api/v3/work_packages/{work_package_id}/watchers/{id} | Remove watcher
*WorkPackagesApi* | [**apiV3WorkPackagesWorkPackageIdWatchersPost**](docs//WorkPackagesApi.md#apiv3workpackagesworkpackageidwatcherspost) | **POST** /api/v3/work_packages/{work_package_id}/watchers | Add watcher


## Documentation For Models

 - [Activity](docs//Activity.md)
 - [ActivityModel](docs//ActivityModel.md)
 - [Aggregations](docs//Aggregations.md)
 - [Apiv3activitiesidComment](docs//Apiv3activitiesidComment.md)
 - [Apiv3customActionscustomActionIdexecuteLinks](docs//Apiv3customActionscustomActionIdexecuteLinks.md)
 - [Apiv3customActionscustomActionIdexecuteLinksWorkPackage](docs//Apiv3customActionscustomActionIdexecuteLinksWorkPackage.md)
 - [Attachment](docs//Attachment.md)
 - [AttachmentModel](docs//AttachmentModel.md)
 - [Attachments by work package](docs//Attachments by work package.md)
 - [Attachments by work packageModel](docs//Attachments by work packageModel.md)
 - [Available Assignees](docs//Available Assignees.md)
 - [Available AssigneesModel](docs//Available AssigneesModel.md)
 - [Available Projects](docs//Available Projects.md)
 - [Available ProjectsModel](docs//Available ProjectsModel.md)
 - [Available Responsibles](docs//Available Responsibles.md)
 - [Available ResponsiblesModel](docs//Available ResponsiblesModel.md)
 - [Available Watchers](docs//Available Watchers.md)
 - [Available WatchersModel](docs//Available WatchersModel.md)
 - [Available relation candidates](docs//Available relation candidates.md)
 - [Available relation candidatesModel](docs//Available relation candidatesModel.md)
 - [Body](docs//Body.md)
 - [Body1](docs//Body1.md)
 - [Body2](docs//Body2.md)
 - [Body3](docs//Body3.md)
 - [Body4](docs//Body4.md)
 - [Body5](docs//Body5.md)
 - [Body6](docs//Body6.md)
 - [Body7](docs//Body7.md)
 - [Body8](docs//Body8.md)
 - [Categories by Project](docs//Categories by Project.md)
 - [Categories by ProjectModel](docs//Categories by ProjectModel.md)
 - [Category](docs//Category.md)
 - [CategoryModel](docs//CategoryModel.md)
 - [Configuration](docs//Configuration.md)
 - [ConfigurationModel](docs//ConfigurationModel.md)
 - [Cursor based pagination](docs//Cursor based pagination.md)
 - [Custom Action](docs//Custom Action.md)
 - [Custom ActionModel](docs//Custom ActionModel.md)
 - [Custom Object](docs//Custom Object.md)
 - [Custom ObjectModel](docs//Custom ObjectModel.md)
 - [Default Query](docs//Default Query.md)
 - [Default Query for Project](docs//Default Query for Project.md)
 - [Default Query for ProjectModel](docs//Default Query for ProjectModel.md)
 - [Default QueryModel](docs//Default QueryModel.md)
 - [Description](docs//Description.md)
 - [Example Form](docs//Example Form.md)
 - [Example FormModel](docs//Example FormModel.md)
 - [Example Schema](docs//Example Schema.md)
 - [Example SchemaModel](docs//Example SchemaModel.md)
 - [Execute custom action](docs//Execute custom action.md)
 - [Help text](docs//Help text.md)
 - [Help textModel](docs//Help textModel.md)
 - [Help texts](docs//Help texts.md)
 - [Help textsModel](docs//Help textsModel.md)
 - [Link](docs//Link.md)
 - [Offset based pagination](docs//Offset based pagination.md)
 - [Plain Text](docs//Plain Text.md)
 - [Plain TextModel](docs//Plain TextModel.md)
 - [Principals](docs//Principals.md)
 - [PrincipalsModel](docs//PrincipalsModel.md)
 - [Priorities](docs//Priorities.md)
 - [PrioritiesModel](docs//PrioritiesModel.md)
 - [Priority](docs//Priority.md)
 - [PriorityModel](docs//PriorityModel.md)
 - [Project](docs//Project.md)
 - [ProjectModel](docs//ProjectModel.md)
 - [Projects](docs//Projects.md)
 - [Projects by version](docs//Projects by version.md)
 - [Projects by versionModel](docs//Projects by versionModel.md)
 - [ProjectsEmbedded](docs//ProjectsEmbedded.md)
 - [ProjectsModel](docs//ProjectsModel.md)
 - [Queries](docs//Queries.md)
 - [QueriesModel](docs//QueriesModel.md)
 - [Query](docs//Query.md)
 - [Query Available Projects](docs//Query Available Projects.md)
 - [Query Available ProjectsModel](docs//Query Available ProjectsModel.md)
 - [Query Column](docs//Query Column.md)
 - [Query ColumnModel](docs//Query ColumnModel.md)
 - [Query Create Form](docs//Query Create Form.md)
 - [Query Filter](docs//Query Filter.md)
 - [Query Filter Instance Schema](docs//Query Filter Instance Schema.md)
 - [Query Filter Instance SchemaModel](docs//Query Filter Instance SchemaModel.md)
 - [Query Filter Instance Schemas](docs//Query Filter Instance Schemas.md)
 - [Query Filter Instance Schemas For Project](docs//Query Filter Instance Schemas For Project.md)
 - [Query Filter Instance Schemas For ProjectModel](docs//Query Filter Instance Schemas For ProjectModel.md)
 - [Query Filter Instance SchemasModel](docs//Query Filter Instance SchemasModel.md)
 - [Query FilterModel](docs//Query FilterModel.md)
 - [Query Operator](docs//Query Operator.md)
 - [Query OperatorModel](docs//Query OperatorModel.md)
 - [Query Sort By](docs//Query Sort By.md)
 - [Query Sort ByModel](docs//Query Sort ByModel.md)
 - [QueryModel](docs//QueryModel.md)
 - [Relation](docs//Relation.md)
 - [Relation edit form](docs//Relation edit form.md)
 - [Relation edit formModel](docs//Relation edit formModel.md)
 - [Relation schema](docs//Relation schema.md)
 - [Relation schema for type](docs//Relation schema for type.md)
 - [Relation schemaModel](docs//Relation schemaModel.md)
 - [RelationModel](docs//RelationModel.md)
 - [Relations](docs//Relations.md)
 - [RelationsModel](docs//RelationsModel.md)
 - [Remove Watcher](docs//Remove Watcher.md)
 - [Revision](docs//Revision.md)
 - [RevisionModel](docs//RevisionModel.md)
 - [Revisions](docs//Revisions.md)
 - [RevisionsModel](docs//RevisionsModel.md)
 - [Role](docs//Role.md)
 - [RoleModel](docs//RoleModel.md)
 - [Roles](docs//Roles.md)
 - [RolesModel](docs//RolesModel.md)
 - [Root](docs//Root.md)
 - [RootModel](docs//RootModel.md)
 - [Schema For Global Queries](docs//Schema For Global Queries.md)
 - [Schema For Global QueriesModel](docs//Schema For Global QueriesModel.md)
 - [Schema For Project Queries](docs//Schema For Project Queries.md)
 - [Schema For Project QueriesModel](docs//Schema For Project QueriesModel.md)
 - [Star Query](docs//Star Query.md)
 - [Star QueryModel](docs//Star QueryModel.md)
 - [Status](docs//Status.md)
 - [StatusModel](docs//StatusModel.md)
 - [Statuses](docs//Statuses.md)
 - [StatusesModel](docs//StatusesModel.md)
 - [String Object](docs//String Object.md)
 - [String ObjectModel](docs//String ObjectModel.md)
 - [Textile](docs//Textile.md)
 - [TextileModel](docs//TextileModel.md)
 - [Time entries](docs//Time entries.md)
 - [Time entries Links](docs//Time entries Links.md)
 - [Time entries activity](docs//Time entries activity.md)
 - [Time entries activityModel](docs//Time entries activityModel.md)
 - [Time entriesModel](docs//Time entriesModel.md)
 - [Time entry](docs//Time entry.md)
 - [Time entry Links](docs//Time entry Links.md)
 - [Time entryModel](docs//Time entryModel.md)
 - [TimeEntriesEmbedded](docs//TimeEntriesEmbedded.md)
 - [TimeEntryEmbedded](docs//TimeEntryEmbedded.md)
 - [TypeModel](docs//TypeModel.md)
 - [Types by Project](docs//Types by Project.md)
 - [Types by ProjectModel](docs//Types by ProjectModel.md)
 - [TypesModel](docs//TypesModel.md)
 - [Unstar Query](docs//Unstar Query.md)
 - [Unstar QueryModel](docs//Unstar QueryModel.md)
 - [User](docs//User.md)
 - [User Account Locking](docs//User Account Locking.md)
 - [UserModel](docs//UserModel.md)
 - [UserPreferences](docs//UserPreferences.md)
 - [UserPreferencesModel](docs//UserPreferencesModel.md)
 - [Users](docs//Users.md)
 - [Users embedded](docs//Users embedded.md)
 - [UsersModel](docs//UsersModel.md)
 - [Version](docs//Version.md)
 - [Version Links](docs//Version Links.md)
 - [VersionModel](docs//VersionModel.md)
 - [Versions](docs//Versions.md)
 - [Versions by Project](docs//Versions by Project.md)
 - [Versions by ProjectModel](docs//Versions by ProjectModel.md)
 - [Versions embedded](docs//Versions embedded.md)
 - [VersionsModel](docs//VersionsModel.md)
 - [WPType](docs//WPType.md)
 - [WPType Links](docs//WPType Links.md)
 - [WPTypes](docs//WPTypes.md)
 - [WPTypesEmbedded](docs//WPTypesEmbedded.md)
 - [Watchers](docs//Watchers.md)
 - [WatchersModel](docs//WatchersModel.md)
 - [Work Package](docs//Work Package.md)
 - [Work Package Create Form](docs//Work Package Create Form.md)
 - [Work Package Edit Form](docs//Work Package Edit Form.md)
 - [Work Package Embedded](docs//Work Package Embedded.md)
 - [Work Package Links](docs//Work Package Links.md)
 - [Work Package Patch](docs//Work Package Patch.md)
 - [Work Package Relation Form](docs//Work Package Relation Form.md)
 - [Work Package Relation FormModel](docs//Work Package Relation FormModel.md)
 - [Work Package Schema](docs//Work Package Schema.md)
 - [Work Package Schemas](docs//Work Package Schemas.md)
 - [Work Package SchemasModel](docs//Work Package SchemasModel.md)
 - [Work Package activities](docs//Work Package activities.md)
 - [Work Package activitiesModel](docs//Work Package activitiesModel.md)
 - [Work PackageModel](docs//Work PackageModel.md)
 - [Work Packages](docs//Work Packages.md)
 - [Work Packages by Project](docs//Work Packages by Project.md)
 - [Work Packages by ProjectModel](docs//Work Packages by ProjectModel.md)
 - [Work Packages embedded](docs//Work Packages embedded.md)
 - [Work PackagesModel](docs//Work PackagesModel.md)


## Documentation For Authorization


## basicAuth

- **Type**: HTTP basic authentication


## Author




