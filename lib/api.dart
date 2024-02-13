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

import 'package:collection/collection.dart';
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

part 'api/actions_capabilities_api.dart';
part 'api/activities_api.dart';
part 'api/attachments_api.dart';
part 'api/budgets_api.dart';
part 'api/categories_api.dart';
part 'api/collections_api.dart';
part 'api/configuration_api.dart';
part 'api/custom_actions_api.dart';
part 'api/custom_options_api.dart';
part 'api/documents_api.dart';
part 'api/file_links_api.dart';
part 'api/forms_api.dart';
part 'api/grids_api.dart';
part 'api/groups_api.dart';
part 'api/help_texts_api.dart';
part 'api/memberships_api.dart';
part 'api/news_api.dart';
part 'api/notifications_api.dart';
part 'api/o_auth2_api.dart';
part 'api/posts_api.dart';
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
part 'api/time_entries_api.dart';
part 'api/time_entry_activities_api.dart';
part 'api/types_api.dart';
part 'api/user_preferences_api.dart';
part 'api/users_api.dart';
part 'api/values_property_api.dart';
part 'api/versions_api.dart';
part 'api/views_api.dart';
part 'api/wiki_pages_api.dart';
part 'api/work_packages_api.dart';
part 'api/work_schedule_api.dart';

