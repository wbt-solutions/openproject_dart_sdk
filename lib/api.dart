//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openproject_dart_sdk.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/activities_api.dart';
part 'api/attachments_api.dart';
part 'api/budgets_api.dart';
part 'api/categories_api.dart';
part 'api/collections_api.dart';
part 'api/configuration_api.dart';
part 'api/custom_actions_api.dart';
part 'api/custom_objects_api.dart';
part 'api/forms_api.dart';
part 'api/help_texts_api.dart';
part 'api/news_api.dart';
part 'api/previewing_api.dart';
part 'api/principals_api.dart';
part 'api/priorities_api.dart';
part 'api/projects_api.dart';
part 'api/queries_api.dart';
part 'api/query_columns_api.dart';
part 'api/query_filter_instance_schema_api.dart';
part 'api/query_filters_api.dart';
part 'api/query_operators_api.dart';
part 'api/query_sort_bys_api.dart';
part 'api/relations_api.dart';
part 'api/revisions_api.dart';
part 'api/roles_api.dart';
part 'api/root_api.dart';
part 'api/schemas_api.dart';
part 'api/statuses_api.dart';
part 'api/string_objects_api.dart';
part 'api/time_entries_api.dart';
part 'api/time_entry_activities_api.dart';
part 'api/types_api.dart';
part 'api/user_preferences_api.dart';
part 'api/users_api.dart';
part 'api/versions_api.dart';
part 'api/work_packages_api.dart';

part 'model/activity.dart';
part 'model/activity_links.dart';
part 'model/api_v3_custom_actions_custom_action_id_execute_links.dart';
part 'model/api_v3_custom_actions_custom_action_id_execute_links_work_package.dart';
part 'model/attachment.dart';
part 'model/budget.dart';
part 'model/budget_links.dart';
part 'model/categories.dart';
part 'model/categories_embedded.dart';
part 'model/category.dart';
part 'model/category_links.dart';
part 'model/comment.dart';
part 'model/configuration.dart';
part 'model/description.dart';
part 'model/digest.dart';
part 'model/filter.dart';
part 'model/inline_object.dart';
part 'model/inline_object1.dart';
part 'model/inline_object2.dart';
part 'model/inline_object3.dart';
part 'model/inline_object4.dart';
part 'model/inline_object5.dart';
part 'model/inline_object6.dart';
part 'model/link.dart';
part 'model/news.dart';
part 'model/news_embedded.dart';
part 'model/news_links.dart';
part 'model/news_list.dart';
part 'model/news_list_embedded.dart';
part 'model/news_list_links.dart';
part 'model/priorities.dart';
part 'model/priorities_embedded.dart';
part 'model/priorities_links.dart';
part 'model/priority.dart';
part 'model/priority_links.dart';
part 'model/project.dart';
part 'model/project_links.dart';
part 'model/projects.dart';
part 'model/projects_embedded.dart';
part 'model/projects_links.dart';
part 'model/root.dart';
part 'model/root_links.dart';
part 'model/status.dart';
part 'model/status_links.dart';
part 'model/statuses.dart';
part 'model/statuses_embedded.dart';
part 'model/statuses_links.dart';
part 'model/time_entries.dart';
part 'model/time_entries_activity.dart';
part 'model/time_entries_activity_embedded.dart';
part 'model/time_entries_activity_links.dart';
part 'model/time_entries_embedded.dart';
part 'model/time_entries_links.dart';
part 'model/time_entry.dart';
part 'model/time_entry_embedded.dart';
part 'model/time_entry_links.dart';
part 'model/user.dart';
part 'model/user_links.dart';
part 'model/user_preferences.dart';
part 'model/user_preferences_links.dart';
part 'model/users.dart';
part 'model/users_embedded.dart';
part 'model/version.dart';
part 'model/version_links.dart';
part 'model/versions.dart';
part 'model/versions_embedded.dart';
part 'model/wp_type.dart';
part 'model/wp_type_links.dart';
part 'model/wp_types.dart';
part 'model/wp_types_embedded.dart';
part 'model/work_package.dart';
part 'model/work_package_embedded.dart';
part 'model/work_package_links.dart';
part 'model/work_package_patch.dart';
part 'model/work_packages.dart';
part 'model/work_packages_embedded.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