part 'model/activity_model.dart';
part 'model/activity_model_comment.dart';
part 'model/add_watcher_request.dart';
part 'model/attachment_model.dart';
part 'model/attachment_model_description.dart';
part 'model/attachment_model_links.dart';
part 'model/attachment_model_links_author.dart';
part 'model/attachment_model_links_container.dart';
part 'model/attachment_model_links_delete.dart';
part 'model/attachment_model_links_download_location.dart';
part 'model/attachment_model_links_self.dart';
part 'model/attachments_model.dart';
part 'model/attachments_model_all_of_embedded.dart';
part 'model/attachments_model_all_of_embedded_elements.dart';
part 'model/attachments_model_all_of_links.dart';
part 'model/attachments_model_all_of_links_self.dart';
part 'model/budget_model.dart';
part 'model/budget_model_links.dart';
part 'model/budget_model_links_self.dart';
part 'model/category_model.dart';
part 'model/category_model_links.dart';
part 'model/category_model_links_default_assignee.dart';
part 'model/category_model_links_project.dart';
part 'model/category_model_links_self.dart';
part 'model/collection_model.dart';
part 'model/collection_model_links.dart';
part 'model/collection_model_links_self.dart';
part 'model/comment_work_package_request.dart';
part 'model/configuration_model.dart';
part 'model/create_views_request.dart';
part 'model/create_views_request_links.dart';
part 'model/create_views_request_links_query.dart';
part 'model/custom_action_model.dart';
part 'model/custom_action_model_links.dart';
part 'model/custom_action_model_links_execute_immediately.dart';
part 'model/custom_action_model_links_self.dart';
part 'model/custom_option_model.dart';
part 'model/custom_option_model_links.dart';
part 'model/custom_option_model_links_self.dart';
part 'model/day_collection_model.dart';
part 'model/day_collection_model_all_of_embedded.dart';
part 'model/day_collection_model_all_of_links.dart';
part 'model/day_collection_model_all_of_links_self.dart';
part 'model/day_model.dart';
part 'model/day_model_links.dart';
part 'model/day_model_links_week_day.dart';
part 'model/document_model.dart';
part 'model/document_model_links.dart';
part 'model/document_model_links_attachments.dart';
part 'model/document_model_links_project.dart';
part 'model/document_model_links_self.dart';
part 'model/error_response.dart';
part 'model/error_response_embedded.dart';
part 'model/error_response_embedded_details.dart';
part 'model/execute_custom_action_request.dart';
part 'model/execute_custom_action_request_links.dart';
part 'model/execute_custom_action_request_links_work_package.dart';
part 'model/file_link_collection_read_model.dart';
part 'model/file_link_collection_read_model_all_of_embedded.dart';
part 'model/file_link_collection_read_model_all_of_links.dart';
part 'model/file_link_collection_read_model_all_of_links_self.dart';
part 'model/file_link_collection_write_model.dart';
part 'model/file_link_collection_write_model_all_of_embedded.dart';
part 'model/file_link_origin_data_model.dart';
part 'model/file_link_read_model.dart';
part 'model/file_link_read_model_embedded.dart';
part 'model/file_link_read_model_links.dart';
part 'model/file_link_read_model_links_container.dart';
part 'model/file_link_read_model_links_creator.dart';
part 'model/file_link_read_model_links_delete.dart';
part 'model/file_link_read_model_links_origin_open.dart';
part 'model/file_link_read_model_links_origin_open_location.dart';
part 'model/file_link_read_model_links_self.dart';
part 'model/file_link_read_model_links_static_origin_download.dart';
part 'model/file_link_read_model_links_static_origin_open.dart';
part 'model/file_link_read_model_links_static_origin_open_location.dart';
part 'model/file_link_read_model_links_status.dart';
part 'model/file_link_read_model_links_storage.dart';
part 'model/file_link_write_model.dart';
part 'model/file_link_write_model_links.dart';
part 'model/file_link_write_model_links_one_of.dart';
part 'model/file_link_write_model_links_one_of1.dart';
part 'model/file_link_write_model_links_one_of1_storage_url.dart';
part 'model/formattable.dart';
part 'model/grid_collection_model.dart';
part 'model/grid_collection_model_all_of_embedded.dart';
part 'model/grid_read_model.dart';
part 'model/grid_read_model_links.dart';
part 'model/grid_read_model_links_add_attachment.dart';
part 'model/grid_read_model_links_attachments.dart';
part 'model/grid_read_model_links_delete.dart';
part 'model/grid_read_model_links_scope.dart';
part 'model/grid_read_model_links_self.dart';
part 'model/grid_read_model_links_update.dart';
part 'model/grid_read_model_links_update_immediately.dart';
part 'model/grid_widget_model.dart';
part 'model/grid_write_model.dart';
part 'model/grid_write_model_links.dart';
part 'model/group_collection_model.dart';
part 'model/group_collection_model_all_of_embedded.dart';
part 'model/group_collection_model_all_of_links.dart';
part 'model/group_collection_model_all_of_links_self.dart';
part 'model/group_model.dart';
part 'model/group_model_links.dart';
part 'model/group_model_links_delete.dart';
part 'model/group_model_links_members_inner.dart';
part 'model/group_model_links_memberships.dart';
part 'model/group_model_links_self.dart';
part 'model/group_model_links_update_immediately.dart';
part 'model/group_write_model.dart';
part 'model/group_write_model_links.dart';
part 'model/group_write_model_links_members_inner.dart';
part 'model/help_text_collection_model.dart';
part 'model/help_text_collection_model_all_of_embedded.dart';
part 'model/help_text_collection_model_all_of_links.dart';
part 'model/help_text_collection_model_all_of_links_self.dart';
part 'model/help_text_model.dart';
part 'model/help_text_model_links.dart';
part 'model/help_text_model_links_add_attachment.dart';
part 'model/help_text_model_links_attachments.dart';
part 'model/help_text_model_links_edit_text.dart';
part 'model/help_text_model_links_self.dart';
part 'model/link.dart';
part 'model/membership_collection_model.dart';
part 'model/membership_collection_model_all_of_embedded.dart';
part 'model/membership_form_model.dart';
part 'model/membership_form_model_embedded.dart';
part 'model/membership_form_model_embedded_validation_error.dart';
part 'model/membership_form_model_links.dart';
part 'model/membership_form_model_links_commit.dart';
part 'model/membership_form_model_links_self.dart';
part 'model/membership_form_model_links_validate_inner.dart';
part 'model/membership_read_model.dart';
part 'model/membership_read_model_embedded.dart';
part 'model/membership_read_model_embedded_principal.dart';
part 'model/membership_read_model_links.dart';
part 'model/membership_read_model_links_principal.dart';
part 'model/membership_read_model_links_project.dart';
part 'model/membership_read_model_links_roles_inner.dart';
part 'model/membership_read_model_links_schema.dart';
part 'model/membership_read_model_links_self.dart';
part 'model/membership_read_model_links_update.dart';
part 'model/membership_read_model_links_update_immediately.dart';
part 'model/membership_schema_model.dart';
part 'model/membership_write_model.dart';
part 'model/membership_write_model_links.dart';
part 'model/membership_write_model_links_principal.dart';
part 'model/membership_write_model_links_project.dart';
part 'model/membership_write_model_meta.dart';
part 'model/membership_write_model_meta_notification_message.dart';
part 'model/news_model.dart';
part 'model/news_model_links.dart';
part 'model/news_model_links_author.dart';
part 'model/news_model_links_project.dart';
part 'model/news_model_links_self.dart';
part 'model/non_working_day_collection_model.dart';
part 'model/non_working_day_collection_model_all_of_embedded.dart';
part 'model/non_working_day_collection_model_all_of_links.dart';
part 'model/non_working_day_collection_model_all_of_links_self.dart';
part 'model/non_working_day_model.dart';
part 'model/non_working_day_model_links.dart';
part 'model/non_working_day_model_links_self.dart';
part 'model/notification_collection_model.dart';
part 'model/notification_collection_model_all_of_embedded.dart';
part 'model/notification_collection_model_all_of_links.dart';
part 'model/notification_collection_model_all_of_links_change_size.dart';
part 'model/notification_collection_model_all_of_links_jump_to.dart';
part 'model/notification_collection_model_all_of_links_self.dart';
part 'model/notification_model.dart';
part 'model/notification_model_details_inner.dart';
part 'model/notification_model_embedded.dart';
part 'model/notification_model_embedded_resource.dart';
part 'model/notification_model_links.dart';
part 'model/notification_model_links_activity.dart';
part 'model/notification_model_links_actor.dart';
part 'model/notification_model_links_details_inner.dart';
part 'model/notification_model_links_project.dart';
part 'model/notification_model_links_read_ian.dart';
part 'model/notification_model_links_resource.dart';
part 'model/notification_model_links_self.dart';
part 'model/notification_model_links_unread_ian.dart';
part 'model/oauth_application_read_model.dart';
part 'model/oauth_application_read_model_links.dart';
part 'model/oauth_application_read_model_links_integration.dart';
part 'model/oauth_application_read_model_links_owner.dart';
part 'model/oauth_application_read_model_links_redirect_uri.dart';
part 'model/oauth_application_read_model_links_self.dart';
part 'model/oauth_client_credentials_read_model.dart';
part 'model/oauth_client_credentials_read_model_links.dart';
part 'model/oauth_client_credentials_read_model_links_integration.dart';
part 'model/oauth_client_credentials_read_model_links_self.dart';
part 'model/oauth_client_credentials_write_model.dart';
part 'model/paginated_collection_model.dart';
part 'model/paginated_collection_model_all_of_links.dart';
part 'model/paginated_collection_model_all_of_links_change_size.dart';
part 'model/paginated_collection_model_all_of_links_jump_to.dart';
part 'model/post_model.dart';
part 'model/post_model_links.dart';
part 'model/post_model_links_add_attachment.dart';
part 'model/priority_model.dart';
part 'model/priority_model_links.dart';
part 'model/priority_model_links_self.dart';
part 'model/project_collection_model.dart';
part 'model/project_collection_model_all_of_embedded.dart';
part 'model/project_collection_model_all_of_links.dart';
part 'model/project_collection_model_all_of_links_representations.dart';
part 'model/project_collection_model_all_of_links_self.dart';
part 'model/project_model.dart';
part 'model/project_model_links.dart';
part 'model/project_model_links_ancestors_inner.dart';
part 'model/project_model_links_categories.dart';
part 'model/project_model_links_create_work_package.dart';
part 'model/project_model_links_create_work_package_immediately.dart';
part 'model/project_model_links_delete.dart';
part 'model/project_model_links_memberships.dart';
part 'model/project_model_links_parent.dart';
part 'model/project_model_links_project_storages.dart';
part 'model/project_model_links_self.dart';
part 'model/project_model_links_status.dart';
part 'model/project_model_links_storages_inner.dart';
part 'model/project_model_links_types.dart';
part 'model/project_model_links_update.dart';
part 'model/project_model_links_update_immediately.dart';
part 'model/project_model_links_versions.dart';
part 'model/project_model_links_work_packages.dart';
part 'model/project_model_status_explanation.dart';
part 'model/project_storage_collection_model.dart';
part 'model/project_storage_collection_model_all_of_embedded.dart';
part 'model/project_storage_collection_model_all_of_links.dart';
part 'model/project_storage_collection_model_all_of_links_self.dart';
part 'model/project_storage_model.dart';
part 'model/project_storage_model_links.dart';
part 'model/project_storage_model_links_creator.dart';
part 'model/project_storage_model_links_open.dart';
part 'model/project_storage_model_links_open_with_connection_ensured.dart';
part 'model/project_storage_model_links_project.dart';
part 'model/project_storage_model_links_project_folder.dart';
part 'model/project_storage_model_links_self.dart';
part 'model/project_storage_model_links_storage.dart';
part 'model/query_column_model.dart';
part 'model/query_create_form.dart';
part 'model/query_filter_instance_schema_model.dart';
part 'model/query_filter_instance_schema_model_links.dart';
part 'model/query_filter_instance_schema_model_links_filter.dart';
part 'model/query_filter_instance_schema_model_links_self.dart';
part 'model/query_filter_model.dart';
part 'model/query_model.dart';
part 'model/query_model_links.dart';
part 'model/query_model_links_star.dart';
part 'model/query_model_links_unstar.dart';
part 'model/query_model_links_update.dart';
part 'model/query_model_links_update_immediately.dart';
part 'model/query_operator_model.dart';
part 'model/query_sort_by_model.dart';
part 'model/query_update_form.dart';
part 'model/relation_model.dart';
part 'model/relation_model_links.dart';
part 'model/relation_model_links_delete.dart';
part 'model/relation_model_links_from.dart';
part 'model/relation_model_links_schema.dart';
part 'model/relation_model_links_self.dart';
part 'model/relation_model_links_to.dart';
part 'model/relation_model_links_update.dart';
part 'model/relation_model_links_update_immediately.dart';
part 'model/revision_model.dart';
part 'model/revision_model_links.dart';
part 'model/revision_model_links_author.dart';
part 'model/revision_model_links_project.dart';
part 'model/revision_model_links_self.dart';
part 'model/revision_model_links_show_revision.dart';
part 'model/revision_model_message.dart';
part 'model/role_model.dart';
part 'model/role_model_links.dart';
part 'model/role_model_links_self.dart';
part 'model/root_model.dart';
part 'model/root_model_links.dart';
part 'model/root_model_links_configuration.dart';
part 'model/root_model_links_memberships.dart';
part 'model/root_model_links_priorities.dart';
part 'model/root_model_links_relations.dart';
part 'model/root_model_links_self.dart';
part 'model/root_model_links_statuses.dart';
part 'model/root_model_links_time_entries.dart';
part 'model/root_model_links_types.dart';
part 'model/root_model_links_user.dart';
part 'model/root_model_links_user_preferences.dart';
part 'model/root_model_links_work_packages.dart';
part 'model/schema_model.dart';
part 'model/schema_model_links.dart';
part 'model/schema_model_links_self.dart';
part 'model/schema_property_model.dart';
part 'model/show_or_validate_form_request.dart';
part 'model/status_collection_model.dart';
part 'model/status_collection_model_all_of_embedded.dart';
part 'model/status_collection_model_all_of_links.dart';
part 'model/status_collection_model_all_of_links_self.dart';
part 'model/status_model.dart';
part 'model/status_model_links.dart';
part 'model/status_model_links_self.dart';
part 'model/storage_collection_model.dart';
part 'model/storage_collection_model_all_of_embedded.dart';
part 'model/storage_collection_model_all_of_links.dart';
part 'model/storage_collection_model_all_of_links_self.dart';
part 'model/storage_file_model.dart';
part 'model/storage_file_model_all_of_links.dart';
part 'model/storage_file_model_all_of_links_self.dart';
part 'model/storage_file_upload_link_model.dart';
part 'model/storage_file_upload_link_model_links.dart';
part 'model/storage_file_upload_link_model_links_destination.dart';
part 'model/storage_file_upload_link_model_links_self.dart';
part 'model/storage_file_upload_preparation_model.dart';
part 'model/storage_files_model.dart';
part 'model/storage_files_model_parent.dart';
part 'model/storage_read_model.dart';
part 'model/storage_read_model_embedded.dart';
part 'model/storage_read_model_links.dart';
part 'model/storage_read_model_links_authorization_state.dart';
part 'model/storage_read_model_links_authorize.dart';
part 'model/storage_read_model_links_oauth_application.dart';
part 'model/storage_read_model_links_oauth_client_credentials.dart';
part 'model/storage_read_model_links_open.dart';
part 'model/storage_read_model_links_origin.dart';
part 'model/storage_read_model_links_self.dart';
part 'model/storage_read_model_links_type.dart';
part 'model/storage_write_model.dart';
part 'model/storage_write_model_links.dart';
part 'model/storage_write_model_links_origin.dart';
part 'model/storage_write_model_links_type.dart';
part 'model/time_entry_activity_model.dart';
part 'model/time_entry_activity_model_embedded.dart';
part 'model/time_entry_activity_model_links.dart';
part 'model/time_entry_activity_model_links_projects_inner.dart';
part 'model/time_entry_activity_model_links_self.dart';
part 'model/time_entry_collection_model.dart';
part 'model/time_entry_collection_model_all_of_embedded.dart';
part 'model/time_entry_collection_model_all_of_links.dart';
part 'model/time_entry_collection_model_all_of_links_self.dart';
part 'model/time_entry_model.dart';
part 'model/time_entry_model_comment.dart';
part 'model/time_entry_model_links.dart';
part 'model/time_entry_model_links_activity.dart';
part 'model/time_entry_model_links_delete.dart';
part 'model/time_entry_model_links_project.dart';
part 'model/time_entry_model_links_schema.dart';
part 'model/time_entry_model_links_self.dart';
part 'model/time_entry_model_links_update.dart';
part 'model/time_entry_model_links_update_immediately.dart';
part 'model/time_entry_model_links_user.dart';
part 'model/time_entry_model_links_work_package.dart';
part 'model/type_model.dart';
part 'model/type_model_links.dart';
part 'model/type_model_links_self.dart';
part 'model/update_activity_request.dart';
part 'model/update_activity_request_comment.dart';
part 'model/update_user_preferences_request.dart';
part 'model/user_collection_model.dart';
part 'model/user_collection_model_all_of_embedded.dart';
part 'model/user_collection_model_all_of_links.dart';
part 'model/user_collection_model_all_of_links_self.dart';
part 'model/user_create_model.dart';
part 'model/user_model.dart';
part 'model/user_model_links.dart';
part 'model/user_model_links_delete.dart';
part 'model/user_model_links_lock.dart';
part 'model/user_model_links_memberships.dart';
part 'model/user_model_links_self.dart';
part 'model/user_model_links_show_user.dart';
part 'model/user_model_links_unlock.dart';
part 'model/user_model_links_update_immediately.dart';
part 'model/values_property_model.dart';
part 'model/values_property_model_links.dart';
part 'model/values_property_model_links_schema.dart';
part 'model/values_property_model_links_self.dart';
part 'model/version_model.dart';
part 'model/version_model_links.dart';
part 'model/version_model_links_available_in_projects.dart';
part 'model/version_model_links_defining_project.dart';
part 'model/version_model_links_self.dart';
part 'model/version_model_links_update.dart';
part 'model/version_model_links_update_immediately.dart';
part 'model/watchers_model.dart';
part 'model/watchers_model_all_of_embedded.dart';
part 'model/watchers_model_all_of_embedded_elements.dart';
part 'model/watchers_model_all_of_links.dart';
part 'model/watchers_model_all_of_links_self.dart';
part 'model/week_day_collection_model.dart';
part 'model/week_day_collection_model_all_of_embedded.dart';
part 'model/week_day_collection_model_all_of_links.dart';
part 'model/week_day_collection_model_all_of_links_self.dart';
part 'model/week_day_collection_write_model.dart';
part 'model/week_day_collection_write_model_embedded.dart';
part 'model/week_day_collection_write_model_embedded_elements_inner.dart';
part 'model/week_day_model.dart';
part 'model/week_day_self_link_model.dart';
part 'model/week_day_self_link_model_self.dart';
part 'model/week_day_write_model.dart';
part 'model/wiki_page_model.dart';
part 'model/wiki_page_model_links.dart';
part 'model/wiki_page_model_links_add_attachment.dart';
part 'model/work_package_model.dart';
part 'model/work_package_model_description.dart';
part 'model/work_package_model_links.dart';
part 'model/work_package_model_links_add_attachment.dart';
part 'model/work_package_model_links_add_comment.dart';
part 'model/work_package_model_links_add_file_link.dart';
part 'model/work_package_model_links_add_relation.dart';
part 'model/work_package_model_links_add_watcher.dart';
part 'model/work_package_model_links_ancestors_inner.dart';
part 'model/work_package_model_links_assignee.dart';
part 'model/work_package_model_links_attachments.dart';
part 'model/work_package_model_links_author.dart';
part 'model/work_package_model_links_available_watchers.dart';
part 'model/work_package_model_links_budget.dart';
part 'model/work_package_model_links_category.dart';
part 'model/work_package_model_links_children_inner.dart';
part 'model/work_package_model_links_custom_actions_inner.dart';
part 'model/work_package_model_links_file_links.dart';
part 'model/work_package_model_links_parent.dart';
part 'model/work_package_model_links_preview_markup.dart';
part 'model/work_package_model_links_priority.dart';
part 'model/work_package_model_links_project.dart';
part 'model/work_package_model_links_relations.dart';
part 'model/work_package_model_links_remove_watcher.dart';
part 'model/work_package_model_links_responsible.dart';
part 'model/work_package_model_links_revisions.dart';
part 'model/work_package_model_links_schema.dart';
part 'model/work_package_model_links_self.dart';
part 'model/work_package_model_links_status.dart';
part 'model/work_package_model_links_time_entries.dart';
part 'model/work_package_model_links_type.dart';
part 'model/work_package_model_links_unwatch.dart';
part 'model/work_package_model_links_update.dart';
part 'model/work_package_model_links_update_immediately.dart';
part 'model/work_package_model_links_version.dart';
part 'model/work_package_model_links_watch.dart';
part 'model/work_package_model_links_watchers.dart';
part 'model/work_package_patch_model.dart';
part 'model/work_package_patch_model_links.dart';
part 'model/work_packages_model.dart';
part 'model/work_packages_model_all_of_embedded.dart';
part 'model/work_packages_model_all_of_links.dart';
part 'model/work_packages_model_all_of_links_self.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
