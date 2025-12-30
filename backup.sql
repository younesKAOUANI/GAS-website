--
-- PostgreSQL database dump
--

\restrict hDpQaSYel9jNGy34zRHRYOtGyJLewzifkdPbN8UBhkis92w3CCatRLIE8NtaYHx

-- Dumped from database version 15.15
-- Dumped by pg_dump version 15.15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.upload_folders DROP CONSTRAINT IF EXISTS upload_folders_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.upload_folders_parent_lnk DROP CONSTRAINT IF EXISTS upload_folders_parent_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.upload_folders_parent_lnk DROP CONSTRAINT IF EXISTS upload_folders_parent_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.upload_folders DROP CONSTRAINT IF EXISTS upload_folders_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_users DROP CONSTRAINT IF EXISTS up_users_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_users_role_lnk DROP CONSTRAINT IF EXISTS up_users_role_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.up_users_role_lnk DROP CONSTRAINT IF EXISTS up_users_role_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.up_users DROP CONSTRAINT IF EXISTS up_users_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_roles DROP CONSTRAINT IF EXISTS up_roles_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_roles DROP CONSTRAINT IF EXISTS up_roles_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_permissions DROP CONSTRAINT IF EXISTS up_permissions_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_permissions_role_lnk DROP CONSTRAINT IF EXISTS up_permissions_role_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.up_permissions_role_lnk DROP CONSTRAINT IF EXISTS up_permissions_role_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.up_permissions DROP CONSTRAINT IF EXISTS up_permissions_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.testimonials DROP CONSTRAINT IF EXISTS testimonials_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.testimonials DROP CONSTRAINT IF EXISTS testimonials_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows DROP CONSTRAINT IF EXISTS strapi_workflows_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT IF EXISTS strapi_workflows_stages_workflow_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT IF EXISTS strapi_workflows_stages_workflow_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows_stages DROP CONSTRAINT IF EXISTS strapi_workflows_stages_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT IF EXISTS strapi_workflows_stages_permissions_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT IF EXISTS strapi_workflows_stages_permissions_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows_stages DROP CONSTRAINT IF EXISTS strapi_workflows_stages_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT IF EXISTS strapi_workflows_stage_required_to_publish_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT IF EXISTS strapi_workflows_stage_required_to_publish_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows DROP CONSTRAINT IF EXISTS strapi_workflows_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_tokens DROP CONSTRAINT IF EXISTS strapi_transfer_tokens_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_tokens DROP CONSTRAINT IF EXISTS strapi_transfer_tokens_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT IF EXISTS strapi_transfer_token_permissions_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT IF EXISTS strapi_transfer_token_permissions_token_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT IF EXISTS strapi_transfer_token_permissions_token_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT IF EXISTS strapi_transfer_token_permissions_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_sessions DROP CONSTRAINT IF EXISTS strapi_sessions_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_sessions DROP CONSTRAINT IF EXISTS strapi_sessions_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_releases DROP CONSTRAINT IF EXISTS strapi_releases_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_releases DROP CONSTRAINT IF EXISTS strapi_releases_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_release_actions DROP CONSTRAINT IF EXISTS strapi_release_actions_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT IF EXISTS strapi_release_actions_release_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT IF EXISTS strapi_release_actions_release_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_release_actions DROP CONSTRAINT IF EXISTS strapi_release_actions_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_history_versions DROP CONSTRAINT IF EXISTS strapi_history_versions_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_tokens DROP CONSTRAINT IF EXISTS strapi_api_tokens_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_tokens DROP CONSTRAINT IF EXISTS strapi_api_tokens_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_token_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_token_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.stories DROP CONSTRAINT IF EXISTS stories_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.stories DROP CONSTRAINT IF EXISTS stories_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.projects DROP CONSTRAINT IF EXISTS projects_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.projects DROP CONSTRAINT IF EXISTS projects_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.project_typologies DROP CONSTRAINT IF EXISTS project_typologies_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.project_typologies_project_lnk DROP CONSTRAINT IF EXISTS project_typologies_project_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.project_typologies_project_lnk DROP CONSTRAINT IF EXISTS project_typologies_project_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.project_typologies DROP CONSTRAINT IF EXISTS project_typologies_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.project_timings DROP CONSTRAINT IF EXISTS project_timings_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.project_timings_project_lnk DROP CONSTRAINT IF EXISTS project_timings_project_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.project_timings_project_lnk DROP CONSTRAINT IF EXISTS project_timings_project_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.project_timings DROP CONSTRAINT IF EXISTS project_timings_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.project_features DROP CONSTRAINT IF EXISTS project_features_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.project_features_project_lnk DROP CONSTRAINT IF EXISTS project_features_project_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.project_features_project_lnk DROP CONSTRAINT IF EXISTS project_features_project_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.project_features DROP CONSTRAINT IF EXISTS project_features_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.project_contacts DROP CONSTRAINT IF EXISTS project_contacts_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.project_contacts DROP CONSTRAINT IF EXISTS project_contacts_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.opportunity_moments DROP CONSTRAINT IF EXISTS opportunity_moments_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.opportunity_moments DROP CONSTRAINT IF EXISTS opportunity_moments_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.localities DROP CONSTRAINT IF EXISTS localities_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.localities DROP CONSTRAINT IF EXISTS localities_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.images_finitions DROP CONSTRAINT IF EXISTS images_finitions_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.images_finitions DROP CONSTRAINT IF EXISTS images_finitions_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.i18n_locale DROP CONSTRAINT IF EXISTS i18n_locale_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.i18n_locale DROP CONSTRAINT IF EXISTS i18n_locale_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.hero_medias DROP CONSTRAINT IF EXISTS hero_medias_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.hero_medias DROP CONSTRAINT IF EXISTS hero_medias_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.globals DROP CONSTRAINT IF EXISTS globals_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.globals_cmps DROP CONSTRAINT IF EXISTS globals_entity_fk;
ALTER TABLE IF EXISTS ONLY public.globals DROP CONSTRAINT IF EXISTS globals_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.files DROP CONSTRAINT IF EXISTS files_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.files_related_mph DROP CONSTRAINT IF EXISTS files_related_mph_fk;
ALTER TABLE IF EXISTS ONLY public.files_folder_lnk DROP CONSTRAINT IF EXISTS files_folder_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.files_folder_lnk DROP CONSTRAINT IF EXISTS files_folder_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.files DROP CONSTRAINT IF EXISTS files_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.faqs DROP CONSTRAINT IF EXISTS faqs_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.faqs DROP CONSTRAINT IF EXISTS faqs_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.contact_responses DROP CONSTRAINT IF EXISTS contact_responses_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.contact_responses DROP CONSTRAINT IF EXISTS contact_responses_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.chat_responses DROP CONSTRAINT IF EXISTS chat_responses_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.chat_responses DROP CONSTRAINT IF EXISTS chat_responses_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.categories DROP CONSTRAINT IF EXISTS categories_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.categories DROP CONSTRAINT IF EXISTS categories_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.authors DROP CONSTRAINT IF EXISTS authors_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.authors DROP CONSTRAINT IF EXISTS authors_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.articles DROP CONSTRAINT IF EXISTS articles_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.articles_cmps DROP CONSTRAINT IF EXISTS articles_entity_fk;
ALTER TABLE IF EXISTS ONLY public.articles DROP CONSTRAINT IF EXISTS articles_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.articles_category_lnk DROP CONSTRAINT IF EXISTS articles_category_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.articles_category_lnk DROP CONSTRAINT IF EXISTS articles_category_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.articles_author_lnk DROP CONSTRAINT IF EXISTS articles_author_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.articles_author_lnk DROP CONSTRAINT IF EXISTS articles_author_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.admin_roles DROP CONSTRAINT IF EXISTS admin_roles_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.admin_roles DROP CONSTRAINT IF EXISTS admin_roles_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.admin_permissions DROP CONSTRAINT IF EXISTS admin_permissions_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.admin_permissions_role_lnk DROP CONSTRAINT IF EXISTS admin_permissions_role_lnk_ifk;
ALTER TABLE IF EXISTS ONLY public.admin_permissions_role_lnk DROP CONSTRAINT IF EXISTS admin_permissions_role_lnk_fk;
ALTER TABLE IF EXISTS ONLY public.admin_permissions DROP CONSTRAINT IF EXISTS admin_permissions_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.abouts DROP CONSTRAINT IF EXISTS abouts_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.abouts DROP CONSTRAINT IF EXISTS abouts_created_by_id_fk;
DROP INDEX IF EXISTS public.upload_folders_updated_by_id_fk;
DROP INDEX IF EXISTS public.upload_folders_parent_lnk_oifk;
DROP INDEX IF EXISTS public.upload_folders_parent_lnk_ifk;
DROP INDEX IF EXISTS public.upload_folders_parent_lnk_fk;
DROP INDEX IF EXISTS public.upload_folders_documents_idx;
DROP INDEX IF EXISTS public.upload_folders_created_by_id_fk;
DROP INDEX IF EXISTS public.upload_files_updated_at_index;
DROP INDEX IF EXISTS public.upload_files_size_index;
DROP INDEX IF EXISTS public.upload_files_name_index;
DROP INDEX IF EXISTS public.upload_files_folder_path_index;
DROP INDEX IF EXISTS public.upload_files_ext_index;
DROP INDEX IF EXISTS public.upload_files_created_at_index;
DROP INDEX IF EXISTS public.up_users_updated_by_id_fk;
DROP INDEX IF EXISTS public.up_users_role_lnk_oifk;
DROP INDEX IF EXISTS public.up_users_role_lnk_ifk;
DROP INDEX IF EXISTS public.up_users_role_lnk_fk;
DROP INDEX IF EXISTS public.up_users_documents_idx;
DROP INDEX IF EXISTS public.up_users_created_by_id_fk;
DROP INDEX IF EXISTS public.up_roles_updated_by_id_fk;
DROP INDEX IF EXISTS public.up_roles_documents_idx;
DROP INDEX IF EXISTS public.up_roles_created_by_id_fk;
DROP INDEX IF EXISTS public.up_permissions_updated_by_id_fk;
DROP INDEX IF EXISTS public.up_permissions_role_lnk_oifk;
DROP INDEX IF EXISTS public.up_permissions_role_lnk_ifk;
DROP INDEX IF EXISTS public.up_permissions_role_lnk_fk;
DROP INDEX IF EXISTS public.up_permissions_documents_idx;
DROP INDEX IF EXISTS public.up_permissions_created_by_id_fk;
DROP INDEX IF EXISTS public.testimonials_updated_by_id_fk;
DROP INDEX IF EXISTS public.testimonials_documents_idx;
DROP INDEX IF EXISTS public.testimonials_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_workflows_updated_by_id_fk;
DROP INDEX IF EXISTS public.strapi_workflows_stages_workflow_lnk_oifk;
DROP INDEX IF EXISTS public.strapi_workflows_stages_workflow_lnk_ifk;
DROP INDEX IF EXISTS public.strapi_workflows_stages_workflow_lnk_fk;
DROP INDEX IF EXISTS public.strapi_workflows_stages_updated_by_id_fk;
DROP INDEX IF EXISTS public.strapi_workflows_stages_permissions_lnk_ofk;
DROP INDEX IF EXISTS public.strapi_workflows_stages_permissions_lnk_ifk;
DROP INDEX IF EXISTS public.strapi_workflows_stages_permissions_lnk_fk;
DROP INDEX IF EXISTS public.strapi_workflows_stages_documents_idx;
DROP INDEX IF EXISTS public.strapi_workflows_stages_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_workflows_stage_required_to_publish_lnk_ifk;
DROP INDEX IF EXISTS public.strapi_workflows_stage_required_to_publish_lnk_fk;
DROP INDEX IF EXISTS public.strapi_workflows_documents_idx;
DROP INDEX IF EXISTS public.strapi_workflows_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_transfer_tokens_updated_by_id_fk;
DROP INDEX IF EXISTS public.strapi_transfer_tokens_documents_idx;
DROP INDEX IF EXISTS public.strapi_transfer_tokens_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_transfer_token_permissions_updated_by_id_fk;
DROP INDEX IF EXISTS public.strapi_transfer_token_permissions_token_lnk_oifk;
DROP INDEX IF EXISTS public.strapi_transfer_token_permissions_token_lnk_ifk;
DROP INDEX IF EXISTS public.strapi_transfer_token_permissions_token_lnk_fk;
DROP INDEX IF EXISTS public.strapi_transfer_token_permissions_documents_idx;
DROP INDEX IF EXISTS public.strapi_transfer_token_permissions_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_sessions_updated_by_id_fk;
DROP INDEX IF EXISTS public.strapi_sessions_documents_idx;
DROP INDEX IF EXISTS public.strapi_sessions_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_releases_updated_by_id_fk;
DROP INDEX IF EXISTS public.strapi_releases_documents_idx;
DROP INDEX IF EXISTS public.strapi_releases_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_release_actions_updated_by_id_fk;
DROP INDEX IF EXISTS public.strapi_release_actions_release_lnk_oifk;
DROP INDEX IF EXISTS public.strapi_release_actions_release_lnk_ifk;
DROP INDEX IF EXISTS public.strapi_release_actions_release_lnk_fk;
DROP INDEX IF EXISTS public.strapi_release_actions_documents_idx;
DROP INDEX IF EXISTS public.strapi_release_actions_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_history_versions_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_api_tokens_updated_by_id_fk;
DROP INDEX IF EXISTS public.strapi_api_tokens_documents_idx;
DROP INDEX IF EXISTS public.strapi_api_tokens_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_api_token_permissions_updated_by_id_fk;
DROP INDEX IF EXISTS public.strapi_api_token_permissions_token_lnk_oifk;
DROP INDEX IF EXISTS public.strapi_api_token_permissions_token_lnk_ifk;
DROP INDEX IF EXISTS public.strapi_api_token_permissions_token_lnk_fk;
DROP INDEX IF EXISTS public.strapi_api_token_permissions_documents_idx;
DROP INDEX IF EXISTS public.strapi_api_token_permissions_created_by_id_fk;
DROP INDEX IF EXISTS public.stories_updated_by_id_fk;
DROP INDEX IF EXISTS public.stories_documents_idx;
DROP INDEX IF EXISTS public.stories_created_by_id_fk;
DROP INDEX IF EXISTS public.projects_updated_by_id_fk;
DROP INDEX IF EXISTS public.projects_documents_idx;
DROP INDEX IF EXISTS public.projects_created_by_id_fk;
DROP INDEX IF EXISTS public.project_typologies_updated_by_id_fk;
DROP INDEX IF EXISTS public.project_typologies_project_lnk_oifk;
DROP INDEX IF EXISTS public.project_typologies_project_lnk_ifk;
DROP INDEX IF EXISTS public.project_typologies_project_lnk_fk;
DROP INDEX IF EXISTS public.project_typologies_documents_idx;
DROP INDEX IF EXISTS public.project_typologies_created_by_id_fk;
DROP INDEX IF EXISTS public.project_timings_updated_by_id_fk;
DROP INDEX IF EXISTS public.project_timings_project_lnk_oifk;
DROP INDEX IF EXISTS public.project_timings_project_lnk_ifk;
DROP INDEX IF EXISTS public.project_timings_project_lnk_fk;
DROP INDEX IF EXISTS public.project_timings_documents_idx;
DROP INDEX IF EXISTS public.project_timings_created_by_id_fk;
DROP INDEX IF EXISTS public.project_features_updated_by_id_fk;
DROP INDEX IF EXISTS public.project_features_project_lnk_oifk;
DROP INDEX IF EXISTS public.project_features_project_lnk_ifk;
DROP INDEX IF EXISTS public.project_features_project_lnk_fk;
DROP INDEX IF EXISTS public.project_features_documents_idx;
DROP INDEX IF EXISTS public.project_features_created_by_id_fk;
DROP INDEX IF EXISTS public.project_contacts_updated_by_id_fk;
DROP INDEX IF EXISTS public.project_contacts_documents_idx;
DROP INDEX IF EXISTS public.project_contacts_created_by_id_fk;
DROP INDEX IF EXISTS public.opportunity_moments_updated_by_id_fk;
DROP INDEX IF EXISTS public.opportunity_moments_documents_idx;
DROP INDEX IF EXISTS public.opportunity_moments_created_by_id_fk;
DROP INDEX IF EXISTS public.localities_updated_by_id_fk;
DROP INDEX IF EXISTS public.localities_documents_idx;
DROP INDEX IF EXISTS public.localities_created_by_id_fk;
DROP INDEX IF EXISTS public.images_finitions_updated_by_id_fk;
DROP INDEX IF EXISTS public.images_finitions_documents_idx;
DROP INDEX IF EXISTS public.images_finitions_created_by_id_fk;
DROP INDEX IF EXISTS public.i18n_locale_updated_by_id_fk;
DROP INDEX IF EXISTS public.i18n_locale_documents_idx;
DROP INDEX IF EXISTS public.i18n_locale_created_by_id_fk;
DROP INDEX IF EXISTS public.hero_medias_updated_by_id_fk;
DROP INDEX IF EXISTS public.hero_medias_documents_idx;
DROP INDEX IF EXISTS public.hero_medias_created_by_id_fk;
DROP INDEX IF EXISTS public.globals_updated_by_id_fk;
DROP INDEX IF EXISTS public.globals_field_idx;
DROP INDEX IF EXISTS public.globals_entity_fk;
DROP INDEX IF EXISTS public.globals_documents_idx;
DROP INDEX IF EXISTS public.globals_created_by_id_fk;
DROP INDEX IF EXISTS public.globals_component_type_idx;
DROP INDEX IF EXISTS public.files_updated_by_id_fk;
DROP INDEX IF EXISTS public.files_related_mph_oidx;
DROP INDEX IF EXISTS public.files_related_mph_idix;
DROP INDEX IF EXISTS public.files_related_mph_fk;
DROP INDEX IF EXISTS public.files_folder_lnk_oifk;
DROP INDEX IF EXISTS public.files_folder_lnk_ifk;
DROP INDEX IF EXISTS public.files_folder_lnk_fk;
DROP INDEX IF EXISTS public.files_documents_idx;
DROP INDEX IF EXISTS public.files_created_by_id_fk;
DROP INDEX IF EXISTS public.faqs_updated_by_id_fk;
DROP INDEX IF EXISTS public.faqs_documents_idx;
DROP INDEX IF EXISTS public.faqs_created_by_id_fk;
DROP INDEX IF EXISTS public.contact_responses_updated_by_id_fk;
DROP INDEX IF EXISTS public.contact_responses_documents_idx;
DROP INDEX IF EXISTS public.contact_responses_created_by_id_fk;
DROP INDEX IF EXISTS public.chat_responses_updated_by_id_fk;
DROP INDEX IF EXISTS public.chat_responses_documents_idx;
DROP INDEX IF EXISTS public.chat_responses_created_by_id_fk;
DROP INDEX IF EXISTS public.categories_updated_by_id_fk;
DROP INDEX IF EXISTS public.categories_documents_idx;
DROP INDEX IF EXISTS public.categories_created_by_id_fk;
DROP INDEX IF EXISTS public.authors_updated_by_id_fk;
DROP INDEX IF EXISTS public.authors_documents_idx;
DROP INDEX IF EXISTS public.authors_created_by_id_fk;
DROP INDEX IF EXISTS public.articles_updated_by_id_fk;
DROP INDEX IF EXISTS public.articles_field_idx;
DROP INDEX IF EXISTS public.articles_entity_fk;
DROP INDEX IF EXISTS public.articles_documents_idx;
DROP INDEX IF EXISTS public.articles_created_by_id_fk;
DROP INDEX IF EXISTS public.articles_component_type_idx;
DROP INDEX IF EXISTS public.articles_category_lnk_oifk;
DROP INDEX IF EXISTS public.articles_category_lnk_ifk;
DROP INDEX IF EXISTS public.articles_category_lnk_fk;
DROP INDEX IF EXISTS public.articles_author_lnk_oifk;
DROP INDEX IF EXISTS public.articles_author_lnk_ifk;
DROP INDEX IF EXISTS public.articles_author_lnk_fk;
DROP INDEX IF EXISTS public.admin_roles_updated_by_id_fk;
DROP INDEX IF EXISTS public.admin_roles_documents_idx;
DROP INDEX IF EXISTS public.admin_roles_created_by_id_fk;
DROP INDEX IF EXISTS public.admin_permissions_updated_by_id_fk;
DROP INDEX IF EXISTS public.admin_permissions_role_lnk_oifk;
DROP INDEX IF EXISTS public.admin_permissions_role_lnk_ifk;
DROP INDEX IF EXISTS public.admin_permissions_role_lnk_fk;
DROP INDEX IF EXISTS public.admin_permissions_documents_idx;
DROP INDEX IF EXISTS public.admin_permissions_created_by_id_fk;
DROP INDEX IF EXISTS public.abouts_updated_by_id_fk;
DROP INDEX IF EXISTS public.abouts_documents_idx;
DROP INDEX IF EXISTS public.abouts_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.upload_folders DROP CONSTRAINT IF EXISTS upload_folders_pkey;
ALTER TABLE IF EXISTS ONLY public.upload_folders DROP CONSTRAINT IF EXISTS upload_folders_path_index;
ALTER TABLE IF EXISTS ONLY public.upload_folders DROP CONSTRAINT IF EXISTS upload_folders_path_id_index;
ALTER TABLE IF EXISTS ONLY public.upload_folders_parent_lnk DROP CONSTRAINT IF EXISTS upload_folders_parent_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.upload_folders_parent_lnk DROP CONSTRAINT IF EXISTS upload_folders_parent_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.up_users_role_lnk DROP CONSTRAINT IF EXISTS up_users_role_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.up_users_role_lnk DROP CONSTRAINT IF EXISTS up_users_role_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.up_users DROP CONSTRAINT IF EXISTS up_users_pkey;
ALTER TABLE IF EXISTS ONLY public.up_roles DROP CONSTRAINT IF EXISTS up_roles_pkey;
ALTER TABLE IF EXISTS ONLY public.up_permissions_role_lnk DROP CONSTRAINT IF EXISTS up_permissions_role_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.up_permissions_role_lnk DROP CONSTRAINT IF EXISTS up_permissions_role_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.up_permissions DROP CONSTRAINT IF EXISTS up_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.testimonials DROP CONSTRAINT IF EXISTS testimonials_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT IF EXISTS strapi_workflows_stages_workflow_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT IF EXISTS strapi_workflows_stages_workflow_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows_stages DROP CONSTRAINT IF EXISTS strapi_workflows_stages_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT IF EXISTS strapi_workflows_stages_permissions_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT IF EXISTS strapi_workflows_stages_permissions_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT IF EXISTS strapi_workflows_stage_required_to_publish_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT IF EXISTS strapi_workflows_stage_required_to_publish_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_workflows DROP CONSTRAINT IF EXISTS strapi_workflows_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_webhooks DROP CONSTRAINT IF EXISTS strapi_webhooks_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_tokens DROP CONSTRAINT IF EXISTS strapi_transfer_tokens_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT IF EXISTS strapi_transfer_token_permissions_token_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT IF EXISTS strapi_transfer_token_permissions_token_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT IF EXISTS strapi_transfer_token_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_sessions DROP CONSTRAINT IF EXISTS strapi_sessions_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_releases DROP CONSTRAINT IF EXISTS strapi_releases_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT IF EXISTS strapi_release_actions_release_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT IF EXISTS strapi_release_actions_release_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_release_actions DROP CONSTRAINT IF EXISTS strapi_release_actions_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_migrations DROP CONSTRAINT IF EXISTS strapi_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_migrations_internal DROP CONSTRAINT IF EXISTS strapi_migrations_internal_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_history_versions DROP CONSTRAINT IF EXISTS strapi_history_versions_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_database_schema DROP CONSTRAINT IF EXISTS strapi_database_schema_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_core_store_settings DROP CONSTRAINT IF EXISTS strapi_core_store_settings_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_api_tokens DROP CONSTRAINT IF EXISTS strapi_api_tokens_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_token_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_token_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_ai_localization_jobs DROP CONSTRAINT IF EXISTS strapi_ai_localization_jobs_pkey;
ALTER TABLE IF EXISTS ONLY public.stories DROP CONSTRAINT IF EXISTS stories_pkey;
ALTER TABLE IF EXISTS ONLY public.projects DROP CONSTRAINT IF EXISTS projects_pkey;
ALTER TABLE IF EXISTS ONLY public.project_typologies_project_lnk DROP CONSTRAINT IF EXISTS project_typologies_project_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.project_typologies_project_lnk DROP CONSTRAINT IF EXISTS project_typologies_project_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.project_typologies DROP CONSTRAINT IF EXISTS project_typologies_pkey;
ALTER TABLE IF EXISTS ONLY public.project_timings_project_lnk DROP CONSTRAINT IF EXISTS project_timings_project_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.project_timings_project_lnk DROP CONSTRAINT IF EXISTS project_timings_project_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.project_timings DROP CONSTRAINT IF EXISTS project_timings_pkey;
ALTER TABLE IF EXISTS ONLY public.project_features_project_lnk DROP CONSTRAINT IF EXISTS project_features_project_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.project_features_project_lnk DROP CONSTRAINT IF EXISTS project_features_project_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.project_features DROP CONSTRAINT IF EXISTS project_features_pkey;
ALTER TABLE IF EXISTS ONLY public.project_contacts DROP CONSTRAINT IF EXISTS project_contacts_pkey;
ALTER TABLE IF EXISTS ONLY public.opportunity_moments DROP CONSTRAINT IF EXISTS opportunity_moments_pkey;
ALTER TABLE IF EXISTS ONLY public.localities DROP CONSTRAINT IF EXISTS localities_pkey;
ALTER TABLE IF EXISTS ONLY public.images_finitions DROP CONSTRAINT IF EXISTS images_finitions_pkey;
ALTER TABLE IF EXISTS ONLY public.i18n_locale DROP CONSTRAINT IF EXISTS i18n_locale_pkey;
ALTER TABLE IF EXISTS ONLY public.hero_medias DROP CONSTRAINT IF EXISTS hero_medias_pkey;
ALTER TABLE IF EXISTS ONLY public.globals_cmps DROP CONSTRAINT IF EXISTS globals_uq;
ALTER TABLE IF EXISTS ONLY public.globals DROP CONSTRAINT IF EXISTS globals_pkey;
ALTER TABLE IF EXISTS ONLY public.globals_cmps DROP CONSTRAINT IF EXISTS globals_cmps_pkey;
ALTER TABLE IF EXISTS ONLY public.files_related_mph DROP CONSTRAINT IF EXISTS files_related_mph_pkey;
ALTER TABLE IF EXISTS ONLY public.files DROP CONSTRAINT IF EXISTS files_pkey;
ALTER TABLE IF EXISTS ONLY public.files_folder_lnk DROP CONSTRAINT IF EXISTS files_folder_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.files_folder_lnk DROP CONSTRAINT IF EXISTS files_folder_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.faqs DROP CONSTRAINT IF EXISTS faqs_pkey;
ALTER TABLE IF EXISTS ONLY public.contact_responses DROP CONSTRAINT IF EXISTS contact_responses_pkey;
ALTER TABLE IF EXISTS ONLY public.components_shared_sliders DROP CONSTRAINT IF EXISTS components_shared_sliders_pkey;
ALTER TABLE IF EXISTS ONLY public.components_shared_seos DROP CONSTRAINT IF EXISTS components_shared_seos_pkey;
ALTER TABLE IF EXISTS ONLY public.components_shared_rich_texts DROP CONSTRAINT IF EXISTS components_shared_rich_texts_pkey;
ALTER TABLE IF EXISTS ONLY public.components_shared_quotes DROP CONSTRAINT IF EXISTS components_shared_quotes_pkey;
ALTER TABLE IF EXISTS ONLY public.components_shared_media DROP CONSTRAINT IF EXISTS components_shared_media_pkey;
ALTER TABLE IF EXISTS ONLY public.chat_responses DROP CONSTRAINT IF EXISTS chat_responses_pkey;
ALTER TABLE IF EXISTS ONLY public.categories DROP CONSTRAINT IF EXISTS categories_pkey;
ALTER TABLE IF EXISTS ONLY public.authors DROP CONSTRAINT IF EXISTS authors_pkey;
ALTER TABLE IF EXISTS ONLY public.articles_cmps DROP CONSTRAINT IF EXISTS articles_uq;
ALTER TABLE IF EXISTS ONLY public.articles DROP CONSTRAINT IF EXISTS articles_pkey;
ALTER TABLE IF EXISTS ONLY public.articles_cmps DROP CONSTRAINT IF EXISTS articles_cmps_pkey;
ALTER TABLE IF EXISTS ONLY public.articles_category_lnk DROP CONSTRAINT IF EXISTS articles_category_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.articles_category_lnk DROP CONSTRAINT IF EXISTS articles_category_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.articles_author_lnk DROP CONSTRAINT IF EXISTS articles_author_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.articles_author_lnk DROP CONSTRAINT IF EXISTS articles_author_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.admin_roles DROP CONSTRAINT IF EXISTS admin_roles_pkey;
ALTER TABLE IF EXISTS ONLY public.admin_permissions_role_lnk DROP CONSTRAINT IF EXISTS admin_permissions_role_lnk_uq;
ALTER TABLE IF EXISTS ONLY public.admin_permissions_role_lnk DROP CONSTRAINT IF EXISTS admin_permissions_role_lnk_pkey;
ALTER TABLE IF EXISTS ONLY public.admin_permissions DROP CONSTRAINT IF EXISTS admin_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.abouts DROP CONSTRAINT IF EXISTS abouts_pkey;
ALTER TABLE IF EXISTS public.upload_folders_parent_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.upload_folders ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.up_users_role_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.up_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.up_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.up_permissions_role_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.up_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.testimonials ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_workflows_stages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_workflows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_sessions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_releases ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_release_actions_release_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_migrations_internal ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_history_versions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_api_token_permissions_token_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_ai_localization_jobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.stories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.projects ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.project_typologies_project_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.project_typologies ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.project_timings_project_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.project_timings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.project_features_project_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.project_features ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.project_contacts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.opportunity_moments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.localities ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.images_finitions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.i18n_locale ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.hero_medias ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.globals_cmps ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.globals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.files_related_mph ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.files_folder_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.files ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.faqs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.contact_responses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_shared_sliders ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_shared_seos ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_shared_rich_texts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_shared_quotes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_shared_media ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.chat_responses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.authors ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.articles_cmps ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.articles_category_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.articles_author_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.articles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.admin_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.admin_permissions_role_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.admin_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.abouts ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.upload_folders_parent_lnk_id_seq;
DROP TABLE IF EXISTS public.upload_folders_parent_lnk;
DROP SEQUENCE IF EXISTS public.upload_folders_id_seq;
DROP TABLE IF EXISTS public.upload_folders;
DROP SEQUENCE IF EXISTS public.up_users_role_lnk_id_seq;
DROP TABLE IF EXISTS public.up_users_role_lnk;
DROP SEQUENCE IF EXISTS public.up_users_id_seq;
DROP TABLE IF EXISTS public.up_users;
DROP SEQUENCE IF EXISTS public.up_roles_id_seq;
DROP TABLE IF EXISTS public.up_roles;
DROP SEQUENCE IF EXISTS public.up_permissions_role_lnk_id_seq;
DROP TABLE IF EXISTS public.up_permissions_role_lnk;
DROP SEQUENCE IF EXISTS public.up_permissions_id_seq;
DROP TABLE IF EXISTS public.up_permissions;
DROP SEQUENCE IF EXISTS public.testimonials_id_seq;
DROP TABLE IF EXISTS public.testimonials;
DROP SEQUENCE IF EXISTS public.strapi_workflows_stages_workflow_lnk_id_seq;
DROP TABLE IF EXISTS public.strapi_workflows_stages_workflow_lnk;
DROP SEQUENCE IF EXISTS public.strapi_workflows_stages_permissions_lnk_id_seq;
DROP TABLE IF EXISTS public.strapi_workflows_stages_permissions_lnk;
DROP SEQUENCE IF EXISTS public.strapi_workflows_stages_id_seq;
DROP TABLE IF EXISTS public.strapi_workflows_stages;
DROP SEQUENCE IF EXISTS public.strapi_workflows_stage_required_to_publish_lnk_id_seq;
DROP TABLE IF EXISTS public.strapi_workflows_stage_required_to_publish_lnk;
DROP SEQUENCE IF EXISTS public.strapi_workflows_id_seq;
DROP TABLE IF EXISTS public.strapi_workflows;
DROP SEQUENCE IF EXISTS public.strapi_webhooks_id_seq;
DROP TABLE IF EXISTS public.strapi_webhooks;
DROP SEQUENCE IF EXISTS public.strapi_transfer_tokens_id_seq;
DROP TABLE IF EXISTS public.strapi_transfer_tokens;
DROP SEQUENCE IF EXISTS public.strapi_transfer_token_permissions_token_lnk_id_seq;
DROP TABLE IF EXISTS public.strapi_transfer_token_permissions_token_lnk;
DROP SEQUENCE IF EXISTS public.strapi_transfer_token_permissions_id_seq;
DROP TABLE IF EXISTS public.strapi_transfer_token_permissions;
DROP SEQUENCE IF EXISTS public.strapi_sessions_id_seq;
DROP TABLE IF EXISTS public.strapi_sessions;
DROP SEQUENCE IF EXISTS public.strapi_releases_id_seq;
DROP TABLE IF EXISTS public.strapi_releases;
DROP SEQUENCE IF EXISTS public.strapi_release_actions_release_lnk_id_seq;
DROP TABLE IF EXISTS public.strapi_release_actions_release_lnk;
DROP SEQUENCE IF EXISTS public.strapi_release_actions_id_seq;
DROP TABLE IF EXISTS public.strapi_release_actions;
DROP SEQUENCE IF EXISTS public.strapi_migrations_internal_id_seq;
DROP TABLE IF EXISTS public.strapi_migrations_internal;
DROP SEQUENCE IF EXISTS public.strapi_migrations_id_seq;
DROP TABLE IF EXISTS public.strapi_migrations;
DROP SEQUENCE IF EXISTS public.strapi_history_versions_id_seq;
DROP TABLE IF EXISTS public.strapi_history_versions;
DROP SEQUENCE IF EXISTS public.strapi_database_schema_id_seq;
DROP TABLE IF EXISTS public.strapi_database_schema;
DROP SEQUENCE IF EXISTS public.strapi_core_store_settings_id_seq;
DROP TABLE IF EXISTS public.strapi_core_store_settings;
DROP SEQUENCE IF EXISTS public.strapi_api_tokens_id_seq;
DROP TABLE IF EXISTS public.strapi_api_tokens;
DROP SEQUENCE IF EXISTS public.strapi_api_token_permissions_token_lnk_id_seq;
DROP TABLE IF EXISTS public.strapi_api_token_permissions_token_lnk;
DROP SEQUENCE IF EXISTS public.strapi_api_token_permissions_id_seq;
DROP TABLE IF EXISTS public.strapi_api_token_permissions;
DROP SEQUENCE IF EXISTS public.strapi_ai_localization_jobs_id_seq;
DROP TABLE IF EXISTS public.strapi_ai_localization_jobs;
DROP SEQUENCE IF EXISTS public.stories_id_seq;
DROP TABLE IF EXISTS public.stories;
DROP SEQUENCE IF EXISTS public.projects_id_seq;
DROP TABLE IF EXISTS public.projects;
DROP SEQUENCE IF EXISTS public.project_typologies_project_lnk_id_seq;
DROP TABLE IF EXISTS public.project_typologies_project_lnk;
DROP SEQUENCE IF EXISTS public.project_typologies_id_seq;
DROP TABLE IF EXISTS public.project_typologies;
DROP SEQUENCE IF EXISTS public.project_timings_project_lnk_id_seq;
DROP TABLE IF EXISTS public.project_timings_project_lnk;
DROP SEQUENCE IF EXISTS public.project_timings_id_seq;
DROP TABLE IF EXISTS public.project_timings;
DROP SEQUENCE IF EXISTS public.project_features_project_lnk_id_seq;
DROP TABLE IF EXISTS public.project_features_project_lnk;
DROP SEQUENCE IF EXISTS public.project_features_id_seq;
DROP TABLE IF EXISTS public.project_features;
DROP SEQUENCE IF EXISTS public.project_contacts_id_seq;
DROP TABLE IF EXISTS public.project_contacts;
DROP SEQUENCE IF EXISTS public.opportunity_moments_id_seq;
DROP TABLE IF EXISTS public.opportunity_moments;
DROP SEQUENCE IF EXISTS public.localities_id_seq;
DROP TABLE IF EXISTS public.localities;
DROP SEQUENCE IF EXISTS public.images_finitions_id_seq;
DROP TABLE IF EXISTS public.images_finitions;
DROP SEQUENCE IF EXISTS public.i18n_locale_id_seq;
DROP TABLE IF EXISTS public.i18n_locale;
DROP SEQUENCE IF EXISTS public.hero_medias_id_seq;
DROP TABLE IF EXISTS public.hero_medias;
DROP SEQUENCE IF EXISTS public.globals_id_seq;
DROP SEQUENCE IF EXISTS public.globals_cmps_id_seq;
DROP TABLE IF EXISTS public.globals_cmps;
DROP TABLE IF EXISTS public.globals;
DROP SEQUENCE IF EXISTS public.files_related_mph_id_seq;
DROP TABLE IF EXISTS public.files_related_mph;
DROP SEQUENCE IF EXISTS public.files_id_seq;
DROP SEQUENCE IF EXISTS public.files_folder_lnk_id_seq;
DROP TABLE IF EXISTS public.files_folder_lnk;
DROP TABLE IF EXISTS public.files;
DROP SEQUENCE IF EXISTS public.faqs_id_seq;
DROP TABLE IF EXISTS public.faqs;
DROP SEQUENCE IF EXISTS public.contact_responses_id_seq;
DROP TABLE IF EXISTS public.contact_responses;
DROP SEQUENCE IF EXISTS public.components_shared_sliders_id_seq;
DROP TABLE IF EXISTS public.components_shared_sliders;
DROP SEQUENCE IF EXISTS public.components_shared_seos_id_seq;
DROP TABLE IF EXISTS public.components_shared_seos;
DROP SEQUENCE IF EXISTS public.components_shared_rich_texts_id_seq;
DROP TABLE IF EXISTS public.components_shared_rich_texts;
DROP SEQUENCE IF EXISTS public.components_shared_quotes_id_seq;
DROP TABLE IF EXISTS public.components_shared_quotes;
DROP SEQUENCE IF EXISTS public.components_shared_media_id_seq;
DROP TABLE IF EXISTS public.components_shared_media;
DROP SEQUENCE IF EXISTS public.chat_responses_id_seq;
DROP TABLE IF EXISTS public.chat_responses;
DROP SEQUENCE IF EXISTS public.categories_id_seq;
DROP TABLE IF EXISTS public.categories;
DROP SEQUENCE IF EXISTS public.authors_id_seq;
DROP TABLE IF EXISTS public.authors;
DROP SEQUENCE IF EXISTS public.articles_id_seq;
DROP SEQUENCE IF EXISTS public.articles_cmps_id_seq;
DROP TABLE IF EXISTS public.articles_cmps;
DROP SEQUENCE IF EXISTS public.articles_category_lnk_id_seq;
DROP TABLE IF EXISTS public.articles_category_lnk;
DROP SEQUENCE IF EXISTS public.articles_author_lnk_id_seq;
DROP TABLE IF EXISTS public.articles_author_lnk;
DROP TABLE IF EXISTS public.articles;
DROP SEQUENCE IF EXISTS public.admin_users_roles_lnk_id_seq;
DROP SEQUENCE IF EXISTS public.admin_users_id_seq;
DROP SEQUENCE IF EXISTS public.admin_roles_id_seq;
DROP TABLE IF EXISTS public.admin_roles;
DROP SEQUENCE IF EXISTS public.admin_permissions_role_lnk_id_seq;
DROP TABLE IF EXISTS public.admin_permissions_role_lnk;
DROP SEQUENCE IF EXISTS public.admin_permissions_id_seq;
DROP TABLE IF EXISTS public.admin_permissions;
DROP SEQUENCE IF EXISTS public.abouts_id_seq;
DROP TABLE IF EXISTS public.abouts;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: abouts; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.abouts (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.abouts OWNER TO strapi;

--
-- Name: abouts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.abouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.abouts_id_seq OWNER TO strapi;

--
-- Name: abouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.abouts_id_seq OWNED BY public.abouts.id;


--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_permissions OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_role_lnk OWNER TO strapi;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_role_lnk_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_roles OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO strapi;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_roles_lnk_id_seq OWNER TO strapi;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.articles (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    shares integer,
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.articles OWNER TO strapi;

--
-- Name: articles_author_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.articles_author_lnk (
    id integer NOT NULL,
    article_id integer,
    author_id integer,
    article_ord double precision
);


ALTER TABLE public.articles_author_lnk OWNER TO strapi;

--
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.articles_author_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_author_lnk_id_seq OWNER TO strapi;

--
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.articles_author_lnk_id_seq OWNED BY public.articles_author_lnk.id;


--
-- Name: articles_category_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.articles_category_lnk (
    id integer NOT NULL,
    article_id integer,
    category_id integer,
    article_ord double precision
);


ALTER TABLE public.articles_category_lnk OWNER TO strapi;

--
-- Name: articles_category_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.articles_category_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_category_lnk_id_seq OWNER TO strapi;

--
-- Name: articles_category_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.articles_category_lnk_id_seq OWNED BY public.articles_category_lnk.id;


--
-- Name: articles_cmps; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.articles_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.articles_cmps OWNER TO strapi;

--
-- Name: articles_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.articles_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_cmps_id_seq OWNER TO strapi;

--
-- Name: articles_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.articles_cmps_id_seq OWNED BY public.articles_cmps.id;


--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO strapi;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: authors; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.authors OWNER TO strapi;

--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO strapi;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    slug character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.categories OWNER TO strapi;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO strapi;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: chat_responses; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.chat_responses (
    id integer NOT NULL,
    document_id character varying(255),
    trigger character varying(255),
    response jsonb,
    enabled boolean,
    priority integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.chat_responses OWNER TO strapi;

--
-- Name: chat_responses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.chat_responses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chat_responses_id_seq OWNER TO strapi;

--
-- Name: chat_responses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.chat_responses_id_seq OWNED BY public.chat_responses.id;


--
-- Name: components_shared_media; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_media (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_media OWNER TO strapi;

--
-- Name: components_shared_media_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_media_id_seq OWNER TO strapi;

--
-- Name: components_shared_media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_media_id_seq OWNED BY public.components_shared_media.id;


--
-- Name: components_shared_quotes; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_quotes (
    id integer NOT NULL,
    title character varying(255),
    body text
);


ALTER TABLE public.components_shared_quotes OWNER TO strapi;

--
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_quotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_quotes_id_seq OWNER TO strapi;

--
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_quotes_id_seq OWNED BY public.components_shared_quotes.id;


--
-- Name: components_shared_rich_texts; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_rich_texts (
    id integer NOT NULL,
    body text
);


ALTER TABLE public.components_shared_rich_texts OWNER TO strapi;

--
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_rich_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_rich_texts_id_seq OWNER TO strapi;

--
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_rich_texts_id_seq OWNED BY public.components_shared_rich_texts.id;


--
-- Name: components_shared_seos; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);


ALTER TABLE public.components_shared_seos OWNER TO strapi;

--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_seos_id_seq OWNER TO strapi;

--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;


--
-- Name: components_shared_sliders; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_sliders (
    id integer NOT NULL
);


ALTER TABLE public.components_shared_sliders OWNER TO strapi;

--
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_sliders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_sliders_id_seq OWNER TO strapi;

--
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_sliders_id_seq OWNED BY public.components_shared_sliders.id;


--
-- Name: contact_responses; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.contact_responses (
    id integer NOT NULL,
    document_id character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255),
    phone bigint,
    request_type character varying(255),
    subject character varying(255),
    message text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.contact_responses OWNER TO strapi;

--
-- Name: contact_responses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.contact_responses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_responses_id_seq OWNER TO strapi;

--
-- Name: contact_responses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.contact_responses_id_seq OWNED BY public.contact_responses.id;


--
-- Name: faqs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.faqs (
    id integer NOT NULL,
    document_id character varying(255),
    question character varying(255),
    answer text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.faqs OWNER TO strapi;

--
-- Name: faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faqs_id_seq OWNER TO strapi;

--
-- Name: faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text text,
    caption text,
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url text,
    preview_url text,
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.files OWNER TO strapi;

--
-- Name: files_folder_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE public.files_folder_lnk OWNER TO strapi;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_folder_lnk_id_seq OWNER TO strapi;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO strapi;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_mph; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_mph OWNER TO strapi;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_related_mph_id_seq OWNER TO strapi;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;


--
-- Name: globals; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.globals (
    id integer NOT NULL,
    document_id character varying(255),
    site_name character varying(255),
    site_description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.globals OWNER TO strapi;

--
-- Name: globals_cmps; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.globals_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.globals_cmps OWNER TO strapi;

--
-- Name: globals_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.globals_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.globals_cmps_id_seq OWNER TO strapi;

--
-- Name: globals_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.globals_cmps_id_seq OWNED BY public.globals_cmps.id;


--
-- Name: globals_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.globals_id_seq OWNER TO strapi;

--
-- Name: globals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.globals_id_seq OWNED BY public.globals.id;


--
-- Name: hero_medias; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.hero_medias (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.hero_medias OWNER TO strapi;

--
-- Name: hero_medias_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.hero_medias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hero_medias_id_seq OWNER TO strapi;

--
-- Name: hero_medias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.hero_medias_id_seq OWNED BY public.hero_medias.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.i18n_locale OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: images_finitions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.images_finitions (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.images_finitions OWNER TO strapi;

--
-- Name: images_finitions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.images_finitions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_finitions_id_seq OWNER TO strapi;

--
-- Name: images_finitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.images_finitions_id_seq OWNED BY public.images_finitions.id;


--
-- Name: localities; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.localities (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    location character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.localities OWNER TO strapi;

--
-- Name: localities_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.localities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.localities_id_seq OWNER TO strapi;

--
-- Name: localities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.localities_id_seq OWNED BY public.localities.id;


--
-- Name: opportunity_moments; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.opportunity_moments (
    id integer NOT NULL,
    document_id character varying(255),
    detail character varying(255),
    location character varying(255),
    surface integer,
    type character varying(255),
    price bigint,
    name character varying(255),
    typology character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.opportunity_moments OWNER TO strapi;

--
-- Name: opportunity_moments_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.opportunity_moments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.opportunity_moments_id_seq OWNER TO strapi;

--
-- Name: opportunity_moments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.opportunity_moments_id_seq OWNED BY public.opportunity_moments.id;


--
-- Name: project_contacts; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.project_contacts (
    id integer NOT NULL,
    document_id character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    phone bigint,
    comment text,
    locality character varying(255),
    typology character varying(255),
    wilaya character varying(255),
    project_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.project_contacts OWNER TO strapi;

--
-- Name: project_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.project_contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_contacts_id_seq OWNER TO strapi;

--
-- Name: project_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.project_contacts_id_seq OWNED BY public.project_contacts.id;


--
-- Name: project_features; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.project_features (
    id integer NOT NULL,
    document_id character varying(255),
    key character varying(255),
    label character varying(255),
    value character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.project_features OWNER TO strapi;

--
-- Name: project_features_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.project_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_features_id_seq OWNER TO strapi;

--
-- Name: project_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.project_features_id_seq OWNED BY public.project_features.id;


--
-- Name: project_features_project_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.project_features_project_lnk (
    id integer NOT NULL,
    project_feature_id integer,
    project_id integer,
    project_feature_ord double precision
);


ALTER TABLE public.project_features_project_lnk OWNER TO strapi;

--
-- Name: project_features_project_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.project_features_project_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_features_project_lnk_id_seq OWNER TO strapi;

--
-- Name: project_features_project_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.project_features_project_lnk_id_seq OWNED BY public.project_features_project_lnk.id;


--
-- Name: project_timings; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.project_timings (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    minutes integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.project_timings OWNER TO strapi;

--
-- Name: project_timings_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.project_timings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_timings_id_seq OWNER TO strapi;

--
-- Name: project_timings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.project_timings_id_seq OWNED BY public.project_timings.id;


--
-- Name: project_timings_project_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.project_timings_project_lnk (
    id integer NOT NULL,
    project_timing_id integer,
    project_id integer,
    project_timing_ord double precision
);


ALTER TABLE public.project_timings_project_lnk OWNER TO strapi;

--
-- Name: project_timings_project_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.project_timings_project_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_timings_project_lnk_id_seq OWNER TO strapi;

--
-- Name: project_timings_project_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.project_timings_project_lnk_id_seq OWNED BY public.project_timings_project_lnk.id;


--
-- Name: project_typologies; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.project_typologies (
    id integer NOT NULL,
    document_id character varying(255),
    code character varying(255),
    surface_min integer,
    surface_max integer,
    price_from bigint,
    status_typologie character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.project_typologies OWNER TO strapi;

--
-- Name: project_typologies_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.project_typologies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_typologies_id_seq OWNER TO strapi;

--
-- Name: project_typologies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.project_typologies_id_seq OWNED BY public.project_typologies.id;


--
-- Name: project_typologies_project_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.project_typologies_project_lnk (
    id integer NOT NULL,
    project_typologie_id integer,
    project_id integer,
    project_typologie_ord double precision
);


ALTER TABLE public.project_typologies_project_lnk OWNER TO strapi;

--
-- Name: project_typologies_project_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.project_typologies_project_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_typologies_project_lnk_id_seq OWNER TO strapi;

--
-- Name: project_typologies_project_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.project_typologies_project_lnk_id_seq OWNED BY public.project_typologies_project_lnk.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.projects (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    slug character varying(255),
    short_description text,
    description text,
    project_status character varying(255),
    location character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.projects OWNER TO strapi;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO strapi;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: stories; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.stories (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    test text,
    expires_at timestamp(6) without time zone,
    is_active boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.stories OWNER TO strapi;

--
-- Name: stories_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.stories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stories_id_seq OWNER TO strapi;

--
-- Name: stories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.stories_id_seq OWNED BY public.stories.id;


--
-- Name: strapi_ai_localization_jobs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_ai_localization_jobs (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255) NOT NULL,
    source_locale character varying(255) NOT NULL,
    target_locales jsonb NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_localization_jobs OWNER TO strapi;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_ai_localization_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_ai_localization_jobs_id_seq OWNER TO strapi;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNED BY public.strapi_ai_localization_jobs.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_lnk OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_token_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    encrypted_key text,
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_tokens OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_history_versions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE public.strapi_history_versions OWNER TO strapi;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_history_versions_id_seq OWNER TO strapi;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_migrations_internal; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations_internal OWNER TO strapi;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_internal_id_seq OWNER TO strapi;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO strapi;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_release_actions_id_seq OWNER TO strapi;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE public.strapi_release_actions_release_lnk OWNER TO strapi;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_release_actions_release_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_releases OWNER TO strapi;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_releases_id_seq OWNER TO strapi;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_sessions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_sessions (
    id integer NOT NULL,
    document_id character varying(255),
    user_id character varying(255),
    session_id character varying(255),
    child_id character varying(255),
    device_id character varying(255),
    origin character varying(255),
    expires_at timestamp(6) without time zone,
    absolute_expires_at timestamp(6) without time zone,
    status character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_sessions OWNER TO strapi;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_sessions_id_seq OWNER TO strapi;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_sessions_id_seq OWNED BY public.strapi_sessions.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: strapi_workflows; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows OWNER TO strapi;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk OWNER TO strapi;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- Name: strapi_workflows_stages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows_stages OWNER TO strapi;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stages_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;


--
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_permissions_lnk OWNER TO strapi;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;


--
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_workflow_lnk OWNER TO strapi;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;


--
-- Name: testimonials; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.testimonials (
    id integer NOT NULL,
    document_id character varying(255),
    link text,
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.testimonials OWNER TO strapi;

--
-- Name: testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.testimonials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.testimonials_id_seq OWNER TO strapi;

--
-- Name: testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.testimonials_id_seq OWNED BY public.testimonials.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_permissions OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.up_permissions_role_lnk OWNER TO strapi;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_role_lnk_id_seq OWNER TO strapi;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_roles OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_users OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE public.up_users_role_lnk OWNER TO strapi;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_role_lnk_id_seq OWNER TO strapi;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.upload_folders OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_id_seq OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE public.upload_folders_parent_lnk OWNER TO strapi;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_parent_lnk_id_seq OWNER TO strapi;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;


--
-- Name: abouts id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.abouts ALTER COLUMN id SET DEFAULT nextval('public.abouts_id_seq'::regclass);


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: articles_author_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_author_lnk ALTER COLUMN id SET DEFAULT nextval('public.articles_author_lnk_id_seq'::regclass);


--
-- Name: articles_category_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_category_lnk ALTER COLUMN id SET DEFAULT nextval('public.articles_category_lnk_id_seq'::regclass);


--
-- Name: articles_cmps id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_cmps ALTER COLUMN id SET DEFAULT nextval('public.articles_cmps_id_seq'::regclass);


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: chat_responses id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.chat_responses ALTER COLUMN id SET DEFAULT nextval('public.chat_responses_id_seq'::regclass);


--
-- Name: components_shared_media id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_media ALTER COLUMN id SET DEFAULT nextval('public.components_shared_media_id_seq'::regclass);


--
-- Name: components_shared_quotes id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_quotes ALTER COLUMN id SET DEFAULT nextval('public.components_shared_quotes_id_seq'::regclass);


--
-- Name: components_shared_rich_texts id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.components_shared_rich_texts_id_seq'::regclass);


--
-- Name: components_shared_seos id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);


--
-- Name: components_shared_sliders id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_sliders ALTER COLUMN id SET DEFAULT nextval('public.components_shared_sliders_id_seq'::regclass);


--
-- Name: contact_responses id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_responses ALTER COLUMN id SET DEFAULT nextval('public.contact_responses_id_seq'::regclass);


--
-- Name: faqs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);


--
-- Name: files_related_mph id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);


--
-- Name: globals id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals ALTER COLUMN id SET DEFAULT nextval('public.globals_id_seq'::regclass);


--
-- Name: globals_cmps id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals_cmps ALTER COLUMN id SET DEFAULT nextval('public.globals_cmps_id_seq'::regclass);


--
-- Name: hero_medias id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.hero_medias ALTER COLUMN id SET DEFAULT nextval('public.hero_medias_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: images_finitions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.images_finitions ALTER COLUMN id SET DEFAULT nextval('public.images_finitions_id_seq'::regclass);


--
-- Name: localities id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.localities ALTER COLUMN id SET DEFAULT nextval('public.localities_id_seq'::regclass);


--
-- Name: opportunity_moments id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.opportunity_moments ALTER COLUMN id SET DEFAULT nextval('public.opportunity_moments_id_seq'::regclass);


--
-- Name: project_contacts id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_contacts ALTER COLUMN id SET DEFAULT nextval('public.project_contacts_id_seq'::regclass);


--
-- Name: project_features id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_features ALTER COLUMN id SET DEFAULT nextval('public.project_features_id_seq'::regclass);


--
-- Name: project_features_project_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_features_project_lnk ALTER COLUMN id SET DEFAULT nextval('public.project_features_project_lnk_id_seq'::regclass);


--
-- Name: project_timings id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_timings ALTER COLUMN id SET DEFAULT nextval('public.project_timings_id_seq'::regclass);


--
-- Name: project_timings_project_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_timings_project_lnk ALTER COLUMN id SET DEFAULT nextval('public.project_timings_project_lnk_id_seq'::regclass);


--
-- Name: project_typologies id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_typologies ALTER COLUMN id SET DEFAULT nextval('public.project_typologies_id_seq'::regclass);


--
-- Name: project_typologies_project_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_typologies_project_lnk ALTER COLUMN id SET DEFAULT nextval('public.project_typologies_project_lnk_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: stories id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.stories ALTER COLUMN id SET DEFAULT nextval('public.stories_id_seq'::regclass);


--
-- Name: strapi_ai_localization_jobs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_localization_jobs_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_sessions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_sessions ALTER COLUMN id SET DEFAULT nextval('public.strapi_sessions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: strapi_workflows id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- Name: testimonials id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.testimonials ALTER COLUMN id SET DEFAULT nextval('public.testimonials_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);


--
-- Data for Name: abouts; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.abouts (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	li7tm8t2drill4fw5w1a0v2l	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["ImageBanner", "ImageHistoire", "ImageVision"]}	[]	2025-12-29 22:43:59.606	2025-12-29 22:43:59.606	2025-12-29 22:43:59.607	\N	\N	\N
2	wzmqtbegkokw5ig07fxu1mxn	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "shares", "slug", "cover", "author", "category", "blocks"]}	[]	2025-12-29 22:43:59.618	2025-12-29 22:43:59.618	2025-12-29 22:43:59.618	\N	\N	\N
3	hyzp3uk0ow3x4c52kjr5awcp	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-12-29 22:43:59.624	2025-12-29 22:43:59.624	2025-12-29 22:43:59.624	\N	\N	\N
4	tudcqwh7vk6fh3zqmfbdq8h9	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-12-29 22:43:59.632	2025-12-29 22:43:59.632	2025-12-29 22:43:59.632	\N	\N	\N
5	o8e2fjoua8xpy3nv1uacr830	plugin::content-manager.explorer.create	{}	api::chat-response.chat-response	{"fields": ["trigger", "response", "enabled", "priority"]}	[]	2025-12-29 22:43:59.64	2025-12-29 22:43:59.64	2025-12-29 22:43:59.64	\N	\N	\N
6	dwjxk1mz095uu60epzyumm6h	plugin::content-manager.explorer.create	{}	api::contact-response.contact-response	{"fields": ["firstName", "lastName", "email", "phone", "requestType", "subject", "message"]}	[]	2025-12-29 22:43:59.647	2025-12-29 22:43:59.647	2025-12-29 22:43:59.647	\N	\N	\N
7	kf6i0ebk9cu4g726i3zlzq98	plugin::content-manager.explorer.create	{}	api::faq.faq	{"fields": ["question", "answer"]}	[]	2025-12-29 22:43:59.655	2025-12-29 22:43:59.655	2025-12-29 22:43:59.655	\N	\N	\N
8	rceo1w4g8mjot0k19dul1aux	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-12-29 22:43:59.662	2025-12-29 22:43:59.662	2025-12-29 22:43:59.662	\N	\N	\N
9	tpwmh7wjt0nfdpxwjwsnjxlz	plugin::content-manager.explorer.create	{}	api::hero-media.hero-media	{"fields": ["firstItem", "secondItem", "thirdItem"]}	[]	2025-12-29 22:43:59.669	2025-12-29 22:43:59.669	2025-12-29 22:43:59.669	\N	\N	\N
10	tgjqpfeaqpmz2eg4zty2z6ry	plugin::content-manager.explorer.create	{}	api::images-finition.images-finition	{"fields": ["semiFinition", "fini", "finitionTroisTiers"]}	[]	2025-12-29 22:43:59.675	2025-12-29 22:43:59.675	2025-12-29 22:43:59.676	\N	\N	\N
11	sh70ztjjc7v57asyzrc9gdx9	plugin::content-manager.explorer.create	{}	api::locality.locality	{"fields": ["name", "image", "mapImage", "location"]}	[]	2025-12-29 22:43:59.682	2025-12-29 22:43:59.682	2025-12-29 22:43:59.682	\N	\N	\N
12	m19taq9u8m1is9vm22ebck1h	plugin::content-manager.explorer.create	{}	api::opportunity-moment.opportunity-moment	{"fields": ["detail", "location", "surface", "type", "price", "name", "typology", "image"]}	[]	2025-12-29 22:43:59.687	2025-12-29 22:43:59.687	2025-12-29 22:43:59.688	\N	\N	\N
13	b0uti44hqdo1mj2zj6ufsofp	plugin::content-manager.explorer.create	{}	api::project.project	{"fields": ["name", "slug", "shortDescription", "description", "projectStatus", "location", "coverImage", "gallery", "mapImage", "features", "timings", "typologies"]}	[]	2025-12-29 22:43:59.693	2025-12-29 22:43:59.693	2025-12-29 22:43:59.693	\N	\N	\N
14	ituhz95idmrgygmst9wimyft	plugin::content-manager.explorer.create	{}	api::project-contact.project-contact	{"fields": ["firstName", "lastName", "phone", "comment", "locality", "typology", "wilaya", "projectName"]}	[]	2025-12-29 22:43:59.699	2025-12-29 22:43:59.699	2025-12-29 22:43:59.699	\N	\N	\N
15	isj8p8rpc1bhwlg3qn56dna1	plugin::content-manager.explorer.create	{}	api::project-feature.project-feature	{"fields": ["key", "label", "value", "project"]}	[]	2025-12-29 22:43:59.705	2025-12-29 22:43:59.705	2025-12-29 22:43:59.705	\N	\N	\N
16	hivkks84mp8nvuzyuud4l2ae	plugin::content-manager.explorer.create	{}	api::project-timing.project-timing	{"fields": ["type", "minutes", "project"]}	[]	2025-12-29 22:43:59.71	2025-12-29 22:43:59.71	2025-12-29 22:43:59.71	\N	\N	\N
17	hg7aagn2xxuavbrww516ndyj	plugin::content-manager.explorer.create	{}	api::project-typologie.project-typologie	{"fields": ["code", "surfaceMin", "surfaceMax", "priceFrom", "statusTypologie", "project"]}	[]	2025-12-29 22:43:59.716	2025-12-29 22:43:59.716	2025-12-29 22:43:59.716	\N	\N	\N
18	hs97egqs6vdlb0o5epgpd7my	plugin::content-manager.explorer.create	{}	api::story.story	{"fields": ["title", "media", "test", "expiresAt", "isActive"]}	[]	2025-12-29 22:43:59.722	2025-12-29 22:43:59.722	2025-12-29 22:43:59.722	\N	\N	\N
19	seq4xjgr5d4qczq8ck5sj221	plugin::content-manager.explorer.create	{}	api::testimonial.testimonial	{"fields": ["link", "title"]}	[]	2025-12-29 22:43:59.728	2025-12-29 22:43:59.728	2025-12-29 22:43:59.728	\N	\N	\N
20	gxi861hxuv50w52lyglnm0i4	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["ImageBanner", "ImageHistoire", "ImageVision"]}	[]	2025-12-29 22:43:59.734	2025-12-29 22:43:59.734	2025-12-29 22:43:59.734	\N	\N	\N
21	kzwxkt6p3ifachvgp53wotei	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "shares", "slug", "cover", "author", "category", "blocks"]}	[]	2025-12-29 22:43:59.74	2025-12-29 22:43:59.74	2025-12-29 22:43:59.74	\N	\N	\N
22	x4h8g1vej4zr4dc63x5nhqh6	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-12-29 22:43:59.746	2025-12-29 22:43:59.746	2025-12-29 22:43:59.746	\N	\N	\N
23	b41nb0qdkzvnwd5wkx71n0pt	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-12-29 22:43:59.751	2025-12-29 22:43:59.751	2025-12-29 22:43:59.752	\N	\N	\N
24	xng9bbe40bhifhaq6qxfwjpf	plugin::content-manager.explorer.read	{}	api::chat-response.chat-response	{"fields": ["trigger", "response", "enabled", "priority"]}	[]	2025-12-29 22:43:59.757	2025-12-29 22:43:59.757	2025-12-29 22:43:59.758	\N	\N	\N
25	z4f0p54vg6cdvgq9rsge6881	plugin::content-manager.explorer.read	{}	api::contact-response.contact-response	{"fields": ["firstName", "lastName", "email", "phone", "requestType", "subject", "message"]}	[]	2025-12-29 22:43:59.763	2025-12-29 22:43:59.763	2025-12-29 22:43:59.763	\N	\N	\N
26	p74z1utc8ajste2ch03l80c2	plugin::content-manager.explorer.read	{}	api::faq.faq	{"fields": ["question", "answer"]}	[]	2025-12-29 22:43:59.768	2025-12-29 22:43:59.768	2025-12-29 22:43:59.769	\N	\N	\N
27	qg2of64ylfpibizo0a6hyosd	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-12-29 22:43:59.777	2025-12-29 22:43:59.777	2025-12-29 22:43:59.777	\N	\N	\N
28	gu4o9hv2fe1cczms9vuliscc	plugin::content-manager.explorer.read	{}	api::hero-media.hero-media	{"fields": ["firstItem", "secondItem", "thirdItem"]}	[]	2025-12-29 22:43:59.782	2025-12-29 22:43:59.782	2025-12-29 22:43:59.782	\N	\N	\N
29	z75k4i5lqod1ef3vn1sl9d4r	plugin::content-manager.explorer.read	{}	api::images-finition.images-finition	{"fields": ["semiFinition", "fini", "finitionTroisTiers"]}	[]	2025-12-29 22:43:59.788	2025-12-29 22:43:59.788	2025-12-29 22:43:59.788	\N	\N	\N
30	dztj081zvem338fckf6t01c7	plugin::content-manager.explorer.read	{}	api::locality.locality	{"fields": ["name", "image", "mapImage", "location"]}	[]	2025-12-29 22:43:59.794	2025-12-29 22:43:59.794	2025-12-29 22:43:59.794	\N	\N	\N
31	p525j2a0o9a0notqhtycs7al	plugin::content-manager.explorer.read	{}	api::opportunity-moment.opportunity-moment	{"fields": ["detail", "location", "surface", "type", "price", "name", "typology", "image"]}	[]	2025-12-29 22:43:59.8	2025-12-29 22:43:59.8	2025-12-29 22:43:59.8	\N	\N	\N
66	k9ti3j6443509yebknbswkam	plugin::content-manager.explorer.delete	{}	api::hero-media.hero-media	{}	[]	2025-12-29 22:43:59.996	2025-12-29 22:43:59.996	2025-12-29 22:43:59.997	\N	\N	\N
32	rvj96mkp23h39t0r7e57g2ym	plugin::content-manager.explorer.read	{}	api::project.project	{"fields": ["name", "slug", "shortDescription", "description", "projectStatus", "location", "coverImage", "gallery", "mapImage", "features", "timings", "typologies"]}	[]	2025-12-29 22:43:59.805	2025-12-29 22:43:59.805	2025-12-29 22:43:59.806	\N	\N	\N
33	b4x6v4nyyom3hdi8xffnmmqp	plugin::content-manager.explorer.read	{}	api::project-contact.project-contact	{"fields": ["firstName", "lastName", "phone", "comment", "locality", "typology", "wilaya", "projectName"]}	[]	2025-12-29 22:43:59.812	2025-12-29 22:43:59.812	2025-12-29 22:43:59.812	\N	\N	\N
34	myv5fpl98ylf1qxfdq38cgeo	plugin::content-manager.explorer.read	{}	api::project-feature.project-feature	{"fields": ["key", "label", "value", "project"]}	[]	2025-12-29 22:43:59.818	2025-12-29 22:43:59.818	2025-12-29 22:43:59.818	\N	\N	\N
35	bo84bgmbm5um0iay7n4zf83m	plugin::content-manager.explorer.read	{}	api::project-timing.project-timing	{"fields": ["type", "minutes", "project"]}	[]	2025-12-29 22:43:59.824	2025-12-29 22:43:59.824	2025-12-29 22:43:59.824	\N	\N	\N
36	zwxxtzb4soklbfcmd9modwma	plugin::content-manager.explorer.read	{}	api::project-typologie.project-typologie	{"fields": ["code", "surfaceMin", "surfaceMax", "priceFrom", "statusTypologie", "project"]}	[]	2025-12-29 22:43:59.83	2025-12-29 22:43:59.83	2025-12-29 22:43:59.83	\N	\N	\N
37	u7796ktw2n9f3mi5fefm9vhh	plugin::content-manager.explorer.read	{}	api::story.story	{"fields": ["title", "media", "test", "expiresAt", "isActive"]}	[]	2025-12-29 22:43:59.836	2025-12-29 22:43:59.836	2025-12-29 22:43:59.836	\N	\N	\N
38	iqysggcx5qpya94c65dxxg94	plugin::content-manager.explorer.read	{}	api::testimonial.testimonial	{"fields": ["link", "title"]}	[]	2025-12-29 22:43:59.841	2025-12-29 22:43:59.841	2025-12-29 22:43:59.842	\N	\N	\N
39	nlspdln1pvm0yoqow66x6pbj	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["ImageBanner", "ImageHistoire", "ImageVision"]}	[]	2025-12-29 22:43:59.847	2025-12-29 22:43:59.847	2025-12-29 22:43:59.847	\N	\N	\N
40	nz1itzhqw3lv0neho4hbgryh	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "shares", "slug", "cover", "author", "category", "blocks"]}	[]	2025-12-29 22:43:59.853	2025-12-29 22:43:59.853	2025-12-29 22:43:59.853	\N	\N	\N
41	bj9bxpew9k3861hc3v1306wc	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-12-29 22:43:59.858	2025-12-29 22:43:59.858	2025-12-29 22:43:59.858	\N	\N	\N
42	npgmzf7n7lqk1e09npij8djf	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-12-29 22:43:59.864	2025-12-29 22:43:59.864	2025-12-29 22:43:59.864	\N	\N	\N
43	anxjg59mx7dlocxohybp5up0	plugin::content-manager.explorer.update	{}	api::chat-response.chat-response	{"fields": ["trigger", "response", "enabled", "priority"]}	[]	2025-12-29 22:43:59.869	2025-12-29 22:43:59.869	2025-12-29 22:43:59.869	\N	\N	\N
44	dl59nh83hdbof70lidlrt076	plugin::content-manager.explorer.update	{}	api::contact-response.contact-response	{"fields": ["firstName", "lastName", "email", "phone", "requestType", "subject", "message"]}	[]	2025-12-29 22:43:59.875	2025-12-29 22:43:59.875	2025-12-29 22:43:59.875	\N	\N	\N
45	imr03gatgnvjaxmw2niv53zr	plugin::content-manager.explorer.update	{}	api::faq.faq	{"fields": ["question", "answer"]}	[]	2025-12-29 22:43:59.88	2025-12-29 22:43:59.88	2025-12-29 22:43:59.88	\N	\N	\N
46	w1wqnf94qiie80gk39uux2lm	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-12-29 22:43:59.885	2025-12-29 22:43:59.885	2025-12-29 22:43:59.886	\N	\N	\N
47	sm309cvdtxege25fj5pcg1ie	plugin::content-manager.explorer.update	{}	api::hero-media.hero-media	{"fields": ["firstItem", "secondItem", "thirdItem"]}	[]	2025-12-29 22:43:59.89	2025-12-29 22:43:59.89	2025-12-29 22:43:59.891	\N	\N	\N
48	r8fegz061eam05okf2gyehic	plugin::content-manager.explorer.update	{}	api::images-finition.images-finition	{"fields": ["semiFinition", "fini", "finitionTroisTiers"]}	[]	2025-12-29 22:43:59.896	2025-12-29 22:43:59.896	2025-12-29 22:43:59.896	\N	\N	\N
49	c0ivt3sl1l817ies7t9rze8h	plugin::content-manager.explorer.update	{}	api::locality.locality	{"fields": ["name", "image", "mapImage", "location"]}	[]	2025-12-29 22:43:59.901	2025-12-29 22:43:59.901	2025-12-29 22:43:59.901	\N	\N	\N
50	a12ug7hza4zufp7uko6g0grb	plugin::content-manager.explorer.update	{}	api::opportunity-moment.opportunity-moment	{"fields": ["detail", "location", "surface", "type", "price", "name", "typology", "image"]}	[]	2025-12-29 22:43:59.908	2025-12-29 22:43:59.908	2025-12-29 22:43:59.908	\N	\N	\N
51	vx1ox87h0mzf053669eehf4l	plugin::content-manager.explorer.update	{}	api::project.project	{"fields": ["name", "slug", "shortDescription", "description", "projectStatus", "location", "coverImage", "gallery", "mapImage", "features", "timings", "typologies"]}	[]	2025-12-29 22:43:59.914	2025-12-29 22:43:59.914	2025-12-29 22:43:59.914	\N	\N	\N
52	uaqvggttqsisas36zjia6zdd	plugin::content-manager.explorer.update	{}	api::project-contact.project-contact	{"fields": ["firstName", "lastName", "phone", "comment", "locality", "typology", "wilaya", "projectName"]}	[]	2025-12-29 22:43:59.92	2025-12-29 22:43:59.92	2025-12-29 22:43:59.92	\N	\N	\N
53	ylhr1ecv6yhcxkggav9pvru0	plugin::content-manager.explorer.update	{}	api::project-feature.project-feature	{"fields": ["key", "label", "value", "project"]}	[]	2025-12-29 22:43:59.926	2025-12-29 22:43:59.926	2025-12-29 22:43:59.926	\N	\N	\N
54	by6gm2f803n04zpvs7hkp0pw	plugin::content-manager.explorer.update	{}	api::project-timing.project-timing	{"fields": ["type", "minutes", "project"]}	[]	2025-12-29 22:43:59.931	2025-12-29 22:43:59.931	2025-12-29 22:43:59.931	\N	\N	\N
55	jyacz9fjpsraat4r25xogoqa	plugin::content-manager.explorer.update	{}	api::project-typologie.project-typologie	{"fields": ["code", "surfaceMin", "surfaceMax", "priceFrom", "statusTypologie", "project"]}	[]	2025-12-29 22:43:59.937	2025-12-29 22:43:59.937	2025-12-29 22:43:59.937	\N	\N	\N
56	ri1t595uhq7knob4who2hjfz	plugin::content-manager.explorer.update	{}	api::story.story	{"fields": ["title", "media", "test", "expiresAt", "isActive"]}	[]	2025-12-29 22:43:59.942	2025-12-29 22:43:59.942	2025-12-29 22:43:59.943	\N	\N	\N
57	in4m03ty6fhdeb9ail77cf7v	plugin::content-manager.explorer.update	{}	api::testimonial.testimonial	{"fields": ["link", "title"]}	[]	2025-12-29 22:43:59.948	2025-12-29 22:43:59.948	2025-12-29 22:43:59.948	\N	\N	\N
58	jo5bslxjz8437vcdtcyfmxy3	plugin::content-manager.explorer.delete	{}	api::about.about	{}	[]	2025-12-29 22:43:59.953	2025-12-29 22:43:59.953	2025-12-29 22:43:59.954	\N	\N	\N
59	sn8dv027gh9a65txchdzrz3u	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-12-29 22:43:59.959	2025-12-29 22:43:59.959	2025-12-29 22:43:59.959	\N	\N	\N
60	ujj7t35rea4sggqywjd5e3dm	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-12-29 22:43:59.965	2025-12-29 22:43:59.965	2025-12-29 22:43:59.965	\N	\N	\N
61	xp96s8kmvumg90fzt6t4xdgg	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-12-29 22:43:59.97	2025-12-29 22:43:59.97	2025-12-29 22:43:59.97	\N	\N	\N
62	isybwxys8400v2sl95qnezqz	plugin::content-manager.explorer.delete	{}	api::chat-response.chat-response	{}	[]	2025-12-29 22:43:59.975	2025-12-29 22:43:59.975	2025-12-29 22:43:59.975	\N	\N	\N
63	p4lmlydd0idvbrgu3fnd88u6	plugin::content-manager.explorer.delete	{}	api::contact-response.contact-response	{}	[]	2025-12-29 22:43:59.98	2025-12-29 22:43:59.98	2025-12-29 22:43:59.98	\N	\N	\N
64	aqgdve83j2owjyhec4gfe8qo	plugin::content-manager.explorer.delete	{}	api::faq.faq	{}	[]	2025-12-29 22:43:59.986	2025-12-29 22:43:59.986	2025-12-29 22:43:59.986	\N	\N	\N
65	jczilxsvzlbck5slfiibw18a	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2025-12-29 22:43:59.991	2025-12-29 22:43:59.991	2025-12-29 22:43:59.991	\N	\N	\N
67	ib9pjm1ifrkv3eiu3u22w6ay	plugin::content-manager.explorer.delete	{}	api::images-finition.images-finition	{}	[]	2025-12-29 22:44:00.002	2025-12-29 22:44:00.002	2025-12-29 22:44:00.002	\N	\N	\N
68	un7ldt4or2v7boybkscr8yts	plugin::content-manager.explorer.delete	{}	api::locality.locality	{}	[]	2025-12-29 22:44:00.007	2025-12-29 22:44:00.007	2025-12-29 22:44:00.007	\N	\N	\N
69	xvdj1d8sa1479qf7yei0p0l6	plugin::content-manager.explorer.delete	{}	api::opportunity-moment.opportunity-moment	{}	[]	2025-12-29 22:44:00.012	2025-12-29 22:44:00.012	2025-12-29 22:44:00.012	\N	\N	\N
70	anlog7ubymhn1kgflomlwnc2	plugin::content-manager.explorer.delete	{}	api::project.project	{}	[]	2025-12-29 22:44:00.017	2025-12-29 22:44:00.017	2025-12-29 22:44:00.017	\N	\N	\N
71	iclqzi3vv6bzrpm6uus2uuda	plugin::content-manager.explorer.delete	{}	api::project-contact.project-contact	{}	[]	2025-12-29 22:44:00.022	2025-12-29 22:44:00.022	2025-12-29 22:44:00.023	\N	\N	\N
72	y9xmqntymqu3k5bfaxndkybf	plugin::content-manager.explorer.delete	{}	api::project-feature.project-feature	{}	[]	2025-12-29 22:44:00.028	2025-12-29 22:44:00.028	2025-12-29 22:44:00.028	\N	\N	\N
73	hul2gn99ytpwuti0cxq3bx9k	plugin::content-manager.explorer.delete	{}	api::project-timing.project-timing	{}	[]	2025-12-29 22:44:00.033	2025-12-29 22:44:00.033	2025-12-29 22:44:00.033	\N	\N	\N
74	pmg07j2r1qlftrbmfwtghgeo	plugin::content-manager.explorer.delete	{}	api::project-typologie.project-typologie	{}	[]	2025-12-29 22:44:00.038	2025-12-29 22:44:00.038	2025-12-29 22:44:00.039	\N	\N	\N
75	fptjvp7vy1btw8q01kbzkoqj	plugin::content-manager.explorer.delete	{}	api::story.story	{}	[]	2025-12-29 22:44:00.045	2025-12-29 22:44:00.045	2025-12-29 22:44:00.045	\N	\N	\N
76	fkzth5ovgzejfeyg3aohr9yh	plugin::content-manager.explorer.delete	{}	api::testimonial.testimonial	{}	[]	2025-12-29 22:44:00.051	2025-12-29 22:44:00.051	2025-12-29 22:44:00.051	\N	\N	\N
77	cs8y92ihusnar2bfxax7nbib	plugin::content-manager.explorer.publish	{}	api::about.about	{}	[]	2025-12-29 22:44:00.059	2025-12-29 22:44:00.059	2025-12-29 22:44:00.059	\N	\N	\N
78	vm4khff5iddbxr5yfaioek10	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-12-29 22:44:00.065	2025-12-29 22:44:00.065	2025-12-29 22:44:00.065	\N	\N	\N
79	o0msgoyawwvtv9t64c7alm1p	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-12-29 22:44:00.071	2025-12-29 22:44:00.071	2025-12-29 22:44:00.071	\N	\N	\N
80	fqaz3mbmqrm7jahq0q4kc9gy	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-12-29 22:44:00.077	2025-12-29 22:44:00.077	2025-12-29 22:44:00.077	\N	\N	\N
81	kpudmc5qns9dezkhrrely1ul	plugin::content-manager.explorer.publish	{}	api::chat-response.chat-response	{}	[]	2025-12-29 22:44:00.085	2025-12-29 22:44:00.085	2025-12-29 22:44:00.085	\N	\N	\N
82	ruj1ws84aw5nxi6tvdrj2je9	plugin::content-manager.explorer.publish	{}	api::contact-response.contact-response	{}	[]	2025-12-29 22:44:00.092	2025-12-29 22:44:00.092	2025-12-29 22:44:00.092	\N	\N	\N
83	u3qcdxodrcqjoxslvmurp87g	plugin::content-manager.explorer.publish	{}	api::faq.faq	{}	[]	2025-12-29 22:44:00.098	2025-12-29 22:44:00.098	2025-12-29 22:44:00.098	\N	\N	\N
84	czrdhlge5yjyecxuirxi1us3	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2025-12-29 22:44:00.104	2025-12-29 22:44:00.104	2025-12-29 22:44:00.104	\N	\N	\N
85	wdkn71dj6y2qbrw5eiyajw4a	plugin::content-manager.explorer.publish	{}	api::hero-media.hero-media	{}	[]	2025-12-29 22:44:00.11	2025-12-29 22:44:00.11	2025-12-29 22:44:00.11	\N	\N	\N
86	jxovml0wtmpvwz21hwirrhi8	plugin::content-manager.explorer.publish	{}	api::images-finition.images-finition	{}	[]	2025-12-29 22:44:00.117	2025-12-29 22:44:00.117	2025-12-29 22:44:00.117	\N	\N	\N
87	ybq9e7t2y958gitfl4mpb3se	plugin::content-manager.explorer.publish	{}	api::locality.locality	{}	[]	2025-12-29 22:44:00.123	2025-12-29 22:44:00.123	2025-12-29 22:44:00.123	\N	\N	\N
88	r5krmdv7cikhita8idrddjnt	plugin::content-manager.explorer.publish	{}	api::opportunity-moment.opportunity-moment	{}	[]	2025-12-29 22:44:00.13	2025-12-29 22:44:00.13	2025-12-29 22:44:00.13	\N	\N	\N
89	lnnnerop6kyrgape04zgydao	plugin::content-manager.explorer.publish	{}	api::project.project	{}	[]	2025-12-29 22:44:00.136	2025-12-29 22:44:00.136	2025-12-29 22:44:00.136	\N	\N	\N
90	p72rm5q0etqfmx4m4hwu98f2	plugin::content-manager.explorer.publish	{}	api::project-contact.project-contact	{}	[]	2025-12-29 22:44:00.141	2025-12-29 22:44:00.141	2025-12-29 22:44:00.141	\N	\N	\N
91	dvxwvd8n7l3gxx79ysr5m7y3	plugin::content-manager.explorer.publish	{}	api::project-feature.project-feature	{}	[]	2025-12-29 22:44:00.146	2025-12-29 22:44:00.146	2025-12-29 22:44:00.146	\N	\N	\N
92	duc6wfr8p7cp0cn9j1w07inv	plugin::content-manager.explorer.publish	{}	api::project-timing.project-timing	{}	[]	2025-12-29 22:44:00.151	2025-12-29 22:44:00.151	2025-12-29 22:44:00.151	\N	\N	\N
93	auddtk792zr6c8cs870quvr7	plugin::content-manager.explorer.publish	{}	api::project-typologie.project-typologie	{}	[]	2025-12-29 22:44:00.157	2025-12-29 22:44:00.157	2025-12-29 22:44:00.157	\N	\N	\N
94	qpuotxw0ajmn18i78msraav8	plugin::content-manager.explorer.publish	{}	api::story.story	{}	[]	2025-12-29 22:44:00.162	2025-12-29 22:44:00.162	2025-12-29 22:44:00.162	\N	\N	\N
95	ry2n9un897q3k01x6u7rfxdc	plugin::content-manager.explorer.publish	{}	api::testimonial.testimonial	{}	[]	2025-12-29 22:44:00.167	2025-12-29 22:44:00.167	2025-12-29 22:44:00.167	\N	\N	\N
96	rmbtor6n0yleeezy9g0dncy6	plugin::upload.read	{}	\N	{}	[]	2025-12-29 22:44:00.172	2025-12-29 22:44:00.172	2025-12-29 22:44:00.172	\N	\N	\N
97	yghxoq790mgygrpc1evh02fr	plugin::upload.configure-view	{}	\N	{}	[]	2025-12-29 22:44:00.177	2025-12-29 22:44:00.177	2025-12-29 22:44:00.177	\N	\N	\N
98	nsvmhhldqdnp24w466olky2s	plugin::upload.assets.create	{}	\N	{}	[]	2025-12-29 22:44:00.182	2025-12-29 22:44:00.182	2025-12-29 22:44:00.182	\N	\N	\N
99	dwhnzm76a8s8f76tjc7crf3j	plugin::upload.assets.update	{}	\N	{}	[]	2025-12-29 22:44:00.189	2025-12-29 22:44:00.189	2025-12-29 22:44:00.189	\N	\N	\N
100	h59c45in2b4nd13m3dsml9xm	plugin::upload.assets.download	{}	\N	{}	[]	2025-12-29 22:44:00.195	2025-12-29 22:44:00.195	2025-12-29 22:44:00.195	\N	\N	\N
101	uhb6vu0151x3l2iydrhmpjgo	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-12-29 22:44:00.2	2025-12-29 22:44:00.2	2025-12-29 22:44:00.2	\N	\N	\N
102	m2hf0y9jtkqhma78er8414vc	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["ImageBanner", "ImageHistoire", "ImageVision"]}	["admin::is-creator"]	2025-12-29 22:44:00.217	2025-12-29 22:44:00.217	2025-12-29 22:44:00.217	\N	\N	\N
103	m8nnuax2zly6mt7frjwbmwob	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "shares", "slug", "cover", "author", "category", "blocks"]}	["admin::is-creator"]	2025-12-29 22:44:00.222	2025-12-29 22:44:00.222	2025-12-29 22:44:00.222	\N	\N	\N
104	li7r9baoo0aeuto7kcsa5efd	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2025-12-29 22:44:00.228	2025-12-29 22:44:00.228	2025-12-29 22:44:00.228	\N	\N	\N
105	t7plorpgb51j3gdczppr3pqh	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-12-29 22:44:00.233	2025-12-29 22:44:00.233	2025-12-29 22:44:00.233	\N	\N	\N
106	jws8n96gaod7fbsjw29dm1ey	plugin::content-manager.explorer.create	{}	api::chat-response.chat-response	{"fields": ["trigger", "response", "enabled", "priority"]}	["admin::is-creator"]	2025-12-29 22:44:00.238	2025-12-29 22:44:00.238	2025-12-29 22:44:00.238	\N	\N	\N
107	lniaad0jvhdelwdajm2z033m	plugin::content-manager.explorer.create	{}	api::contact-response.contact-response	{"fields": ["firstName", "lastName", "email", "phone", "requestType", "subject", "message"]}	["admin::is-creator"]	2025-12-29 22:44:00.243	2025-12-29 22:44:00.243	2025-12-29 22:44:00.244	\N	\N	\N
108	hnklez9lgq6x2e1bxhe7eaqf	plugin::content-manager.explorer.create	{}	api::faq.faq	{"fields": ["question", "answer"]}	["admin::is-creator"]	2025-12-29 22:44:00.249	2025-12-29 22:44:00.249	2025-12-29 22:44:00.249	\N	\N	\N
109	g61ldic104cw978hsbvnqy7d	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-12-29 22:44:00.254	2025-12-29 22:44:00.254	2025-12-29 22:44:00.254	\N	\N	\N
110	flxoz7fhqs9vs2ir9e14dy6o	plugin::content-manager.explorer.create	{}	api::hero-media.hero-media	{"fields": ["firstItem", "secondItem", "thirdItem"]}	["admin::is-creator"]	2025-12-29 22:44:00.259	2025-12-29 22:44:00.259	2025-12-29 22:44:00.259	\N	\N	\N
111	rbw9ei69kiymhwl8spxyw7eu	plugin::content-manager.explorer.create	{}	api::images-finition.images-finition	{"fields": ["semiFinition", "fini", "finitionTroisTiers"]}	["admin::is-creator"]	2025-12-29 22:44:00.264	2025-12-29 22:44:00.264	2025-12-29 22:44:00.264	\N	\N	\N
112	dvvymrdme6fwsya6juwdmnhx	plugin::content-manager.explorer.create	{}	api::locality.locality	{"fields": ["name", "image", "mapImage", "location"]}	["admin::is-creator"]	2025-12-29 22:44:00.27	2025-12-29 22:44:00.27	2025-12-29 22:44:00.27	\N	\N	\N
113	hjedwmgk9jimmyhqgsvek0ua	plugin::content-manager.explorer.create	{}	api::opportunity-moment.opportunity-moment	{"fields": ["detail", "location", "surface", "type", "price", "name", "typology", "image"]}	["admin::is-creator"]	2025-12-29 22:44:00.275	2025-12-29 22:44:00.275	2025-12-29 22:44:00.275	\N	\N	\N
114	snxjotfmkrkin2p9cosi6pw7	plugin::content-manager.explorer.create	{}	api::project.project	{"fields": ["name", "slug", "shortDescription", "description", "projectStatus", "location", "coverImage", "gallery", "mapImage", "features", "timings", "typologies"]}	["admin::is-creator"]	2025-12-29 22:44:00.28	2025-12-29 22:44:00.28	2025-12-29 22:44:00.28	\N	\N	\N
115	x6ff89xnyyj49mhi7z48kgee	plugin::content-manager.explorer.create	{}	api::project-contact.project-contact	{"fields": ["firstName", "lastName", "phone", "comment", "locality", "typology", "wilaya", "projectName"]}	["admin::is-creator"]	2025-12-29 22:44:00.286	2025-12-29 22:44:00.286	2025-12-29 22:44:00.286	\N	\N	\N
116	y4f3tt1w0rs1jgqpxy5w5klt	plugin::content-manager.explorer.create	{}	api::project-feature.project-feature	{"fields": ["key", "label", "value", "project"]}	["admin::is-creator"]	2025-12-29 22:44:00.292	2025-12-29 22:44:00.292	2025-12-29 22:44:00.292	\N	\N	\N
117	oczdcvsetipouzm87qwk12cj	plugin::content-manager.explorer.create	{}	api::project-timing.project-timing	{"fields": ["type", "minutes", "project"]}	["admin::is-creator"]	2025-12-29 22:44:00.297	2025-12-29 22:44:00.297	2025-12-29 22:44:00.297	\N	\N	\N
118	kkn81hmy2867idsqhav3sngc	plugin::content-manager.explorer.create	{}	api::project-typologie.project-typologie	{"fields": ["code", "surfaceMin", "surfaceMax", "priceFrom", "statusTypologie", "project"]}	["admin::is-creator"]	2025-12-29 22:44:00.302	2025-12-29 22:44:00.302	2025-12-29 22:44:00.303	\N	\N	\N
119	aoh6hs51je6d9sbv8y7oosou	plugin::content-manager.explorer.create	{}	api::story.story	{"fields": ["title", "media", "test", "expiresAt", "isActive"]}	["admin::is-creator"]	2025-12-29 22:44:00.307	2025-12-29 22:44:00.307	2025-12-29 22:44:00.308	\N	\N	\N
120	lfkpazwfxu6aghv23011rakw	plugin::content-manager.explorer.create	{}	api::testimonial.testimonial	{"fields": ["link", "title"]}	["admin::is-creator"]	2025-12-29 22:44:00.315	2025-12-29 22:44:00.315	2025-12-29 22:44:00.315	\N	\N	\N
121	p3o4b1w4wootmmflbi5o5frz	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["ImageBanner", "ImageHistoire", "ImageVision"]}	["admin::is-creator"]	2025-12-29 22:44:00.32	2025-12-29 22:44:00.32	2025-12-29 22:44:00.32	\N	\N	\N
122	g87kihetgtuctl753w6o9jkq	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "shares", "slug", "cover", "author", "category", "blocks"]}	["admin::is-creator"]	2025-12-29 22:44:00.326	2025-12-29 22:44:00.326	2025-12-29 22:44:00.326	\N	\N	\N
123	b8l3tvctb3dddccamf8aydak	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2025-12-29 22:44:00.331	2025-12-29 22:44:00.331	2025-12-29 22:44:00.331	\N	\N	\N
124	cbh2o1b4ssdk88cyy4912dmo	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-12-29 22:44:00.336	2025-12-29 22:44:00.336	2025-12-29 22:44:00.336	\N	\N	\N
125	k0tcb86svamrp5h4sl9l8fks	plugin::content-manager.explorer.read	{}	api::chat-response.chat-response	{"fields": ["trigger", "response", "enabled", "priority"]}	["admin::is-creator"]	2025-12-29 22:44:00.341	2025-12-29 22:44:00.341	2025-12-29 22:44:00.341	\N	\N	\N
126	oyqpsqb81x5l718kl7kqqobl	plugin::content-manager.explorer.read	{}	api::contact-response.contact-response	{"fields": ["firstName", "lastName", "email", "phone", "requestType", "subject", "message"]}	["admin::is-creator"]	2025-12-29 22:44:00.347	2025-12-29 22:44:00.347	2025-12-29 22:44:00.347	\N	\N	\N
127	d3ds2lk8mkd40i3lzbf702br	plugin::content-manager.explorer.read	{}	api::faq.faq	{"fields": ["question", "answer"]}	["admin::is-creator"]	2025-12-29 22:44:00.352	2025-12-29 22:44:00.352	2025-12-29 22:44:00.352	\N	\N	\N
128	y1kka6euhob64suz247a8xre	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-12-29 22:44:00.357	2025-12-29 22:44:00.357	2025-12-29 22:44:00.357	\N	\N	\N
129	r69t7x52fmjd5exfab3b12kb	plugin::content-manager.explorer.read	{}	api::hero-media.hero-media	{"fields": ["firstItem", "secondItem", "thirdItem"]}	["admin::is-creator"]	2025-12-29 22:44:00.362	2025-12-29 22:44:00.362	2025-12-29 22:44:00.362	\N	\N	\N
130	vo31r65bgghbfq3orj94h2tf	plugin::content-manager.explorer.read	{}	api::images-finition.images-finition	{"fields": ["semiFinition", "fini", "finitionTroisTiers"]}	["admin::is-creator"]	2025-12-29 22:44:00.368	2025-12-29 22:44:00.368	2025-12-29 22:44:00.368	\N	\N	\N
131	bg5vu97fy07zbccu4puahu88	plugin::content-manager.explorer.read	{}	api::locality.locality	{"fields": ["name", "image", "mapImage", "location"]}	["admin::is-creator"]	2025-12-29 22:44:00.373	2025-12-29 22:44:00.373	2025-12-29 22:44:00.373	\N	\N	\N
132	owv83hlhp41hoe43teqzzllt	plugin::content-manager.explorer.read	{}	api::opportunity-moment.opportunity-moment	{"fields": ["detail", "location", "surface", "type", "price", "name", "typology", "image"]}	["admin::is-creator"]	2025-12-29 22:44:00.378	2025-12-29 22:44:00.378	2025-12-29 22:44:00.378	\N	\N	\N
133	h6r4d4l3xa8vemv5actcflk5	plugin::content-manager.explorer.read	{}	api::project.project	{"fields": ["name", "slug", "shortDescription", "description", "projectStatus", "location", "coverImage", "gallery", "mapImage", "features", "timings", "typologies"]}	["admin::is-creator"]	2025-12-29 22:44:00.384	2025-12-29 22:44:00.384	2025-12-29 22:44:00.385	\N	\N	\N
134	l7pl97thl31303ijvzle2abr	plugin::content-manager.explorer.read	{}	api::project-contact.project-contact	{"fields": ["firstName", "lastName", "phone", "comment", "locality", "typology", "wilaya", "projectName"]}	["admin::is-creator"]	2025-12-29 22:44:00.39	2025-12-29 22:44:00.39	2025-12-29 22:44:00.391	\N	\N	\N
135	v48rrzvldryab4nlw2bxm44o	plugin::content-manager.explorer.read	{}	api::project-feature.project-feature	{"fields": ["key", "label", "value", "project"]}	["admin::is-creator"]	2025-12-29 22:44:00.397	2025-12-29 22:44:00.397	2025-12-29 22:44:00.397	\N	\N	\N
136	w5vsi7xo7jw5ztcvn0px8a50	plugin::content-manager.explorer.read	{}	api::project-timing.project-timing	{"fields": ["type", "minutes", "project"]}	["admin::is-creator"]	2025-12-29 22:44:00.403	2025-12-29 22:44:00.403	2025-12-29 22:44:00.403	\N	\N	\N
137	j7l0v69nm2yif5tlzsp8dx3a	plugin::content-manager.explorer.read	{}	api::project-typologie.project-typologie	{"fields": ["code", "surfaceMin", "surfaceMax", "priceFrom", "statusTypologie", "project"]}	["admin::is-creator"]	2025-12-29 22:44:00.409	2025-12-29 22:44:00.409	2025-12-29 22:44:00.409	\N	\N	\N
138	okzpcyywp0l4ht566iyi6bne	plugin::content-manager.explorer.read	{}	api::story.story	{"fields": ["title", "media", "test", "expiresAt", "isActive"]}	["admin::is-creator"]	2025-12-29 22:44:00.435	2025-12-29 22:44:00.435	2025-12-29 22:44:00.436	\N	\N	\N
139	txf8x4x87nwa7kgwhqw8d524	plugin::content-manager.explorer.read	{}	api::testimonial.testimonial	{"fields": ["link", "title"]}	["admin::is-creator"]	2025-12-29 22:44:00.441	2025-12-29 22:44:00.441	2025-12-29 22:44:00.442	\N	\N	\N
140	nw88kjyiosovqzxmamuk1rwk	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["ImageBanner", "ImageHistoire", "ImageVision"]}	["admin::is-creator"]	2025-12-29 22:44:00.448	2025-12-29 22:44:00.448	2025-12-29 22:44:00.449	\N	\N	\N
141	ghevca1ycu8sq42yx33limgf	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "shares", "slug", "cover", "author", "category", "blocks"]}	["admin::is-creator"]	2025-12-29 22:44:00.456	2025-12-29 22:44:00.456	2025-12-29 22:44:00.456	\N	\N	\N
142	calkavvnfpuhpwf273qetdvt	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	["admin::is-creator"]	2025-12-29 22:44:00.462	2025-12-29 22:44:00.462	2025-12-29 22:44:00.462	\N	\N	\N
143	ksja1oysm5yrdqlw93s2untm	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	["admin::is-creator"]	2025-12-29 22:44:00.469	2025-12-29 22:44:00.469	2025-12-29 22:44:00.469	\N	\N	\N
144	y2fcmyh63ns0d3mcdfs29pny	plugin::content-manager.explorer.update	{}	api::chat-response.chat-response	{"fields": ["trigger", "response", "enabled", "priority"]}	["admin::is-creator"]	2025-12-29 22:44:00.474	2025-12-29 22:44:00.474	2025-12-29 22:44:00.475	\N	\N	\N
145	psttbq6j86xl78djo56migi0	plugin::content-manager.explorer.update	{}	api::contact-response.contact-response	{"fields": ["firstName", "lastName", "email", "phone", "requestType", "subject", "message"]}	["admin::is-creator"]	2025-12-29 22:44:00.48	2025-12-29 22:44:00.48	2025-12-29 22:44:00.48	\N	\N	\N
146	b2xha99nou4d7beutdvqgitp	plugin::content-manager.explorer.update	{}	api::faq.faq	{"fields": ["question", "answer"]}	["admin::is-creator"]	2025-12-29 22:44:00.486	2025-12-29 22:44:00.486	2025-12-29 22:44:00.486	\N	\N	\N
147	ktekl0tgu2ehd9hv3p6m4aam	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	["admin::is-creator"]	2025-12-29 22:44:00.492	2025-12-29 22:44:00.492	2025-12-29 22:44:00.492	\N	\N	\N
148	vg0tmy474w6cy0zttjx0ahbx	plugin::content-manager.explorer.update	{}	api::hero-media.hero-media	{"fields": ["firstItem", "secondItem", "thirdItem"]}	["admin::is-creator"]	2025-12-29 22:44:00.498	2025-12-29 22:44:00.498	2025-12-29 22:44:00.499	\N	\N	\N
149	uuvkk3z2s3x9wq6t6wa65j8t	plugin::content-manager.explorer.update	{}	api::images-finition.images-finition	{"fields": ["semiFinition", "fini", "finitionTroisTiers"]}	["admin::is-creator"]	2025-12-29 22:44:00.505	2025-12-29 22:44:00.505	2025-12-29 22:44:00.505	\N	\N	\N
150	p28i9gqbmzw99ijyiufr1z05	plugin::content-manager.explorer.update	{}	api::locality.locality	{"fields": ["name", "image", "mapImage", "location"]}	["admin::is-creator"]	2025-12-29 22:44:00.511	2025-12-29 22:44:00.511	2025-12-29 22:44:00.511	\N	\N	\N
151	uq4vkp8ahr14r84vj90iyxsf	plugin::content-manager.explorer.update	{}	api::opportunity-moment.opportunity-moment	{"fields": ["detail", "location", "surface", "type", "price", "name", "typology", "image"]}	["admin::is-creator"]	2025-12-29 22:44:00.518	2025-12-29 22:44:00.518	2025-12-29 22:44:00.518	\N	\N	\N
152	jlxliwomu0yc35leuse1b1rq	plugin::content-manager.explorer.update	{}	api::project.project	{"fields": ["name", "slug", "shortDescription", "description", "projectStatus", "location", "coverImage", "gallery", "mapImage", "features", "timings", "typologies"]}	["admin::is-creator"]	2025-12-29 22:44:00.523	2025-12-29 22:44:00.523	2025-12-29 22:44:00.523	\N	\N	\N
153	h5i1kar3ky4c1tdv7vw9bqi0	plugin::content-manager.explorer.update	{}	api::project-contact.project-contact	{"fields": ["firstName", "lastName", "phone", "comment", "locality", "typology", "wilaya", "projectName"]}	["admin::is-creator"]	2025-12-29 22:44:00.529	2025-12-29 22:44:00.529	2025-12-29 22:44:00.529	\N	\N	\N
154	ytnsk06engroetdm1kts3ngc	plugin::content-manager.explorer.update	{}	api::project-feature.project-feature	{"fields": ["key", "label", "value", "project"]}	["admin::is-creator"]	2025-12-29 22:44:00.542	2025-12-29 22:44:00.542	2025-12-29 22:44:00.542	\N	\N	\N
155	uxyd1bgq30lmhyeu7u35ecux	plugin::content-manager.explorer.update	{}	api::project-timing.project-timing	{"fields": ["type", "minutes", "project"]}	["admin::is-creator"]	2025-12-29 22:44:00.548	2025-12-29 22:44:00.548	2025-12-29 22:44:00.548	\N	\N	\N
156	ef5h7tbtl6pugzdw42f58u9p	plugin::content-manager.explorer.update	{}	api::project-typologie.project-typologie	{"fields": ["code", "surfaceMin", "surfaceMax", "priceFrom", "statusTypologie", "project"]}	["admin::is-creator"]	2025-12-29 22:44:00.555	2025-12-29 22:44:00.555	2025-12-29 22:44:00.555	\N	\N	\N
157	w6qaxq94kx685xhhpep5ag4g	plugin::content-manager.explorer.update	{}	api::story.story	{"fields": ["title", "media", "test", "expiresAt", "isActive"]}	["admin::is-creator"]	2025-12-29 22:44:00.561	2025-12-29 22:44:00.561	2025-12-29 22:44:00.561	\N	\N	\N
158	ipnlfjhn8wtjss9fsawjev1h	plugin::content-manager.explorer.update	{}	api::testimonial.testimonial	{"fields": ["link", "title"]}	["admin::is-creator"]	2025-12-29 22:44:00.568	2025-12-29 22:44:00.568	2025-12-29 22:44:00.568	\N	\N	\N
159	u27i5gk5r53oathannyp83zd	plugin::content-manager.explorer.delete	{}	api::about.about	{}	["admin::is-creator"]	2025-12-29 22:44:00.575	2025-12-29 22:44:00.575	2025-12-29 22:44:00.575	\N	\N	\N
160	ehj45ti2k5hu2pphs3cwlhfk	plugin::content-manager.explorer.delete	{}	api::article.article	{}	["admin::is-creator"]	2025-12-29 22:44:00.582	2025-12-29 22:44:00.582	2025-12-29 22:44:00.582	\N	\N	\N
161	witfmx9rm84gcpx03p0rlpan	plugin::content-manager.explorer.delete	{}	api::author.author	{}	["admin::is-creator"]	2025-12-29 22:44:00.588	2025-12-29 22:44:00.588	2025-12-29 22:44:00.588	\N	\N	\N
162	qov0fk9icfnofuups740t75p	plugin::content-manager.explorer.delete	{}	api::category.category	{}	["admin::is-creator"]	2025-12-29 22:44:00.595	2025-12-29 22:44:00.595	2025-12-29 22:44:00.595	\N	\N	\N
163	d1pzt7idu5fh0dnhtt07k0y4	plugin::content-manager.explorer.delete	{}	api::chat-response.chat-response	{}	["admin::is-creator"]	2025-12-29 22:44:00.601	2025-12-29 22:44:00.601	2025-12-29 22:44:00.601	\N	\N	\N
164	g5o7caun06ts29a19x5jfprx	plugin::content-manager.explorer.delete	{}	api::contact-response.contact-response	{}	["admin::is-creator"]	2025-12-29 22:44:00.607	2025-12-29 22:44:00.607	2025-12-29 22:44:00.607	\N	\N	\N
165	tp9vhagwzo7krxuleree0pdz	plugin::content-manager.explorer.delete	{}	api::faq.faq	{}	["admin::is-creator"]	2025-12-29 22:44:00.614	2025-12-29 22:44:00.614	2025-12-29 22:44:00.614	\N	\N	\N
166	we6ioh1roi4ruwxkumqi31qb	plugin::content-manager.explorer.delete	{}	api::global.global	{}	["admin::is-creator"]	2025-12-29 22:44:00.62	2025-12-29 22:44:00.62	2025-12-29 22:44:00.62	\N	\N	\N
167	xq5sr1ef32h8bdg7qsk3tcml	plugin::content-manager.explorer.delete	{}	api::hero-media.hero-media	{}	["admin::is-creator"]	2025-12-29 22:44:00.627	2025-12-29 22:44:00.627	2025-12-29 22:44:00.627	\N	\N	\N
168	be5ggrdmjxfykd621t5yyw0q	plugin::content-manager.explorer.delete	{}	api::images-finition.images-finition	{}	["admin::is-creator"]	2025-12-29 22:44:00.633	2025-12-29 22:44:00.633	2025-12-29 22:44:00.633	\N	\N	\N
169	mwixroud8k6jub4s5t4d5owr	plugin::content-manager.explorer.delete	{}	api::locality.locality	{}	["admin::is-creator"]	2025-12-29 22:44:00.643	2025-12-29 22:44:00.643	2025-12-29 22:44:00.643	\N	\N	\N
170	oc3v7feb4kcezaha3uzmx1sc	plugin::content-manager.explorer.delete	{}	api::opportunity-moment.opportunity-moment	{}	["admin::is-creator"]	2025-12-29 22:44:00.649	2025-12-29 22:44:00.649	2025-12-29 22:44:00.649	\N	\N	\N
171	d4rth72oqvckk1o6x8vcadfm	plugin::content-manager.explorer.delete	{}	api::project.project	{}	["admin::is-creator"]	2025-12-29 22:44:00.655	2025-12-29 22:44:00.655	2025-12-29 22:44:00.655	\N	\N	\N
172	f4johuvz9aorqnzhlhb2zcxm	plugin::content-manager.explorer.delete	{}	api::project-contact.project-contact	{}	["admin::is-creator"]	2025-12-29 22:44:00.661	2025-12-29 22:44:00.661	2025-12-29 22:44:00.661	\N	\N	\N
173	uqi4fah0kx732f63xcfip0dn	plugin::content-manager.explorer.delete	{}	api::project-feature.project-feature	{}	["admin::is-creator"]	2025-12-29 22:44:00.668	2025-12-29 22:44:00.668	2025-12-29 22:44:00.668	\N	\N	\N
174	tk2c2ood5g1dxndqy9lpqifz	plugin::content-manager.explorer.delete	{}	api::project-timing.project-timing	{}	["admin::is-creator"]	2025-12-29 22:44:00.674	2025-12-29 22:44:00.674	2025-12-29 22:44:00.675	\N	\N	\N
175	dabih0bheiagwp2iflp3bt4a	plugin::content-manager.explorer.delete	{}	api::project-typologie.project-typologie	{}	["admin::is-creator"]	2025-12-29 22:44:00.682	2025-12-29 22:44:00.682	2025-12-29 22:44:00.682	\N	\N	\N
176	oqef0io6t9l2b9sjzdljdc2o	plugin::content-manager.explorer.delete	{}	api::story.story	{}	["admin::is-creator"]	2025-12-29 22:44:00.688	2025-12-29 22:44:00.688	2025-12-29 22:44:00.689	\N	\N	\N
177	lh221kaqfs0u8kntzmsnykb5	plugin::content-manager.explorer.delete	{}	api::testimonial.testimonial	{}	["admin::is-creator"]	2025-12-29 22:44:00.696	2025-12-29 22:44:00.696	2025-12-29 22:44:00.696	\N	\N	\N
178	ngpfhmbviuouopc6gmuewf5t	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2025-12-29 22:44:00.702	2025-12-29 22:44:00.702	2025-12-29 22:44:00.702	\N	\N	\N
179	tk10oqj1gx0uo7obhg8l0hnq	plugin::upload.configure-view	{}	\N	{}	[]	2025-12-29 22:44:00.709	2025-12-29 22:44:00.709	2025-12-29 22:44:00.709	\N	\N	\N
180	iv9xnksxhb3dc449mgj5qbxu	plugin::upload.assets.create	{}	\N	{}	[]	2025-12-29 22:44:00.716	2025-12-29 22:44:00.716	2025-12-29 22:44:00.717	\N	\N	\N
181	l6i3ggg3v901o8d7wrp9yg6y	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2025-12-29 22:44:00.722	2025-12-29 22:44:00.722	2025-12-29 22:44:00.723	\N	\N	\N
182	f3w6t91flxt7702nc4b0dz0z	plugin::upload.assets.download	{}	\N	{}	[]	2025-12-29 22:44:00.728	2025-12-29 22:44:00.728	2025-12-29 22:44:00.728	\N	\N	\N
183	o14xrfravwumz77oei8lty0s	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-12-29 22:44:00.734	2025-12-29 22:44:00.734	2025-12-29 22:44:00.734	\N	\N	\N
184	iz6yssqn0gwiwarb45br15ow	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-12-29 22:44:00.815	2025-12-29 22:44:00.815	2025-12-29 22:44:00.815	\N	\N	\N
185	spi77gn8r6hiuvehfd5ojjuq	plugin::content-manager.explorer.create	{}	api::about.about	{"fields": ["ImageBanner", "ImageHistoire", "ImageVision"]}	[]	2025-12-29 22:44:00.821	2025-12-29 22:44:00.821	2025-12-29 22:44:00.821	\N	\N	\N
186	mic3f17dpq1qbmakof6opk29	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "description", "shares", "slug", "cover", "author", "category", "blocks"]}	[]	2025-12-29 22:44:00.827	2025-12-29 22:44:00.827	2025-12-29 22:44:00.827	\N	\N	\N
187	h7hzhdkbj4puo50zmn2r7wx1	plugin::content-manager.explorer.create	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-12-29 22:44:00.832	2025-12-29 22:44:00.832	2025-12-29 22:44:00.832	\N	\N	\N
188	p2xov3o63vqxel8oadaxt0cg	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-12-29 22:44:00.839	2025-12-29 22:44:00.839	2025-12-29 22:44:00.839	\N	\N	\N
189	ig4p8xy4i5n05kcpfm5o9vbu	plugin::content-manager.explorer.create	{}	api::chat-response.chat-response	{"fields": ["trigger", "response", "enabled", "priority"]}	[]	2025-12-29 22:44:00.845	2025-12-29 22:44:00.845	2025-12-29 22:44:00.845	\N	\N	\N
190	cxguhb9hx70mlmmm1oog28j5	plugin::content-manager.explorer.create	{}	api::contact-response.contact-response	{"fields": ["firstName", "lastName", "email", "phone", "requestType", "subject", "message"]}	[]	2025-12-29 22:44:00.85	2025-12-29 22:44:00.85	2025-12-29 22:44:00.85	\N	\N	\N
191	iuf53jir1lckmiuv1rd70pe9	plugin::content-manager.explorer.create	{}	api::faq.faq	{"fields": ["question", "answer"]}	[]	2025-12-29 22:44:00.856	2025-12-29 22:44:00.856	2025-12-29 22:44:00.856	\N	\N	\N
192	idmt8g0zs4adz16ukqg1ejpi	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-12-29 22:44:00.861	2025-12-29 22:44:00.861	2025-12-29 22:44:00.861	\N	\N	\N
193	uy91pbwd0sxehy4mgyp122lh	plugin::content-manager.explorer.create	{}	api::hero-media.hero-media	{"fields": ["firstItem", "secondItem", "thirdItem"]}	[]	2025-12-29 22:44:00.867	2025-12-29 22:44:00.867	2025-12-29 22:44:00.867	\N	\N	\N
194	rihf5useb9udfxspm6k8hk3j	plugin::content-manager.explorer.create	{}	api::images-finition.images-finition	{"fields": ["semiFinition", "fini", "finitionTroisTiers"]}	[]	2025-12-29 22:44:00.872	2025-12-29 22:44:00.872	2025-12-29 22:44:00.873	\N	\N	\N
195	xkiyfb7qyxakdcgunm2rh74r	plugin::content-manager.explorer.create	{}	api::locality.locality	{"fields": ["name", "image", "mapImage", "location"]}	[]	2025-12-29 22:44:00.878	2025-12-29 22:44:00.878	2025-12-29 22:44:00.878	\N	\N	\N
196	oocykilzln0mznxw9ggykzcc	plugin::content-manager.explorer.create	{}	api::opportunity-moment.opportunity-moment	{"fields": ["detail", "location", "surface", "type", "price", "name", "typology", "image"]}	[]	2025-12-29 22:44:00.884	2025-12-29 22:44:00.884	2025-12-29 22:44:00.884	\N	\N	\N
197	ro8xj34kur2y29gzk5lk6q8i	plugin::content-manager.explorer.create	{}	api::project.project	{"fields": ["name", "slug", "shortDescription", "description", "projectStatus", "location", "coverImage", "gallery", "mapImage", "features", "timings", "typologies"]}	[]	2025-12-29 22:44:00.889	2025-12-29 22:44:00.889	2025-12-29 22:44:00.89	\N	\N	\N
198	zvsj7xcaxwb513dux97m2hwp	plugin::content-manager.explorer.create	{}	api::project-contact.project-contact	{"fields": ["firstName", "lastName", "phone", "comment", "locality", "typology", "wilaya", "projectName"]}	[]	2025-12-29 22:44:00.895	2025-12-29 22:44:00.895	2025-12-29 22:44:00.895	\N	\N	\N
199	zfnx4i3s12jojqchld1bht9v	plugin::content-manager.explorer.create	{}	api::project-feature.project-feature	{"fields": ["key", "label", "value", "project"]}	[]	2025-12-29 22:44:00.9	2025-12-29 22:44:00.9	2025-12-29 22:44:00.9	\N	\N	\N
200	rkb1e3wnzp5dlp4pq6enr3zd	plugin::content-manager.explorer.create	{}	api::project-timing.project-timing	{"fields": ["type", "minutes", "project"]}	[]	2025-12-29 22:44:00.905	2025-12-29 22:44:00.905	2025-12-29 22:44:00.905	\N	\N	\N
201	o7ho547qye3iyekhp2uu7p0o	plugin::content-manager.explorer.create	{}	api::project-typologie.project-typologie	{"fields": ["code", "surfaceMin", "surfaceMax", "priceFrom", "statusTypologie", "project"]}	[]	2025-12-29 22:44:00.91	2025-12-29 22:44:00.91	2025-12-29 22:44:00.91	\N	\N	\N
202	lnl2a98faw4chsr3knras4qe	plugin::content-manager.explorer.create	{}	api::story.story	{"fields": ["title", "media", "test", "expiresAt", "isActive"]}	[]	2025-12-29 22:44:00.915	2025-12-29 22:44:00.915	2025-12-29 22:44:00.915	\N	\N	\N
203	eozcg6jh7w0tswdc98rximfq	plugin::content-manager.explorer.create	{}	api::testimonial.testimonial	{"fields": ["link", "title"]}	[]	2025-12-29 22:44:00.92	2025-12-29 22:44:00.92	2025-12-29 22:44:00.92	\N	\N	\N
204	p99drkojfer8pyte9fcjdkle	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-12-29 22:44:00.925	2025-12-29 22:44:00.925	2025-12-29 22:44:00.925	\N	\N	\N
205	jwqrgdfko4syez1c7zj7lo8e	plugin::content-manager.explorer.read	{}	api::about.about	{"fields": ["ImageBanner", "ImageHistoire", "ImageVision"]}	[]	2025-12-29 22:44:00.93	2025-12-29 22:44:00.93	2025-12-29 22:44:00.93	\N	\N	\N
206	ty9veeqfzjensf8u0nzc8c8i	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "description", "shares", "slug", "cover", "author", "category", "blocks"]}	[]	2025-12-29 22:44:00.935	2025-12-29 22:44:00.935	2025-12-29 22:44:00.935	\N	\N	\N
207	cv6xwfzyh2fwxv13cybsmjmx	plugin::content-manager.explorer.read	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-12-29 22:44:00.94	2025-12-29 22:44:00.94	2025-12-29 22:44:00.94	\N	\N	\N
208	y28f1f6wf09ozv23f9bknny2	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-12-29 22:44:00.945	2025-12-29 22:44:00.945	2025-12-29 22:44:00.946	\N	\N	\N
209	ebdzu6lca2s0cv8g0lhcmyx1	plugin::content-manager.explorer.read	{}	api::chat-response.chat-response	{"fields": ["trigger", "response", "enabled", "priority"]}	[]	2025-12-29 22:44:00.95	2025-12-29 22:44:00.95	2025-12-29 22:44:00.95	\N	\N	\N
210	hnp4b60qf0rdy7x97migou74	plugin::content-manager.explorer.read	{}	api::contact-response.contact-response	{"fields": ["firstName", "lastName", "email", "phone", "requestType", "subject", "message"]}	[]	2025-12-29 22:44:00.955	2025-12-29 22:44:00.955	2025-12-29 22:44:00.955	\N	\N	\N
211	hrrbwsjo76kjrkkg7sigfc6j	plugin::content-manager.explorer.read	{}	api::faq.faq	{"fields": ["question", "answer"]}	[]	2025-12-29 22:44:00.959	2025-12-29 22:44:00.959	2025-12-29 22:44:00.959	\N	\N	\N
212	hnbzgahjof3beruihja2i23y	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-12-29 22:44:00.964	2025-12-29 22:44:00.964	2025-12-29 22:44:00.964	\N	\N	\N
213	ff9k6dcumxm6bnpm5dx11o8q	plugin::content-manager.explorer.read	{}	api::hero-media.hero-media	{"fields": ["firstItem", "secondItem", "thirdItem"]}	[]	2025-12-29 22:44:00.969	2025-12-29 22:44:00.969	2025-12-29 22:44:00.969	\N	\N	\N
214	uib1dxd8nfl1qtbl450t3pta	plugin::content-manager.explorer.read	{}	api::images-finition.images-finition	{"fields": ["semiFinition", "fini", "finitionTroisTiers"]}	[]	2025-12-29 22:44:00.973	2025-12-29 22:44:00.973	2025-12-29 22:44:00.973	\N	\N	\N
215	zh1nkzbti6xtm671iighivrb	plugin::content-manager.explorer.read	{}	api::locality.locality	{"fields": ["name", "image", "mapImage", "location"]}	[]	2025-12-29 22:44:00.978	2025-12-29 22:44:00.978	2025-12-29 22:44:00.978	\N	\N	\N
216	l5md8asap3bmtmqil6yxqk30	plugin::content-manager.explorer.read	{}	api::opportunity-moment.opportunity-moment	{"fields": ["detail", "location", "surface", "type", "price", "name", "typology", "image"]}	[]	2025-12-29 22:44:00.982	2025-12-29 22:44:00.982	2025-12-29 22:44:00.982	\N	\N	\N
217	gtw3g9x0x7g7yb7tre33qnzz	plugin::content-manager.explorer.read	{}	api::project.project	{"fields": ["name", "slug", "shortDescription", "description", "projectStatus", "location", "coverImage", "gallery", "mapImage", "features", "timings", "typologies"]}	[]	2025-12-29 22:44:00.987	2025-12-29 22:44:00.987	2025-12-29 22:44:00.987	\N	\N	\N
218	qfqaf8o5dhlhgbomjfbbxvgr	plugin::content-manager.explorer.read	{}	api::project-contact.project-contact	{"fields": ["firstName", "lastName", "phone", "comment", "locality", "typology", "wilaya", "projectName"]}	[]	2025-12-29 22:44:00.991	2025-12-29 22:44:00.991	2025-12-29 22:44:00.992	\N	\N	\N
219	hvju0gx62iy6f65i1az94uri	plugin::content-manager.explorer.read	{}	api::project-feature.project-feature	{"fields": ["key", "label", "value", "project"]}	[]	2025-12-29 22:44:00.998	2025-12-29 22:44:00.998	2025-12-29 22:44:00.998	\N	\N	\N
220	o7hk0phibmim7kaydhm1owi0	plugin::content-manager.explorer.read	{}	api::project-timing.project-timing	{"fields": ["type", "minutes", "project"]}	[]	2025-12-29 22:44:01.004	2025-12-29 22:44:01.004	2025-12-29 22:44:01.004	\N	\N	\N
221	k7bejdxfewxobnl3y6n85jav	plugin::content-manager.explorer.read	{}	api::project-typologie.project-typologie	{"fields": ["code", "surfaceMin", "surfaceMax", "priceFrom", "statusTypologie", "project"]}	[]	2025-12-29 22:44:01.009	2025-12-29 22:44:01.009	2025-12-29 22:44:01.009	\N	\N	\N
222	yar2lu35s90qx21ykaokma1e	plugin::content-manager.explorer.read	{}	api::story.story	{"fields": ["title", "media", "test", "expiresAt", "isActive"]}	[]	2025-12-29 22:44:01.014	2025-12-29 22:44:01.014	2025-12-29 22:44:01.014	\N	\N	\N
223	v3v8u35t8xhvkcqcc1n8fuml	plugin::content-manager.explorer.read	{}	api::testimonial.testimonial	{"fields": ["link", "title"]}	[]	2025-12-29 22:44:01.019	2025-12-29 22:44:01.019	2025-12-29 22:44:01.019	\N	\N	\N
224	ohmfha6rtm7wuqmaz52rceqc	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-12-29 22:44:01.023	2025-12-29 22:44:01.023	2025-12-29 22:44:01.024	\N	\N	\N
225	pz3prrbqth9iv0z952dz1bvh	plugin::content-manager.explorer.update	{}	api::about.about	{"fields": ["ImageBanner", "ImageHistoire", "ImageVision"]}	[]	2025-12-29 22:44:01.028	2025-12-29 22:44:01.028	2025-12-29 22:44:01.028	\N	\N	\N
226	quqmxs9cg0hsse0tv4xx0ssg	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "description", "shares", "slug", "cover", "author", "category", "blocks"]}	[]	2025-12-29 22:44:01.032	2025-12-29 22:44:01.032	2025-12-29 22:44:01.033	\N	\N	\N
227	wwsz7alivixgf87mkj6ailh7	plugin::content-manager.explorer.update	{}	api::author.author	{"fields": ["name", "avatar", "email", "articles"]}	[]	2025-12-29 22:44:01.037	2025-12-29 22:44:01.037	2025-12-29 22:44:01.038	\N	\N	\N
228	epk4pqwmlxgkijf3itr9l7dy	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug", "articles", "description"]}	[]	2025-12-29 22:44:01.043	2025-12-29 22:44:01.043	2025-12-29 22:44:01.043	\N	\N	\N
229	bs0s0t82xc6zuq0y7es2fnjd	plugin::content-manager.explorer.update	{}	api::chat-response.chat-response	{"fields": ["trigger", "response", "enabled", "priority"]}	[]	2025-12-29 22:44:01.048	2025-12-29 22:44:01.048	2025-12-29 22:44:01.048	\N	\N	\N
230	lt7xrt6v7qjiqfw6c5ctg7ag	plugin::content-manager.explorer.update	{}	api::contact-response.contact-response	{"fields": ["firstName", "lastName", "email", "phone", "requestType", "subject", "message"]}	[]	2025-12-29 22:44:01.053	2025-12-29 22:44:01.053	2025-12-29 22:44:01.053	\N	\N	\N
231	fuoz9gfrkp8yniolgb1uoqe0	plugin::content-manager.explorer.update	{}	api::faq.faq	{"fields": ["question", "answer"]}	[]	2025-12-29 22:44:01.057	2025-12-29 22:44:01.057	2025-12-29 22:44:01.057	\N	\N	\N
232	xnpmygts3rp1x9kuvw3olepf	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription", "defaultSeo.metaTitle", "defaultSeo.metaDescription", "defaultSeo.shareImage"]}	[]	2025-12-29 22:44:01.063	2025-12-29 22:44:01.063	2025-12-29 22:44:01.063	\N	\N	\N
233	zfo775xtmi6u4gjg0sgrrg5r	plugin::content-manager.explorer.update	{}	api::hero-media.hero-media	{"fields": ["firstItem", "secondItem", "thirdItem"]}	[]	2025-12-29 22:44:01.069	2025-12-29 22:44:01.069	2025-12-29 22:44:01.07	\N	\N	\N
234	u4j4wgndphlcujz9a1xsnal1	plugin::content-manager.explorer.update	{}	api::images-finition.images-finition	{"fields": ["semiFinition", "fini", "finitionTroisTiers"]}	[]	2025-12-29 22:44:01.076	2025-12-29 22:44:01.076	2025-12-29 22:44:01.076	\N	\N	\N
235	yawnmr928p17zd7p570wax6a	plugin::content-manager.explorer.update	{}	api::locality.locality	{"fields": ["name", "image", "mapImage", "location"]}	[]	2025-12-29 22:44:01.081	2025-12-29 22:44:01.081	2025-12-29 22:44:01.082	\N	\N	\N
236	vc4brigha46jn134dcu4vjbi	plugin::content-manager.explorer.update	{}	api::opportunity-moment.opportunity-moment	{"fields": ["detail", "location", "surface", "type", "price", "name", "typology", "image"]}	[]	2025-12-29 22:44:01.087	2025-12-29 22:44:01.087	2025-12-29 22:44:01.087	\N	\N	\N
237	l9xlall5s4udteldab98unbf	plugin::content-manager.explorer.update	{}	api::project.project	{"fields": ["name", "slug", "shortDescription", "description", "projectStatus", "location", "coverImage", "gallery", "mapImage", "features", "timings", "typologies"]}	[]	2025-12-29 22:44:01.092	2025-12-29 22:44:01.092	2025-12-29 22:44:01.093	\N	\N	\N
238	agvj7al6pie99b1n870wz0p1	plugin::content-manager.explorer.update	{}	api::project-contact.project-contact	{"fields": ["firstName", "lastName", "phone", "comment", "locality", "typology", "wilaya", "projectName"]}	[]	2025-12-29 22:44:01.098	2025-12-29 22:44:01.098	2025-12-29 22:44:01.098	\N	\N	\N
239	tmgoenby1uhcj52g2sgxg3un	plugin::content-manager.explorer.update	{}	api::project-feature.project-feature	{"fields": ["key", "label", "value", "project"]}	[]	2025-12-29 22:44:01.103	2025-12-29 22:44:01.103	2025-12-29 22:44:01.103	\N	\N	\N
240	b9aqwhda35rabqdi2o16fb9a	plugin::content-manager.explorer.update	{}	api::project-timing.project-timing	{"fields": ["type", "minutes", "project"]}	[]	2025-12-29 22:44:01.109	2025-12-29 22:44:01.109	2025-12-29 22:44:01.109	\N	\N	\N
241	nxc6f1jk11vk0cqlh8y1lsu1	plugin::content-manager.explorer.update	{}	api::project-typologie.project-typologie	{"fields": ["code", "surfaceMin", "surfaceMax", "priceFrom", "statusTypologie", "project"]}	[]	2025-12-29 22:44:01.114	2025-12-29 22:44:01.114	2025-12-29 22:44:01.114	\N	\N	\N
242	nr7gxhq5vqcp9th2juty9dsd	plugin::content-manager.explorer.update	{}	api::story.story	{"fields": ["title", "media", "test", "expiresAt", "isActive"]}	[]	2025-12-29 22:44:01.119	2025-12-29 22:44:01.119	2025-12-29 22:44:01.119	\N	\N	\N
243	ffocwvd2r9wmauvk7j79r6lg	plugin::content-manager.explorer.update	{}	api::testimonial.testimonial	{"fields": ["link", "title"]}	[]	2025-12-29 22:44:01.124	2025-12-29 22:44:01.124	2025-12-29 22:44:01.124	\N	\N	\N
244	ppzi18h1chlhjcszpgx395g1	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2025-12-29 22:44:01.129	2025-12-29 22:44:01.129	2025-12-29 22:44:01.129	\N	\N	\N
245	q3rm67nrap19immmvokdm6l7	plugin::content-manager.explorer.delete	{}	api::about.about	{}	[]	2025-12-29 22:44:01.134	2025-12-29 22:44:01.134	2025-12-29 22:44:01.134	\N	\N	\N
246	ng9hcgfpzooa0wecjxnoacak	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-12-29 22:44:01.139	2025-12-29 22:44:01.139	2025-12-29 22:44:01.139	\N	\N	\N
247	k8jeefacx0brzwf6rnubdbdl	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-12-29 22:44:01.144	2025-12-29 22:44:01.144	2025-12-29 22:44:01.144	\N	\N	\N
248	nlmtpyb9dxgptp6gswttn7j8	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-12-29 22:44:01.149	2025-12-29 22:44:01.149	2025-12-29 22:44:01.149	\N	\N	\N
249	if5n0hbl3dc4955jsxulh713	plugin::content-manager.explorer.delete	{}	api::chat-response.chat-response	{}	[]	2025-12-29 22:44:01.154	2025-12-29 22:44:01.154	2025-12-29 22:44:01.154	\N	\N	\N
250	px6nez3szgb5k0g9xvbdreow	plugin::content-manager.explorer.delete	{}	api::contact-response.contact-response	{}	[]	2025-12-29 22:44:01.159	2025-12-29 22:44:01.159	2025-12-29 22:44:01.159	\N	\N	\N
251	km85cstljzbpoln6zxotjdqj	plugin::content-manager.explorer.delete	{}	api::faq.faq	{}	[]	2025-12-29 22:44:01.164	2025-12-29 22:44:01.164	2025-12-29 22:44:01.164	\N	\N	\N
252	cfbue5vhc7lidr77vjtvatg0	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2025-12-29 22:44:01.169	2025-12-29 22:44:01.169	2025-12-29 22:44:01.17	\N	\N	\N
253	sl3tcny7dt4r4sjuw11gowf4	plugin::content-manager.explorer.delete	{}	api::hero-media.hero-media	{}	[]	2025-12-29 22:44:01.175	2025-12-29 22:44:01.175	2025-12-29 22:44:01.175	\N	\N	\N
254	sq3j20ux69cvdbt41eh8xu34	plugin::content-manager.explorer.delete	{}	api::images-finition.images-finition	{}	[]	2025-12-29 22:44:01.18	2025-12-29 22:44:01.18	2025-12-29 22:44:01.18	\N	\N	\N
255	ws7jqv5tj6nahptxf1ca0886	plugin::content-manager.explorer.delete	{}	api::locality.locality	{}	[]	2025-12-29 22:44:01.185	2025-12-29 22:44:01.185	2025-12-29 22:44:01.185	\N	\N	\N
256	ucnuvqq1lyxnlfein2f1te7f	plugin::content-manager.explorer.delete	{}	api::opportunity-moment.opportunity-moment	{}	[]	2025-12-29 22:44:01.19	2025-12-29 22:44:01.19	2025-12-29 22:44:01.19	\N	\N	\N
257	o2i6coxdvbda78lqidjagq6q	plugin::content-manager.explorer.delete	{}	api::project.project	{}	[]	2025-12-29 22:44:01.195	2025-12-29 22:44:01.195	2025-12-29 22:44:01.196	\N	\N	\N
258	qm4qzfeifnwb8vm4hnh0zekh	plugin::content-manager.explorer.delete	{}	api::project-contact.project-contact	{}	[]	2025-12-29 22:44:01.2	2025-12-29 22:44:01.2	2025-12-29 22:44:01.201	\N	\N	\N
259	xcg61qrnegzv6yjxng5c9t87	plugin::content-manager.explorer.delete	{}	api::project-feature.project-feature	{}	[]	2025-12-29 22:44:01.206	2025-12-29 22:44:01.206	2025-12-29 22:44:01.206	\N	\N	\N
260	h47163sfvh2z933qabo0fzw3	plugin::content-manager.explorer.delete	{}	api::project-timing.project-timing	{}	[]	2025-12-29 22:44:01.211	2025-12-29 22:44:01.211	2025-12-29 22:44:01.211	\N	\N	\N
261	kx3xnr1rtlmfko2d0jysxlia	plugin::content-manager.explorer.delete	{}	api::project-typologie.project-typologie	{}	[]	2025-12-29 22:44:01.216	2025-12-29 22:44:01.216	2025-12-29 22:44:01.216	\N	\N	\N
262	ow912uup03s5y883c0p82oki	plugin::content-manager.explorer.delete	{}	api::story.story	{}	[]	2025-12-29 22:44:01.221	2025-12-29 22:44:01.221	2025-12-29 22:44:01.221	\N	\N	\N
263	sn06rfzdwuy7bceyvrykpuk1	plugin::content-manager.explorer.delete	{}	api::testimonial.testimonial	{}	[]	2025-12-29 22:44:01.226	2025-12-29 22:44:01.226	2025-12-29 22:44:01.226	\N	\N	\N
264	mev2zovnqzz26wgzwcygnu76	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2025-12-29 22:44:01.231	2025-12-29 22:44:01.231	2025-12-29 22:44:01.231	\N	\N	\N
265	x7bjmtdrdth217tquzpq6ifo	plugin::content-manager.explorer.publish	{}	api::about.about	{}	[]	2025-12-29 22:44:01.237	2025-12-29 22:44:01.237	2025-12-29 22:44:01.237	\N	\N	\N
266	k4moovezykf9qe48st4l8vf3	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-12-29 22:44:01.241	2025-12-29 22:44:01.241	2025-12-29 22:44:01.242	\N	\N	\N
267	bkx01qdaj1k6v7h9daritb51	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-12-29 22:44:01.246	2025-12-29 22:44:01.246	2025-12-29 22:44:01.247	\N	\N	\N
268	ldktqvg8t0hscyxo92ltjx34	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-12-29 22:44:01.251	2025-12-29 22:44:01.251	2025-12-29 22:44:01.252	\N	\N	\N
269	wz8sc5oviokg2f7hsunucm2f	plugin::content-manager.explorer.publish	{}	api::chat-response.chat-response	{}	[]	2025-12-29 22:44:01.256	2025-12-29 22:44:01.256	2025-12-29 22:44:01.256	\N	\N	\N
270	vo0oqkfbl5x38m7xwpr7kwsr	plugin::content-manager.explorer.publish	{}	api::contact-response.contact-response	{}	[]	2025-12-29 22:44:01.261	2025-12-29 22:44:01.261	2025-12-29 22:44:01.262	\N	\N	\N
271	eflck9f4ix8qbwwa0t5g8nm4	plugin::content-manager.explorer.publish	{}	api::faq.faq	{}	[]	2025-12-29 22:44:01.266	2025-12-29 22:44:01.266	2025-12-29 22:44:01.267	\N	\N	\N
272	pkvfph3xcqwmhtl4jfrzr6m9	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2025-12-29 22:44:01.274	2025-12-29 22:44:01.274	2025-12-29 22:44:01.275	\N	\N	\N
273	f3a6zm3g9zm7o35v4uhxu2up	plugin::content-manager.explorer.publish	{}	api::hero-media.hero-media	{}	[]	2025-12-29 22:44:01.28	2025-12-29 22:44:01.28	2025-12-29 22:44:01.28	\N	\N	\N
274	rhhlrponfawskygxr7dzleli	plugin::content-manager.explorer.publish	{}	api::images-finition.images-finition	{}	[]	2025-12-29 22:44:01.285	2025-12-29 22:44:01.285	2025-12-29 22:44:01.285	\N	\N	\N
275	lv44ymqg7hqhrjrg2sbunqhw	plugin::content-manager.explorer.publish	{}	api::locality.locality	{}	[]	2025-12-29 22:44:01.289	2025-12-29 22:44:01.289	2025-12-29 22:44:01.289	\N	\N	\N
276	abzqjdj3rtzo585bv9dg6agn	plugin::content-manager.explorer.publish	{}	api::opportunity-moment.opportunity-moment	{}	[]	2025-12-29 22:44:01.293	2025-12-29 22:44:01.293	2025-12-29 22:44:01.293	\N	\N	\N
277	kmi46623j646hqlceejda3pb	plugin::content-manager.explorer.publish	{}	api::project.project	{}	[]	2025-12-29 22:44:01.297	2025-12-29 22:44:01.297	2025-12-29 22:44:01.298	\N	\N	\N
278	pd1jcfe8kco0ri3xcydkpi3t	plugin::content-manager.explorer.publish	{}	api::project-contact.project-contact	{}	[]	2025-12-29 22:44:01.302	2025-12-29 22:44:01.302	2025-12-29 22:44:01.302	\N	\N	\N
279	rjc044qx1751s855lv7nu1l2	plugin::content-manager.explorer.publish	{}	api::project-feature.project-feature	{}	[]	2025-12-29 22:44:01.306	2025-12-29 22:44:01.306	2025-12-29 22:44:01.306	\N	\N	\N
280	xr6oa8vuxa58kguprd8f9x70	plugin::content-manager.explorer.publish	{}	api::project-timing.project-timing	{}	[]	2025-12-29 22:44:01.31	2025-12-29 22:44:01.31	2025-12-29 22:44:01.311	\N	\N	\N
281	gohalss0qqwbiszkxlwi3a39	plugin::content-manager.explorer.publish	{}	api::project-typologie.project-typologie	{}	[]	2025-12-29 22:44:01.315	2025-12-29 22:44:01.315	2025-12-29 22:44:01.315	\N	\N	\N
282	pc8hupq9mhkxyh9bzhpvnb1o	plugin::content-manager.explorer.publish	{}	api::story.story	{}	[]	2025-12-29 22:44:01.319	2025-12-29 22:44:01.319	2025-12-29 22:44:01.319	\N	\N	\N
283	yp3315aw2jvgcduvffktori9	plugin::content-manager.explorer.publish	{}	api::testimonial.testimonial	{}	[]	2025-12-29 22:44:01.324	2025-12-29 22:44:01.324	2025-12-29 22:44:01.324	\N	\N	\N
284	olds3wxgwxl8ld3gvd9kamgt	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2025-12-29 22:44:01.328	2025-12-29 22:44:01.328	2025-12-29 22:44:01.328	\N	\N	\N
285	kik7ausryr0baf7y6b24l4yy	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2025-12-29 22:44:01.332	2025-12-29 22:44:01.332	2025-12-29 22:44:01.332	\N	\N	\N
286	refp9n11sng734jtxj7unyyc	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2025-12-29 22:44:01.336	2025-12-29 22:44:01.336	2025-12-29 22:44:01.336	\N	\N	\N
287	yh68y2cxxhrxybicnf97y1be	plugin::content-type-builder.read	{}	\N	{}	[]	2025-12-29 22:44:01.34	2025-12-29 22:44:01.34	2025-12-29 22:44:01.34	\N	\N	\N
288	ifkk6enuikhm2kape56nmtgr	plugin::email.settings.read	{}	\N	{}	[]	2025-12-29 22:44:01.344	2025-12-29 22:44:01.344	2025-12-29 22:44:01.344	\N	\N	\N
289	zkipunv5hxfhi0q96rygvnds	plugin::upload.read	{}	\N	{}	[]	2025-12-29 22:44:01.348	2025-12-29 22:44:01.348	2025-12-29 22:44:01.348	\N	\N	\N
290	ahvm355jmsn6ln4gttf9ztmx	plugin::upload.assets.create	{}	\N	{}	[]	2025-12-29 22:44:01.352	2025-12-29 22:44:01.352	2025-12-29 22:44:01.352	\N	\N	\N
291	r8o90jt4lcomxev6gabmiprw	plugin::upload.assets.update	{}	\N	{}	[]	2025-12-29 22:44:01.356	2025-12-29 22:44:01.356	2025-12-29 22:44:01.356	\N	\N	\N
292	r9qlh7nes5au63o6ii4iz2do	plugin::upload.assets.download	{}	\N	{}	[]	2025-12-29 22:44:01.36	2025-12-29 22:44:01.36	2025-12-29 22:44:01.36	\N	\N	\N
293	t5z95b7fbnzt9d3ehowpgwa1	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-12-29 22:44:01.364	2025-12-29 22:44:01.364	2025-12-29 22:44:01.364	\N	\N	\N
294	bvyzpyiurmd467r7j83mnfjw	plugin::upload.configure-view	{}	\N	{}	[]	2025-12-29 22:44:01.368	2025-12-29 22:44:01.368	2025-12-29 22:44:01.368	\N	\N	\N
295	ntbo01oj4xob62oekp3u7gwy	plugin::upload.settings.read	{}	\N	{}	[]	2025-12-29 22:44:01.372	2025-12-29 22:44:01.372	2025-12-29 22:44:01.372	\N	\N	\N
296	ub29710s47hfm3djrrkcra24	plugin::i18n.locale.create	{}	\N	{}	[]	2025-12-29 22:44:01.376	2025-12-29 22:44:01.376	2025-12-29 22:44:01.376	\N	\N	\N
297	tncnsm9daho2bs08hvu7e9y7	plugin::i18n.locale.read	{}	\N	{}	[]	2025-12-29 22:44:01.38	2025-12-29 22:44:01.38	2025-12-29 22:44:01.38	\N	\N	\N
298	h0l7209ocayvoai0s0urwist	plugin::i18n.locale.update	{}	\N	{}	[]	2025-12-29 22:44:01.384	2025-12-29 22:44:01.384	2025-12-29 22:44:01.385	\N	\N	\N
299	xjzobs2tt8nfqu9httvyk48v	plugin::i18n.locale.delete	{}	\N	{}	[]	2025-12-29 22:44:01.388	2025-12-29 22:44:01.388	2025-12-29 22:44:01.389	\N	\N	\N
300	hobdgzm2fd73ni7tbzk54bdu	plugin::users-permissions.roles.create	{}	\N	{}	[]	2025-12-29 22:44:01.393	2025-12-29 22:44:01.393	2025-12-29 22:44:01.393	\N	\N	\N
301	w5193lmjoxjnc4frrgwf7z91	plugin::users-permissions.roles.read	{}	\N	{}	[]	2025-12-29 22:44:01.396	2025-12-29 22:44:01.396	2025-12-29 22:44:01.397	\N	\N	\N
302	t25wd6kpqgrhcvf63y02yvyl	plugin::users-permissions.roles.update	{}	\N	{}	[]	2025-12-29 22:44:01.4	2025-12-29 22:44:01.4	2025-12-29 22:44:01.401	\N	\N	\N
303	bt6h142gf3k569qd8268p4fy	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2025-12-29 22:44:01.404	2025-12-29 22:44:01.404	2025-12-29 22:44:01.404	\N	\N	\N
304	dmwvawnxnb8yj5xgcb1tx7vn	plugin::users-permissions.providers.read	{}	\N	{}	[]	2025-12-29 22:44:01.408	2025-12-29 22:44:01.408	2025-12-29 22:44:01.408	\N	\N	\N
305	j37hqxcmjtbcwtztxh1kv7tc	plugin::users-permissions.providers.update	{}	\N	{}	[]	2025-12-29 22:44:01.412	2025-12-29 22:44:01.412	2025-12-29 22:44:01.412	\N	\N	\N
306	v5vakhfw0nr2i72cravvwiwv	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2025-12-29 22:44:01.416	2025-12-29 22:44:01.416	2025-12-29 22:44:01.416	\N	\N	\N
307	ya1j6j4qdw6v1j8vufo5gp2m	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2025-12-29 22:44:01.42	2025-12-29 22:44:01.42	2025-12-29 22:44:01.42	\N	\N	\N
308	uj0skc4n9unlo00yqsu6ltth	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2025-12-29 22:44:01.424	2025-12-29 22:44:01.424	2025-12-29 22:44:01.424	\N	\N	\N
309	dlaleeumt9o4j4gf55l2m7y6	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2025-12-29 22:44:01.428	2025-12-29 22:44:01.428	2025-12-29 22:44:01.428	\N	\N	\N
310	ohk0oeqrhlwpb3jjure131vh	admin::marketplace.read	{}	\N	{}	[]	2025-12-29 22:44:01.432	2025-12-29 22:44:01.432	2025-12-29 22:44:01.433	\N	\N	\N
311	jgjnkowdfgsrma7eunqx0kkq	admin::webhooks.create	{}	\N	{}	[]	2025-12-29 22:44:01.437	2025-12-29 22:44:01.437	2025-12-29 22:44:01.437	\N	\N	\N
312	ti6rn52ikc1t0f5da3qqbaoh	admin::webhooks.read	{}	\N	{}	[]	2025-12-29 22:44:01.441	2025-12-29 22:44:01.441	2025-12-29 22:44:01.441	\N	\N	\N
313	kf8yfdbhodrt54a5iwz02vru	admin::webhooks.update	{}	\N	{}	[]	2025-12-29 22:44:01.445	2025-12-29 22:44:01.445	2025-12-29 22:44:01.445	\N	\N	\N
314	l0p06joa2xfo57pu5b7mo93a	admin::webhooks.delete	{}	\N	{}	[]	2025-12-29 22:44:01.449	2025-12-29 22:44:01.449	2025-12-29 22:44:01.449	\N	\N	\N
315	iq3oth9otrckzr6fmxkqgoyl	admin::users.create	{}	\N	{}	[]	2025-12-29 22:44:01.453	2025-12-29 22:44:01.453	2025-12-29 22:44:01.453	\N	\N	\N
316	xeepcmdtvwpd1nykfwl70ccz	admin::users.read	{}	\N	{}	[]	2025-12-29 22:44:01.457	2025-12-29 22:44:01.457	2025-12-29 22:44:01.457	\N	\N	\N
317	yrlnnngw2lvnr8e1c9yos8bv	admin::users.update	{}	\N	{}	[]	2025-12-29 22:44:01.461	2025-12-29 22:44:01.461	2025-12-29 22:44:01.461	\N	\N	\N
318	l4xk52bugkr5gvjjyu7r9ez4	admin::users.delete	{}	\N	{}	[]	2025-12-29 22:44:01.465	2025-12-29 22:44:01.465	2025-12-29 22:44:01.466	\N	\N	\N
319	ik8lg2jcr51ip5cuijvci19c	admin::roles.create	{}	\N	{}	[]	2025-12-29 22:44:01.47	2025-12-29 22:44:01.47	2025-12-29 22:44:01.47	\N	\N	\N
320	q3r6gijuf5cxincchvlgg7cl	admin::roles.read	{}	\N	{}	[]	2025-12-29 22:44:01.474	2025-12-29 22:44:01.474	2025-12-29 22:44:01.474	\N	\N	\N
321	fhgtnq27zulb91qu6jyx3sct	admin::roles.update	{}	\N	{}	[]	2025-12-29 22:44:01.482	2025-12-29 22:44:01.482	2025-12-29 22:44:01.482	\N	\N	\N
322	u1rgwm6o9iwwsg7xocllvnxs	admin::roles.delete	{}	\N	{}	[]	2025-12-29 22:44:01.486	2025-12-29 22:44:01.486	2025-12-29 22:44:01.486	\N	\N	\N
323	z87t2otpg7pzl4f4sdt9zo8a	admin::api-tokens.access	{}	\N	{}	[]	2025-12-29 22:44:01.49	2025-12-29 22:44:01.49	2025-12-29 22:44:01.49	\N	\N	\N
324	es8ko7q6vxfmcwu434f5hxni	admin::api-tokens.create	{}	\N	{}	[]	2025-12-29 22:44:01.494	2025-12-29 22:44:01.494	2025-12-29 22:44:01.494	\N	\N	\N
325	ml680jkf9glg3e82mogzjplw	admin::api-tokens.read	{}	\N	{}	[]	2025-12-29 22:44:01.498	2025-12-29 22:44:01.498	2025-12-29 22:44:01.498	\N	\N	\N
326	ci46bi72h3hzufs8zc2aw03n	admin::api-tokens.update	{}	\N	{}	[]	2025-12-29 22:44:01.502	2025-12-29 22:44:01.502	2025-12-29 22:44:01.502	\N	\N	\N
327	i819jnb1uvwjzzsxkenub6lp	admin::api-tokens.regenerate	{}	\N	{}	[]	2025-12-29 22:44:01.506	2025-12-29 22:44:01.506	2025-12-29 22:44:01.506	\N	\N	\N
328	h12psksu7rbwl0l9sqq58vj0	admin::api-tokens.delete	{}	\N	{}	[]	2025-12-29 22:44:01.51	2025-12-29 22:44:01.51	2025-12-29 22:44:01.51	\N	\N	\N
329	wr7a1u7vg39rgp14dcsqxj9o	admin::project-settings.update	{}	\N	{}	[]	2025-12-29 22:44:01.514	2025-12-29 22:44:01.514	2025-12-29 22:44:01.514	\N	\N	\N
330	w31jxa0kp0rfx9anpkvy5aa5	admin::project-settings.read	{}	\N	{}	[]	2025-12-29 22:44:01.518	2025-12-29 22:44:01.518	2025-12-29 22:44:01.518	\N	\N	\N
331	ndjrth3hsmfhag04uis19oav	admin::transfer.tokens.access	{}	\N	{}	[]	2025-12-29 22:44:01.522	2025-12-29 22:44:01.522	2025-12-29 22:44:01.522	\N	\N	\N
332	k5558zevgme95y8a2u65y8pp	admin::transfer.tokens.create	{}	\N	{}	[]	2025-12-29 22:44:01.526	2025-12-29 22:44:01.526	2025-12-29 22:44:01.526	\N	\N	\N
333	rln6q98qf89bs2xgvzi7qkh2	admin::transfer.tokens.read	{}	\N	{}	[]	2025-12-29 22:44:01.53	2025-12-29 22:44:01.53	2025-12-29 22:44:01.531	\N	\N	\N
334	gsk1e8p1xw0m5qeo5310sdq1	admin::transfer.tokens.update	{}	\N	{}	[]	2025-12-29 22:44:01.534	2025-12-29 22:44:01.534	2025-12-29 22:44:01.535	\N	\N	\N
335	u0w4khkhf2g97i1afxsg974f	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2025-12-29 22:44:01.538	2025-12-29 22:44:01.538	2025-12-29 22:44:01.538	\N	\N	\N
336	p9hh8md4e5016qyt0da2v0to	admin::transfer.tokens.delete	{}	\N	{}	[]	2025-12-29 22:44:01.542	2025-12-29 22:44:01.542	2025-12-29 22:44:01.542	\N	\N	\N
\.


--
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	2	7
8	8	2	8
9	9	2	9
10	10	2	10
11	11	2	11
12	12	2	12
13	13	2	13
14	14	2	14
15	15	2	15
16	16	2	16
17	17	2	17
18	18	2	18
19	19	2	19
20	20	2	20
21	21	2	21
22	22	2	22
23	23	2	23
24	24	2	24
25	25	2	25
26	26	2	26
27	27	2	27
28	28	2	28
29	29	2	29
30	30	2	30
31	31	2	31
32	32	2	32
33	33	2	33
34	34	2	34
35	35	2	35
36	36	2	36
37	37	2	37
38	38	2	38
39	39	2	39
40	40	2	40
41	41	2	41
42	42	2	42
43	43	2	43
44	44	2	44
45	45	2	45
46	46	2	46
47	47	2	47
48	48	2	48
49	49	2	49
50	50	2	50
51	51	2	51
52	52	2	52
53	53	2	53
54	54	2	54
55	55	2	55
56	56	2	56
57	57	2	57
58	58	2	58
59	59	2	59
60	60	2	60
61	61	2	61
62	62	2	62
63	63	2	63
64	64	2	64
65	65	2	65
66	66	2	66
67	67	2	67
68	68	2	68
69	69	2	69
70	70	2	70
71	71	2	71
72	72	2	72
73	73	2	73
74	74	2	74
75	75	2	75
76	76	2	76
77	77	2	77
78	78	2	78
79	79	2	79
80	80	2	80
81	81	2	81
82	82	2	82
83	83	2	83
84	84	2	84
85	85	2	85
86	86	2	86
87	87	2	87
88	88	2	88
89	89	2	89
90	90	2	90
91	91	2	91
92	92	2	92
93	93	2	93
94	94	2	94
95	95	2	95
96	96	2	96
97	97	2	97
98	98	2	98
99	99	2	99
100	100	2	100
101	101	2	101
102	102	3	1
103	103	3	2
104	104	3	3
105	105	3	4
106	106	3	5
107	107	3	6
108	108	3	7
109	109	3	8
110	110	3	9
111	111	3	10
112	112	3	11
113	113	3	12
114	114	3	13
115	115	3	14
116	116	3	15
117	117	3	16
118	118	3	17
119	119	3	18
120	120	3	19
121	121	3	20
122	122	3	21
123	123	3	22
124	124	3	23
125	125	3	24
126	126	3	25
127	127	3	26
128	128	3	27
129	129	3	28
130	130	3	29
131	131	3	30
132	132	3	31
133	133	3	32
134	134	3	33
135	135	3	34
136	136	3	35
137	137	3	36
138	138	3	37
139	139	3	38
140	140	3	39
141	141	3	40
142	142	3	41
143	143	3	42
144	144	3	43
145	145	3	44
146	146	3	45
147	147	3	46
148	148	3	47
149	149	3	48
150	150	3	49
151	151	3	50
152	152	3	51
153	153	3	52
154	154	3	53
155	155	3	54
156	156	3	55
157	157	3	56
158	158	3	57
159	159	3	58
160	160	3	59
161	161	3	60
162	162	3	61
163	163	3	62
164	164	3	63
165	165	3	64
166	166	3	65
167	167	3	66
168	168	3	67
169	169	3	68
170	170	3	69
171	171	3	70
172	172	3	71
173	173	3	72
174	174	3	73
175	175	3	74
176	176	3	75
177	177	3	76
178	178	3	77
179	179	3	78
180	180	3	79
181	181	3	80
182	182	3	81
183	183	3	82
184	184	1	1
185	185	1	2
186	186	1	3
187	187	1	4
188	188	1	5
189	189	1	6
190	190	1	7
191	191	1	8
192	192	1	9
193	193	1	10
194	194	1	11
195	195	1	12
196	196	1	13
197	197	1	14
198	198	1	15
199	199	1	16
200	200	1	17
201	201	1	18
202	202	1	19
203	203	1	20
204	204	1	21
205	205	1	22
206	206	1	23
207	207	1	24
208	208	1	25
209	209	1	26
210	210	1	27
211	211	1	28
212	212	1	29
213	213	1	30
214	214	1	31
215	215	1	32
216	216	1	33
217	217	1	34
218	218	1	35
219	219	1	36
220	220	1	37
221	221	1	38
222	222	1	39
223	223	1	40
224	224	1	41
225	225	1	42
226	226	1	43
227	227	1	44
228	228	1	45
229	229	1	46
230	230	1	47
231	231	1	48
232	232	1	49
233	233	1	50
234	234	1	51
235	235	1	52
236	236	1	53
237	237	1	54
238	238	1	55
239	239	1	56
240	240	1	57
241	241	1	58
242	242	1	59
243	243	1	60
244	244	1	61
245	245	1	62
246	246	1	63
247	247	1	64
248	248	1	65
249	249	1	66
250	250	1	67
251	251	1	68
252	252	1	69
253	253	1	70
254	254	1	71
255	255	1	72
256	256	1	73
257	257	1	74
258	258	1	75
259	259	1	76
260	260	1	77
261	261	1	78
262	262	1	79
263	263	1	80
264	264	1	81
265	265	1	82
266	266	1	83
267	267	1	84
268	268	1	85
269	269	1	86
270	270	1	87
271	271	1	88
272	272	1	89
273	273	1	90
274	274	1	91
275	275	1	92
276	276	1	93
277	277	1	94
278	278	1	95
279	279	1	96
280	280	1	97
281	281	1	98
282	282	1	99
283	283	1	100
284	284	1	101
285	285	1	102
286	286	1	103
287	287	1	104
288	288	1	105
289	289	1	106
290	290	1	107
291	291	1	108
292	292	1	109
293	293	1	110
294	294	1	111
295	295	1	112
296	296	1	113
297	297	1	114
298	298	1	115
299	299	1	116
300	300	1	117
301	301	1	118
302	302	1	119
303	303	1	120
304	304	1	121
305	305	1	122
306	306	1	123
307	307	1	124
308	308	1	125
309	309	1	126
310	310	1	127
311	311	1	128
312	312	1	129
313	313	1	130
314	314	1	131
315	315	1	132
316	316	1	133
317	317	1	134
318	318	1	135
319	319	1	136
320	320	1	137
321	321	1	138
322	322	1	139
323	323	1	140
324	324	1	141
325	325	1	142
326	326	1	143
327	327	1	144
328	328	1	145
329	329	1	146
330	330	1	147
331	331	1	148
332	332	1	149
333	333	1	150
334	334	1	151
335	335	1	152
336	336	1	153
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	zny44bj427sse66y87ybuy90	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2025-12-29 22:43:59.556	2025-12-29 22:43:59.556	2025-12-29 22:43:59.556	\N	\N	\N
2	vejcsqxznfpwz55t9uhdzb4l	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2025-12-29 22:43:59.57	2025-12-29 22:43:59.57	2025-12-29 22:43:59.57	\N	\N	\N
3	dla1ogbfv2wclasvqlt62aqo	Author	strapi-author	Authors can manage the content they have created.	2025-12-29 22:43:59.574	2025-12-29 22:43:59.574	2025-12-29 22:43:59.575	\N	\N	\N
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.articles (id, document_id, title, description, shares, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: articles_author_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.articles_author_lnk (id, article_id, author_id, article_ord) FROM stdin;
\.


--
-- Data for Name: articles_category_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.articles_category_lnk (id, article_id, category_id, article_ord) FROM stdin;
\.


--
-- Data for Name: articles_cmps; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.articles_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.authors (id, document_id, name, email, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.categories (id, document_id, name, slug, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: chat_responses; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.chat_responses (id, document_id, trigger, response, enabled, priority, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: components_shared_media; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_media (id) FROM stdin;
\.


--
-- Data for Name: components_shared_quotes; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_quotes (id, title, body) FROM stdin;
\.


--
-- Data for Name: components_shared_rich_texts; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_rich_texts (id, body) FROM stdin;
\.


--
-- Data for Name: components_shared_seos; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_seos (id, meta_title, meta_description) FROM stdin;
\.


--
-- Data for Name: components_shared_sliders; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_sliders (id) FROM stdin;
\.


--
-- Data for Name: contact_responses; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.contact_responses (id, document_id, first_name, last_name, email, phone, request_type, subject, message, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: faqs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.faqs (id, document_id, question, answer, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: globals; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.globals (id, document_id, site_name, site_description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: globals_cmps; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.globals_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: hero_medias; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.hero_medias (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ef4m75v8yrr8d3p30g7xskex	English (en)	en	2025-12-29 22:43:58.844	2025-12-29 22:43:58.844	2025-12-29 22:43:58.845	\N	\N	\N
\.


--
-- Data for Name: images_finitions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.images_finitions (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: localities; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.localities (id, document_id, name, location, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: opportunity_moments; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.opportunity_moments (id, document_id, detail, location, surface, type, price, name, typology, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: project_contacts; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.project_contacts (id, document_id, first_name, last_name, phone, comment, locality, typology, wilaya, project_name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: project_features; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.project_features (id, document_id, key, label, value, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: project_features_project_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.project_features_project_lnk (id, project_feature_id, project_id, project_feature_ord) FROM stdin;
\.


--
-- Data for Name: project_timings; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.project_timings (id, document_id, type, minutes, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: project_timings_project_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.project_timings_project_lnk (id, project_timing_id, project_id, project_timing_ord) FROM stdin;
\.


--
-- Data for Name: project_typologies; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.project_typologies (id, document_id, code, surface_min, surface_max, price_from, status_typologie, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: project_typologies_project_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.project_typologies_project_lnk (id, project_typologie_id, project_id, project_typologie_ord) FROM stdin;
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.projects (id, document_id, name, slug, short_description, description, project_status, location, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: stories; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.stories (id, document_id, title, test, expires_at, is_active, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_ai_localization_jobs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_ai_localization_jobs (id, content_type, related_document_id, source_locale, target_locales, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	i7s1otminejxry68jnes6aoj	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	6f17e431060dbd0b09485ca3ae065118c193a0dd39f779a236b00a209ea325f53929e1e787326cf49f917db83f61f3d8a0bd692891aabdc7cabe3f3734fba367	v1:3c9f18cd5563b2424a64358035dcb410:7f5f0ec758ee0d7d0cd626ae606113fcebec38aa33c1d5ff17f36a0fd725a1033173b60536cd85f0ba42df2628fb4de7818d89c6bb6e074eea4f17c147fd5fa42cc4ebc5ad4e7815b43b1fefda5c68213d8e381aed2461633ebf5af97519ddc59d876d19cd84adcf924dbc19b23e3b11f078fd41610cb30583ae749c3d7b090704cc5e781bbf7793920b926e5f7203ffe96a0001cd0c94dc450087e51c1c2dbc005017c2810c5e434a260da1b1001cacd02ec97f42dd3f435e6e4be77ae41143f18f80ac3e47d341f9905aa7ac3585b8dc56dfacba3986a3e49471c29db2c56e4def501d2c21c8522f73ad62c54e309bf06294270b76a41bb4d3b44b00a766d9:80468852b579951a47d42eceb85e7933	\N	\N	\N	2025-12-29 22:44:01.69	2025-12-29 22:44:01.69	2025-12-29 22:44:01.69	\N	\N	\N
2	tupuwjwtdfel8x7e1x4iuts8	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	5ef001bfb43a77115a27e173b4ad2195b716de4e6c792d3f48d91e5ced1fd4fbd52076296215fc004b509c148033c230657fde2449bd0d839dfa8418b89787fe	v1:2609c5c289cda04146e1d372dfd1d2c2:79c323199f7a4c54a6b21b70d78d69bc5cf73127e23e2ae07858000cc93502f8c44768c234d0fb55dc1a66bd420fe3c5082895c8decd717ec1b952ec2da8e3034f28dbf6acbb3057c646f7ee361fb0afdcdacad69eca5998f0f690a672fa3dcb5b60e4108d60cc15fb5889cdff17ce6c44ee1cbfc4a09ebe793e54e66effe597308785ea768cba9b0aab87b0c76dfbb1857d7f7963be6152037277ca3432ff8e6f4c3459c19b4029dec9cea48a4c01221321e88c5b02c5754856a865ea3aa26633490363617bc5628861e44097285404135031c5a454c0886c678096d11c137cc8b86bf084b876640a6660d776fa201d2cbbcdff656015852692f768b75f966f:957bc670cb5db497478f2c803985d426	\N	\N	\N	2025-12-29 22:44:01.701	2025-12-29 22:44:01.701	2025-12-29 22:44:01.701	\N	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
1	strapi_unidirectional-join-table-repair-ran	true	boolean	\N	\N
2	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::about.about":{"kind":"singleType","collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About","description":"Write about yourself and the content you create"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"ImageBanner":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"ImageHistoire":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"ImageVision":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::about.about","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"abouts"}}},"apiName":"about","globalId":"About","uid":"api::about.about","modelType":"contentType","__schema__":{"collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About","description":"Write about yourself and the content you create"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"ImageBanner":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"ImageHistoire":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"ImageVision":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"singleType"},"modelName":"about","actions":{},"lifecycles":{}},"api::article.article":{"kind":"collectionType","collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","excerpt":{"type":"string","maxLength":160,"required":true}},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":80},"shares":{"type":"integer","default":0},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"author":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"articles"},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::article.article","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"articles"}}},"apiName":"article","globalId":"Article","uid":"api::article.article","modelType":"contentType","__schema__":{"collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","excerpt":{"type":"string","maxLength":160,"required":true}},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":80},"shares":{"type":"integer","default":0},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"author":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"articles"},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]}},"kind":"collectionType"},"modelName":"article","actions":{},"lifecycles":{}},"api::author.author":{"kind":"collectionType","collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"author"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::author.author","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"authors"}}},"apiName":"author","globalId":"Author","uid":"api::author.author","modelType":"contentType","__schema__":{"collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"email":{"type":"string"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"author"}},"kind":"collectionType"},"modelName":"author","actions":{},"lifecycles":{}},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"category"},"description":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::category.category","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"categories"}}},"apiName":"category","globalId":"Category","uid":"api::category.category","modelType":"contentType","__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"category"},"description":{"type":"text"}},"kind":"collectionType"},"modelName":"category","actions":{},"lifecycles":{}},"api::chat-response.chat-response":{"kind":"collectionType","collectionName":"chat_responses","info":{"singularName":"chat-response","pluralName":"chat-responses","displayName":"ChatResponse"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"trigger":{"type":"string"},"response":{"type":"blocks"},"enabled":{"type":"boolean"},"priority":{"type":"integer"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::chat-response.chat-response","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"chat_responses"}}},"apiName":"chat-response","globalId":"ChatResponse","uid":"api::chat-response.chat-response","modelType":"contentType","__schema__":{"collectionName":"chat_responses","info":{"singularName":"chat-response","pluralName":"chat-responses","displayName":"ChatResponse"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"trigger":{"type":"string"},"response":{"type":"blocks"},"enabled":{"type":"boolean"},"priority":{"type":"integer"}},"kind":"collectionType"},"modelName":"chat-response","actions":{},"lifecycles":{}},"api::contact-response.contact-response":{"kind":"collectionType","collectionName":"contact_responses","info":{"singularName":"contact-response","pluralName":"contact-responses","displayName":"Contact Response"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"firstName":{"type":"string"},"lastName":{"type":"string"},"email":{"type":"email"},"phone":{"type":"biginteger"},"requestType":{"type":"enumeration","enum":["Information","Visite","Réclamation"]},"subject":{"type":"string"},"message":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::contact-response.contact-response","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"contact_responses"}}},"apiName":"contact-response","globalId":"ContactResponse","uid":"api::contact-response.contact-response","modelType":"contentType","__schema__":{"collectionName":"contact_responses","info":{"singularName":"contact-response","pluralName":"contact-responses","displayName":"Contact Response"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"firstName":{"type":"string"},"lastName":{"type":"string"},"email":{"type":"email"},"phone":{"type":"biginteger"},"requestType":{"type":"enumeration","enum":["Information","Visite","Réclamation"]},"subject":{"type":"string"},"message":{"type":"text"}},"kind":"collectionType"},"modelName":"contact-response","actions":{},"lifecycles":{}},"api::faq.faq":{"kind":"collectionType","collectionName":"faqs","info":{"singularName":"faq","pluralName":"faqs","displayName":"FAQ"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"question":{"type":"string"},"answer":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::faq.faq","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"faqs"}}},"apiName":"faq","globalId":"Faq","uid":"api::faq.faq","modelType":"contentType","__schema__":{"collectionName":"faqs","info":{"singularName":"faq","pluralName":"faqs","displayName":"FAQ"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"question":{"type":"string"},"answer":{"type":"text"}},"kind":"collectionType"},"modelName":"faq","actions":{},"lifecycles":{}},"api::global.global":{"kind":"singleType","collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true},"defaultSeo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::global.global","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"globals"}}},"apiName":"global","globalId":"Global","uid":"api::global.global","modelType":"contentType","__schema__":{"collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true},"defaultSeo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"singleType"},"modelName":"global","actions":{},"lifecycles":{}},"api::hero-media.hero-media":{"kind":"singleType","collectionName":"hero_medias","info":{"singularName":"hero-media","pluralName":"hero-medias","displayName":"Hero Media"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"firstItem":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"secondItem":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"thirdItem":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::hero-media.hero-media","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"hero_medias"}}},"apiName":"hero-media","globalId":"HeroMedia","uid":"api::hero-media.hero-media","modelType":"contentType","__schema__":{"collectionName":"hero_medias","info":{"singularName":"hero-media","pluralName":"hero-medias","displayName":"Hero Media"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"firstItem":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"secondItem":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"thirdItem":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"singleType"},"modelName":"hero-media","actions":{},"lifecycles":{}},"api::images-finition.images-finition":{"kind":"singleType","collectionName":"images_finitions","info":{"singularName":"images-finition","pluralName":"images-finitions","displayName":"ImagesFinition"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"semiFinition":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"fini":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"finitionTroisTiers":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::images-finition.images-finition","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"images_finitions"}}},"apiName":"images-finition","globalId":"ImagesFinition","uid":"api::images-finition.images-finition","modelType":"contentType","__schema__":{"collectionName":"images_finitions","info":{"singularName":"images-finition","pluralName":"images-finitions","displayName":"ImagesFinition"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"semiFinition":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"fini":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"finitionTroisTiers":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"singleType"},"modelName":"images-finition","actions":{},"lifecycles":{}},"api::locality.locality":{"kind":"collectionType","collectionName":"localities","info":{"singularName":"locality","pluralName":"localities","displayName":"locality"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"image":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"mapImage":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"location":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::locality.locality","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"localities"}}},"apiName":"locality","globalId":"Locality","uid":"api::locality.locality","modelType":"contentType","__schema__":{"collectionName":"localities","info":{"singularName":"locality","pluralName":"localities","displayName":"locality"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"image":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"mapImage":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"location":{"type":"string"}},"kind":"collectionType"},"modelName":"locality","actions":{},"lifecycles":{}},"api::opportunity-moment.opportunity-moment":{"kind":"collectionType","collectionName":"opportunity_moments","info":{"singularName":"opportunity-moment","pluralName":"opportunity-moments","displayName":"OpportunityMoment"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"detail":{"type":"string"},"location":{"type":"string"},"surface":{"type":"integer"},"type":{"type":"enumeration","enum":["Appartement","Local Commercial"]},"price":{"type":"biginteger"},"name":{"type":"string"},"typology":{"type":"string"},"image":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::opportunity-moment.opportunity-moment","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"opportunity_moments"}}},"apiName":"opportunity-moment","globalId":"OpportunityMoment","uid":"api::opportunity-moment.opportunity-moment","modelType":"contentType","__schema__":{"collectionName":"opportunity_moments","info":{"singularName":"opportunity-moment","pluralName":"opportunity-moments","displayName":"OpportunityMoment"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"detail":{"type":"string"},"location":{"type":"string"},"surface":{"type":"integer"},"type":{"type":"enumeration","enum":["Appartement","Local Commercial"]},"price":{"type":"biginteger"},"name":{"type":"string"},"typology":{"type":"string"},"image":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"collectionType"},"modelName":"opportunity-moment","actions":{},"lifecycles":{}},"api::project.project":{"kind":"collectionType","collectionName":"projects","info":{"singularName":"project","pluralName":"projects","displayName":"Project"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"slug":{"type":"uid","targetField":"name","required":true},"shortDescription":{"type":"text"},"description":{"type":"richtext"},"projectStatus":{"type":"enumeration","default":"en cours","enum":["en cours","livré","à venir"]},"location":{"type":"string"},"coverImage":{"type":"media","required":true,"allowedTypes":["images"]},"gallery":{"type":"media","multiple":true,"allowedTypes":["images"]},"mapImage":{"type":"media","allowedTypes":["images"]},"features":{"type":"relation","relation":"oneToMany","target":"api::project-feature.project-feature","mappedBy":"project"},"timings":{"type":"relation","relation":"oneToMany","target":"api::project-timing.project-timing","mappedBy":"project"},"typologies":{"type":"relation","relation":"oneToMany","target":"api::project-typologie.project-typologie","mappedBy":"project"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::project.project","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"projects"}}},"apiName":"project","globalId":"Project","uid":"api::project.project","modelType":"contentType","__schema__":{"collectionName":"projects","info":{"singularName":"project","pluralName":"projects","displayName":"Project"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"slug":{"type":"uid","targetField":"name","required":true},"shortDescription":{"type":"text"},"description":{"type":"richtext"},"projectStatus":{"type":"enumeration","default":"en cours","enum":["en cours","livré","à venir"]},"location":{"type":"string"},"coverImage":{"type":"media","required":true,"allowedTypes":["images"]},"gallery":{"type":"media","multiple":true,"allowedTypes":["images"]},"mapImage":{"type":"media","allowedTypes":["images"]},"features":{"type":"relation","relation":"oneToMany","target":"api::project-feature.project-feature","mappedBy":"project"},"timings":{"type":"relation","relation":"oneToMany","target":"api::project-timing.project-timing","mappedBy":"project"},"typologies":{"type":"relation","relation":"oneToMany","target":"api::project-typologie.project-typologie","mappedBy":"project"}},"kind":"collectionType"},"modelName":"project","actions":{},"lifecycles":{}},"api::project-contact.project-contact":{"kind":"collectionType","collectionName":"project_contacts","info":{"singularName":"project-contact","pluralName":"project-contacts","displayName":"projectContact"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"firstName":{"type":"string"},"lastName":{"type":"string"},"phone":{"type":"biginteger"},"comment":{"type":"text"},"locality":{"type":"string"},"typology":{"type":"string"},"wilaya":{"type":"string"},"projectName":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::project-contact.project-contact","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"project_contacts"}}},"apiName":"project-contact","globalId":"ProjectContact","uid":"api::project-contact.project-contact","modelType":"contentType","__schema__":{"collectionName":"project_contacts","info":{"singularName":"project-contact","pluralName":"project-contacts","displayName":"projectContact"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"firstName":{"type":"string"},"lastName":{"type":"string"},"phone":{"type":"biginteger"},"comment":{"type":"text"},"locality":{"type":"string"},"typology":{"type":"string"},"wilaya":{"type":"string"},"projectName":{"type":"string"}},"kind":"collectionType"},"modelName":"project-contact","actions":{},"lifecycles":{}},"api::project-feature.project-feature":{"kind":"collectionType","collectionName":"project_features","info":{"singularName":"project-feature","pluralName":"project-features","displayName":"Project Feature"},"attributes":{"key":{"type":"enumeration","enum":["blocks","floors","elevator","security","parking"],"required":true},"label":{"type":"string","required":true},"value":{"type":"string"},"project":{"type":"relation","relation":"manyToOne","target":"api::project.project","inversedBy":"features"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::project-feature.project-feature","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"project_features"}}},"apiName":"project-feature","globalId":"ProjectFeature","uid":"api::project-feature.project-feature","modelType":"contentType","__schema__":{"collectionName":"project_features","info":{"singularName":"project-feature","pluralName":"project-features","displayName":"Project Feature"},"attributes":{"key":{"type":"enumeration","enum":["blocks","floors","elevator","security","parking"],"required":true},"label":{"type":"string","required":true},"value":{"type":"string"},"project":{"type":"relation","relation":"manyToOne","target":"api::project.project","inversedBy":"features"}},"kind":"collectionType"},"modelName":"project-feature","actions":{},"lifecycles":{},"options":{"draftAndPublish":false}},"api::project-timing.project-timing":{"kind":"collectionType","collectionName":"project_timings","info":{"singularName":"project-timing","pluralName":"project-timings","displayName":"Project Timing"},"attributes":{"type":{"type":"enumeration","enum":["sea","school","transport","airport"],"required":true},"minutes":{"type":"integer","required":true},"project":{"type":"relation","relation":"manyToOne","target":"api::project.project","inversedBy":"timings"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::project-timing.project-timing","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"project_timings"}}},"apiName":"project-timing","globalId":"ProjectTiming","uid":"api::project-timing.project-timing","modelType":"contentType","__schema__":{"collectionName":"project_timings","info":{"singularName":"project-timing","pluralName":"project-timings","displayName":"Project Timing"},"attributes":{"type":{"type":"enumeration","enum":["sea","school","transport","airport"],"required":true},"minutes":{"type":"integer","required":true},"project":{"type":"relation","relation":"manyToOne","target":"api::project.project","inversedBy":"timings"}},"kind":"collectionType"},"modelName":"project-timing","actions":{},"lifecycles":{},"options":{"draftAndPublish":false}},"api::project-typologie.project-typologie":{"kind":"collectionType","collectionName":"project_typologies","info":{"singularName":"project-typologie","pluralName":"project-typologies","displayName":"Project Typologie","description":"Apartment typologies for real estate projects"},"options":{"draftAndPublish":true},"attributes":{"code":{"type":"string","required":true},"surfaceMin":{"type":"integer","required":true},"surfaceMax":{"type":"integer","required":true},"priceFrom":{"type":"biginteger","required":true},"statusTypologie":{"type":"enumeration","enum":["Disponible","Réservé","Vendu"],"default":"Disponible"},"project":{"type":"relation","relation":"manyToOne","target":"api::project.project","inversedBy":"typologies"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::project-typologie.project-typologie","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"project_typologies"}}},"apiName":"project-typologie","globalId":"ProjectTypologie","uid":"api::project-typologie.project-typologie","modelType":"contentType","__schema__":{"collectionName":"project_typologies","info":{"singularName":"project-typologie","pluralName":"project-typologies","displayName":"Project Typologie","description":"Apartment typologies for real estate projects"},"options":{"draftAndPublish":true},"attributes":{"code":{"type":"string","required":true},"surfaceMin":{"type":"integer","required":true},"surfaceMax":{"type":"integer","required":true},"priceFrom":{"type":"biginteger","required":true},"statusTypologie":{"type":"enumeration","enum":["Disponible","Réservé","Vendu"],"default":"Disponible"},"project":{"type":"relation","relation":"manyToOne","target":"api::project.project","inversedBy":"typologies"}},"kind":"collectionType"},"modelName":"project-typologie","actions":{},"lifecycles":{}},"api::story.story":{"kind":"collectionType","collectionName":"stories","info":{"singularName":"story","pluralName":"stories","displayName":"story"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"media":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"test":{"type":"text"},"expiresAt":{"type":"datetime"},"isActive":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::story.story","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"stories"}}},"apiName":"story","globalId":"Story","uid":"api::story.story","modelType":"contentType","__schema__":{"collectionName":"stories","info":{"singularName":"story","pluralName":"stories","displayName":"story"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"media":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"test":{"type":"text"},"expiresAt":{"type":"datetime"},"isActive":{"type":"boolean"}},"kind":"collectionType"},"modelName":"story","actions":{},"lifecycles":{}},"api::testimonial.testimonial":{"kind":"collectionType","collectionName":"testimonials","info":{"singularName":"testimonial","pluralName":"testimonials","displayName":"Testimonial"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"link":{"type":"text"},"title":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::testimonial.testimonial","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"testimonials"}}},"apiName":"testimonial","globalId":"Testimonial","uid":"api::testimonial.testimonial","modelType":"contentType","__schema__":{"collectionName":"testimonials","info":{"singularName":"testimonial","pluralName":"testimonials","displayName":"Testimonial"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"link":{"type":"text"},"title":{"type":"string"}},"kind":"collectionType"},"modelName":"testimonial","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"},"admin::session":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::session","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_sessions"}}},"plugin":"admin","globalId":"AdminSession","uid":"admin::session","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"session"}}	object	\N	\N
3	plugin_content_manager_configuration_components::shared.slider	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"files","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","files"],"edit":[[{"name":"files","size":6}]]},"uid":"shared.slider","isComponent":true}	object	\N	\N
4	plugin_content_manager_configuration_components::shared.rich-text	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id"],"edit":[[{"name":"body","size":12}]]},"uid":"shared.rich-text","isComponent":true}	object	\N	\N
5	plugin_content_manager_configuration_components::shared.quote	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","body"],"edit":[[{"name":"title","size":6},{"name":"body","size":6}]]},"uid":"shared.quote","isComponent":true}	object	\N	\N
6	plugin_content_manager_configuration_components::shared.media	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id"],"edit":[]},"uid":"shared.media","isComponent":true}	object	\N	\N
7	plugin_content_manager_configuration_components::shared.seo	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}},"shareImage":{"edit":{"label":"shareImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shareImage","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","metaTitle","metaDescription","shareImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"shareImage","size":6}]]},"uid":"shared.seo","isComponent":true}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::api::author.author	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"avatar":{"edit":{"label":"avatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"avatar","searchable":false,"sortable":false}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"articles":{"edit":{"label":"articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"articles","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","avatar","email"],"edit":[[{"name":"name","size":6},{"name":"avatar","size":6}],[{"name":"email","size":6},{"name":"articles","size":6}]]},"uid":"api::author.author"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
28	plugin_content_manager_configuration_content_types::api::project-contact.project-contact	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstName","defaultSortBy":"firstName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstName":{"edit":{"label":"firstName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstName","searchable":true,"sortable":true}},"lastName":{"edit":{"label":"lastName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastName","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"comment":{"edit":{"label":"comment","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"comment","searchable":true,"sortable":true}},"locality":{"edit":{"label":"locality","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"locality","searchable":true,"sortable":true}},"typology":{"edit":{"label":"typology","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"typology","searchable":true,"sortable":true}},"wilaya":{"edit":{"label":"wilaya","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"wilaya","searchable":true,"sortable":true}},"projectName":{"edit":{"label":"projectName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"projectName","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstName","lastName","phone"],"edit":[[{"name":"firstName","size":6},{"name":"lastName","size":6}],[{"name":"phone","size":4},{"name":"comment","size":6}],[{"name":"locality","size":6},{"name":"typology","size":6}],[{"name":"wilaya","size":6},{"name":"projectName","size":6}]]},"uid":"api::project-contact.project-contact"}	object	\N	\N
37	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
45	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false,"aiMetadata":true}	object	\N	\N
46	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
48	plugin_i18n_default_locale	"en"	string	\N	\N
49	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"http://127.0.0.1:1337/api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"http://127.0.0.1:1337/api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"http://127.0.0.1:1337/api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"http://127.0.0.1:1337/api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"http://127.0.0.1:1337/api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"http://127.0.0.1:1337/api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"http://127.0.0.1:1337/api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"http://127.0.0.1:1337/api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"http://127.0.0.1:1337/api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"http://127.0.0.1:1337/api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"http://127.0.0.1:1337/api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"http://127.0.0.1:1337/api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"http://127.0.0.1:1337/api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"http://127.0.0.1:1337/api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"http://127.0.0.1:1337/api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"http://127.0.0.1:1337/api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
50	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
51	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
47	plugin_upload_metrics	{"weeklySchedule":"13 44 22 * * 1","lastWeeklyUpdate":1767048253486}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
21	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
23	plugin_content_manager_configuration_content_types::api::global.global	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"siteName","defaultSortBy":"siteName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"siteName":{"edit":{"label":"siteName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteName","searchable":true,"sortable":true}},"favicon":{"edit":{"label":"favicon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"favicon","searchable":false,"sortable":false}},"siteDescription":{"edit":{"label":"siteDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteDescription","searchable":true,"sortable":true}},"defaultSeo":{"edit":{"label":"defaultSeo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"defaultSeo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","siteName","favicon","siteDescription"],"edit":[[{"name":"siteName","size":6},{"name":"favicon","size":6}],[{"name":"siteDescription","size":6}],[{"name":"defaultSeo","size":12}]]},"uid":"api::global.global"}	object	\N	\N
29	plugin_content_manager_configuration_content_types::api::project-feature.project-feature	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"key":{"edit":{"label":"key","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"key","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"project":{"edit":{"label":"project","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"project","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","key","label","value"],"edit":[[{"name":"key","size":6},{"name":"label","size":6}],[{"name":"value","size":6},{"name":"project","size":6}]]},"uid":"api::project-feature.project-feature"}	object	\N	\N
30	plugin_content_manager_configuration_content_types::api::faq.faq	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"question","defaultSortBy":"question","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"question":{"edit":{"label":"question","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"question","searchable":true,"sortable":true}},"answer":{"edit":{"label":"answer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"answer","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","question","answer","createdAt"],"edit":[[{"name":"question","size":6},{"name":"answer","size":6}]]},"uid":"api::faq.faq"}	object	\N	\N
32	plugin_content_manager_configuration_content_types::api::project-typologie.project-typologie	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"code","defaultSortBy":"code","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"surfaceMin":{"edit":{"label":"surfaceMin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"surfaceMin","searchable":true,"sortable":true}},"surfaceMax":{"edit":{"label":"surfaceMax","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"surfaceMax","searchable":true,"sortable":true}},"priceFrom":{"edit":{"label":"priceFrom","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"priceFrom","searchable":true,"sortable":true}},"statusTypologie":{"edit":{"label":"statusTypologie","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"statusTypologie","searchable":true,"sortable":true}},"project":{"edit":{"label":"project","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"project","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","code","surfaceMin","surfaceMax"],"edit":[[{"name":"code","size":6},{"name":"surfaceMin","size":4}],[{"name":"surfaceMax","size":4},{"name":"priceFrom","size":4}],[{"name":"statusTypologie","size":6},{"name":"project","size":6}]]},"uid":"api::project-typologie.project-typologie"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::api::about.about	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"ImageBanner":{"edit":{"label":"ImageBanner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ImageBanner","searchable":false,"sortable":false}},"ImageHistoire":{"edit":{"label":"ImageHistoire","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ImageHistoire","searchable":false,"sortable":false}},"ImageVision":{"edit":{"label":"ImageVision","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ImageVision","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","ImageBanner","ImageHistoire","ImageVision"],"edit":[[{"name":"ImageBanner","size":6},{"name":"ImageHistoire","size":6}],[{"name":"ImageVision","size":6}]]},"uid":"api::about.about"}	object	\N	\N
24	plugin_content_manager_configuration_content_types::api::hero-media.hero-media	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstItem":{"edit":{"label":"firstItem","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstItem","searchable":false,"sortable":false}},"secondItem":{"edit":{"label":"secondItem","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"secondItem","searchable":false,"sortable":false}},"thirdItem":{"edit":{"label":"thirdItem","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"thirdItem","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstItem","secondItem","thirdItem"],"edit":[[{"name":"firstItem","size":6},{"name":"secondItem","size":6}],[{"name":"thirdItem","size":6}]]},"uid":"api::hero-media.hero-media"}	object	\N	\N
33	plugin_content_manager_configuration_content_types::api::story.story	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"test":{"edit":{"label":"test","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"test","searchable":true,"sortable":true}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","media","test"],"edit":[[{"name":"title","size":6},{"name":"media","size":6}],[{"name":"test","size":6},{"name":"expiresAt","size":6}],[{"name":"isActive","size":4}]]},"uid":"api::story.story"}	object	\N	\N
41	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::api::category.category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"articles":{"edit":{"label":"articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"articles","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","articles"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"articles","size":6},{"name":"description","size":6}]]},"uid":"api::category.category"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::api::opportunity-moment.opportunity-moment	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"detail","defaultSortBy":"detail","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"detail":{"edit":{"label":"detail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"detail","searchable":true,"sortable":true}},"location":{"edit":{"label":"location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"location","searchable":true,"sortable":true}},"surface":{"edit":{"label":"surface","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"surface","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"price":{"edit":{"label":"price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"price","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"typology":{"edit":{"label":"typology","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"typology","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","detail","location","surface"],"edit":[[{"name":"detail","size":6},{"name":"location","size":6}],[{"name":"surface","size":4},{"name":"type","size":6}],[{"name":"price","size":4},{"name":"name","size":6}],[{"name":"typology","size":6},{"name":"image","size":6}]]},"uid":"api::opportunity-moment.opportunity-moment"}	object	\N	\N
35	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"encryptedKey":{"edit":{"label":"encryptedKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"encryptedKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"encryptedKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
52	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
19	plugin_content_manager_configuration_content_types::api::chat-response.chat-response	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"trigger","defaultSortBy":"trigger","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"trigger":{"edit":{"label":"trigger","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"trigger","searchable":true,"sortable":true}},"response":{"edit":{"label":"response","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"response","searchable":false,"sortable":false}},"enabled":{"edit":{"label":"enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enabled","searchable":true,"sortable":true}},"priority":{"edit":{"label":"priority","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"priority","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","trigger","enabled","priority"],"edit":[[{"name":"trigger","size":6}],[{"name":"response","size":12}],[{"name":"enabled","size":4},{"name":"priority","size":4}]]},"uid":"api::chat-response.chat-response"}	object	\N	\N
20	plugin_content_manager_configuration_content_types::api::contact-response.contact-response	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstName","defaultSortBy":"firstName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstName":{"edit":{"label":"firstName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstName","searchable":true,"sortable":true}},"lastName":{"edit":{"label":"lastName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastName","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"requestType":{"edit":{"label":"requestType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"requestType","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"message":{"edit":{"label":"message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"message","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstName","lastName","email"],"edit":[[{"name":"firstName","size":6},{"name":"lastName","size":6}],[{"name":"email","size":6},{"name":"phone","size":4}],[{"name":"requestType","size":6},{"name":"subject","size":6}],[{"name":"message","size":6}]]},"uid":"api::contact-response.contact-response"}	object	\N	\N
27	plugin_content_manager_configuration_content_types::api::project.project	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"shortDescription":{"edit":{"label":"shortDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shortDescription","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"projectStatus":{"edit":{"label":"projectStatus","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"projectStatus","searchable":true,"sortable":true}},"location":{"edit":{"label":"location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"location","searchable":true,"sortable":true}},"coverImage":{"edit":{"label":"coverImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"coverImage","searchable":false,"sortable":false}},"gallery":{"edit":{"label":"gallery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gallery","searchable":false,"sortable":false}},"mapImage":{"edit":{"label":"mapImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mapImage","searchable":false,"sortable":false}},"features":{"edit":{"label":"features","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"features","searchable":false,"sortable":false}},"timings":{"edit":{"label":"timings","description":"","placeholder":"","visible":true,"editable":true,"mainField":"documentId"},"list":{"label":"timings","searchable":false,"sortable":false}},"typologies":{"edit":{"label":"typologies","description":"","placeholder":"","visible":true,"editable":true,"mainField":"code"},"list":{"label":"typologies","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","shortDescription"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"shortDescription","size":6}],[{"name":"description","size":12}],[{"name":"projectStatus","size":6},{"name":"location","size":6}],[{"name":"coverImage","size":6},{"name":"gallery","size":6}],[{"name":"mapImage","size":6},{"name":"features","size":6}],[{"name":"timings","size":6},{"name":"typologies","size":6}]]},"uid":"api::project.project"}	object	\N	\N
36	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
38	plugin_content_manager_configuration_content_types::api::locality.locality	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"mapImage":{"edit":{"label":"mapImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mapImage","searchable":false,"sortable":false}},"location":{"edit":{"label":"location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"location","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","image","mapImage"],"edit":[[{"name":"name","size":6},{"name":"image","size":6}],[{"name":"mapImage","size":6},{"name":"location","size":6}]]},"uid":"api::locality.locality"}	object	\N	\N
22	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
31	plugin_content_manager_configuration_content_types::api::project-timing.project-timing	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"minutes":{"edit":{"label":"minutes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"minutes","searchable":true,"sortable":true}},"project":{"edit":{"label":"project","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"project","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","minutes","project"],"edit":[[{"name":"type","size":6},{"name":"minutes","size":4}],[{"name":"project","size":6}]]},"uid":"api::project-timing.project-timing"}	object	\N	\N
40	plugin_content_manager_configuration_content_types::admin::session	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"userId","defaultSortBy":"userId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"userId":{"edit":{"label":"userId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"userId","searchable":true,"sortable":true}},"sessionId":{"edit":{"label":"sessionId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sessionId","searchable":true,"sortable":true}},"childId":{"edit":{"label":"childId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"childId","searchable":true,"sortable":true}},"deviceId":{"edit":{"label":"deviceId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"deviceId","searchable":true,"sortable":true}},"origin":{"edit":{"label":"origin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"origin","searchable":true,"sortable":true}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"absoluteExpiresAt":{"edit":{"label":"absoluteExpiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"absoluteExpiresAt","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","userId","sessionId","childId"],"edit":[[{"name":"userId","size":6},{"name":"sessionId","size":6}],[{"name":"childId","size":6},{"name":"deviceId","size":6}],[{"name":"origin","size":6},{"name":"expiresAt","size":6}],[{"name":"absoluteExpiresAt","size":6},{"name":"status","size":6}],[{"name":"type","size":6}]]},"uid":"admin::session"}	object	\N	\N
44	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
25	plugin_content_manager_configuration_content_types::api::images-finition.images-finition	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"semiFinition":{"edit":{"label":"semiFinition","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"semiFinition","searchable":false,"sortable":false}},"fini":{"edit":{"label":"fini","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fini","searchable":false,"sortable":false}},"finitionTroisTiers":{"edit":{"label":"finitionTroisTiers","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"finitionTroisTiers","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","semiFinition","fini","finitionTroisTiers"],"edit":[[{"name":"semiFinition","size":6},{"name":"fini","size":6}],[{"name":"finitionTroisTiers","size":6}]]},"uid":"api::images-finition.images-finition"}	object	\N	\N
34	plugin_content_manager_configuration_content_types::api::testimonial.testimonial	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"link":{"edit":{"label":"link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"link","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","link","title","createdAt"],"edit":[[{"name":"link","size":6},{"name":"title","size":6}]]},"uid":"api::testimonial.testimonial"}	object	\N	\N
42	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
39	plugin_content_manager_configuration_content_types::api::article.article	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"shares":{"edit":{"label":"shares","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shares","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"cover":{"edit":{"label":"cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cover","searchable":false,"sortable":false}},"author":{"edit":{"label":"author","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"author","searchable":true,"sortable":true}},"category":{"edit":{"label":"category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"category","searchable":true,"sortable":true}},"blocks":{"edit":{"label":"blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocks","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","shares"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"shares","size":4},{"name":"slug","size":6}],[{"name":"cover","size":6},{"name":"author","size":6}],[{"name":"category","size":6}],[{"name":"blocks","size":12}]]},"uid":"api::article.article"}	object	\N	\N
43	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
1	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"abouts","indexes":[{"name":"abouts_documents_idx","columns":["document_id","locale","published_at"]},{"name":"abouts_created_by_id_fk","columns":["created_by_id"]},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"abouts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"articles_cmps","indexes":[{"name":"articles_field_idx","columns":["field"]},{"name":"articles_component_type_idx","columns":["component_type"]},{"name":"articles_entity_fk","columns":["entity_id"]},{"name":"articles_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"articles_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles","indexes":[{"name":"articles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"articles_created_by_id_fk","columns":["created_by_id"]},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"articles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"shares","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"authors","indexes":[{"name":"authors_documents_idx","columns":["document_id","locale","published_at"]},{"name":"authors_created_by_id_fk","columns":["created_by_id"]},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"authors_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"categories","indexes":[{"name":"categories_documents_idx","columns":["document_id","locale","published_at"]},{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"chat_responses","indexes":[{"name":"chat_responses_documents_idx","columns":["document_id","locale","published_at"]},{"name":"chat_responses_created_by_id_fk","columns":["created_by_id"]},{"name":"chat_responses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"chat_responses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"chat_responses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"trigger","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"response","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"priority","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"contact_responses","indexes":[{"name":"contact_responses_documents_idx","columns":["document_id","locale","published_at"]},{"name":"contact_responses_created_by_id_fk","columns":["created_by_id"]},{"name":"contact_responses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contact_responses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contact_responses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"first_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"request_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"message","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"faqs","indexes":[{"name":"faqs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"faqs_created_by_id_fk","columns":["created_by_id"]},{"name":"faqs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"faqs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"faqs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"question","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"answer","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"globals_cmps","indexes":[{"name":"globals_field_idx","columns":["field"]},{"name":"globals_component_type_idx","columns":["component_type"]},{"name":"globals_entity_fk","columns":["entity_id"]},{"name":"globals_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"globals_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"globals","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"globals","indexes":[{"name":"globals_documents_idx","columns":["document_id","locale","published_at"]},{"name":"globals_created_by_id_fk","columns":["created_by_id"]},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"globals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"hero_medias","indexes":[{"name":"hero_medias_documents_idx","columns":["document_id","locale","published_at"]},{"name":"hero_medias_created_by_id_fk","columns":["created_by_id"]},{"name":"hero_medias_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"hero_medias_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"hero_medias_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"images_finitions","indexes":[{"name":"images_finitions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"images_finitions_created_by_id_fk","columns":["created_by_id"]},{"name":"images_finitions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"images_finitions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"images_finitions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"localities","indexes":[{"name":"localities_documents_idx","columns":["document_id","locale","published_at"]},{"name":"localities_created_by_id_fk","columns":["created_by_id"]},{"name":"localities_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"localities_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"localities_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"location","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"opportunity_moments","indexes":[{"name":"opportunity_moments_documents_idx","columns":["document_id","locale","published_at"]},{"name":"opportunity_moments_created_by_id_fk","columns":["created_by_id"]},{"name":"opportunity_moments_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"opportunity_moments_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"opportunity_moments_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"detail","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"location","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"surface","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"typology","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"projects","indexes":[{"name":"projects_documents_idx","columns":["document_id","locale","published_at"]},{"name":"projects_created_by_id_fk","columns":["created_by_id"]},{"name":"projects_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"projects_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"projects_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"project_status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"location","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"project_contacts","indexes":[{"name":"project_contacts_documents_idx","columns":["document_id","locale","published_at"]},{"name":"project_contacts_created_by_id_fk","columns":["created_by_id"]},{"name":"project_contacts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"project_contacts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"project_contacts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"first_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"comment","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locality","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"typology","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"wilaya","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"project_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"project_features","indexes":[{"name":"project_features_documents_idx","columns":["document_id","locale","published_at"]},{"name":"project_features_created_by_id_fk","columns":["created_by_id"]},{"name":"project_features_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"project_features_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"project_features_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"project_timings","indexes":[{"name":"project_timings_documents_idx","columns":["document_id","locale","published_at"]},{"name":"project_timings_created_by_id_fk","columns":["created_by_id"]},{"name":"project_timings_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"project_timings_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"project_timings_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"minutes","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"project_typologies","indexes":[{"name":"project_typologies_documents_idx","columns":["document_id","locale","published_at"]},{"name":"project_typologies_created_by_id_fk","columns":["created_by_id"]},{"name":"project_typologies_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"project_typologies_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"project_typologies_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"surface_min","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"surface_max","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price_from","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status_typologie","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"stories","indexes":[{"name":"stories_documents_idx","columns":["document_id","locale","published_at"]},{"name":"stories_created_by_id_fk","columns":["created_by_id"]},{"name":"stories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"stories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"stories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"test","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"testimonials","indexes":[{"name":"testimonials_documents_idx","columns":["document_id","locale","published_at"]},{"name":"testimonials_created_by_id_fk","columns":["created_by_id"]},{"name":"testimonials_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"testimonials_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"testimonials_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"link","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"encrypted_key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_sessions","indexes":[{"name":"strapi_sessions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"session_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"child_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"device_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"origin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"absolute_expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_sliders","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_rich_texts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_quotes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_media","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_ai_localization_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"source_locale","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"target_locales","type":"jsonb","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_author_lnk","indexes":[{"name":"articles_author_lnk_fk","columns":["article_id"]},{"name":"articles_author_lnk_ifk","columns":["author_id"]},{"name":"articles_author_lnk_uq","columns":["article_id","author_id"],"type":"unique"},{"name":"articles_author_lnk_oifk","columns":["article_ord"]}],"foreignKeys":[{"name":"articles_author_lnk_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_author_lnk_ifk","columns":["author_id"],"referencedColumns":["id"],"referencedTable":"authors","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"author_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_category_lnk","indexes":[{"name":"articles_category_lnk_fk","columns":["article_id"]},{"name":"articles_category_lnk_ifk","columns":["category_id"]},{"name":"articles_category_lnk_uq","columns":["article_id","category_id"],"type":"unique"},{"name":"articles_category_lnk_oifk","columns":["article_ord"]}],"foreignKeys":[{"name":"articles_category_lnk_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_category_lnk_ifk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"project_features_project_lnk","indexes":[{"name":"project_features_project_lnk_fk","columns":["project_feature_id"]},{"name":"project_features_project_lnk_ifk","columns":["project_id"]},{"name":"project_features_project_lnk_uq","columns":["project_feature_id","project_id"],"type":"unique"},{"name":"project_features_project_lnk_oifk","columns":["project_feature_ord"]}],"foreignKeys":[{"name":"project_features_project_lnk_fk","columns":["project_feature_id"],"referencedColumns":["id"],"referencedTable":"project_features","onDelete":"CASCADE"},{"name":"project_features_project_lnk_ifk","columns":["project_id"],"referencedColumns":["id"],"referencedTable":"projects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"project_feature_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_feature_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"project_timings_project_lnk","indexes":[{"name":"project_timings_project_lnk_fk","columns":["project_timing_id"]},{"name":"project_timings_project_lnk_ifk","columns":["project_id"]},{"name":"project_timings_project_lnk_uq","columns":["project_timing_id","project_id"],"type":"unique"},{"name":"project_timings_project_lnk_oifk","columns":["project_timing_ord"]}],"foreignKeys":[{"name":"project_timings_project_lnk_fk","columns":["project_timing_id"],"referencedColumns":["id"],"referencedTable":"project_timings","onDelete":"CASCADE"},{"name":"project_timings_project_lnk_ifk","columns":["project_id"],"referencedColumns":["id"],"referencedTable":"projects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"project_timing_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_timing_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"project_typologies_project_lnk","indexes":[{"name":"project_typologies_project_lnk_fk","columns":["project_typologie_id"]},{"name":"project_typologies_project_lnk_ifk","columns":["project_id"]},{"name":"project_typologies_project_lnk_uq","columns":["project_typologie_id","project_id"],"type":"unique"},{"name":"project_typologies_project_lnk_oifk","columns":["project_typologie_ord"]}],"foreignKeys":[{"name":"project_typologies_project_lnk_fk","columns":["project_typologie_id"],"referencedColumns":["id"],"referencedTable":"project_typologies","onDelete":"CASCADE"},{"name":"project_typologies_project_lnk_ifk","columns":["project_id"],"referencedColumns":["id"],"referencedTable":"projects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"project_typologie_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_typologie_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2025-12-29 22:43:57.347	f9657bad27ba7a00a9d12054887c9478e8264f29e96df1415ecbfd3452e6ec6e
\.


--
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2025-12-29 22:43:55.545
2	5.0.0-02-created-document-id	2025-12-29 22:43:55.674
3	5.0.0-03-created-locale	2025-12-29 22:43:55.804
4	5.0.0-04-created-published-at	2025-12-29 22:43:55.921
5	5.0.0-05-drop-slug-fields-index	2025-12-29 22:43:56.056
6	core::5.0.0-discard-drafts	2025-12-29 22:43:56.184
\.


--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_sessions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_sessions (id, document_id, user_id, session_id, child_id, device_id, origin, expires_at, absolute_expires_at, status, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- Data for Name: testimonials; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.testimonials (id, document_id, link, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	q7hriwx9euzwf81mod8orpky	plugin::users-permissions.auth.logout	2025-12-29 22:43:58.914	2025-12-29 22:43:58.914	2025-12-29 22:43:58.915	\N	\N	\N
2	ocbyqjzc7vd70jkpuxnvi95k	plugin::users-permissions.user.me	2025-12-29 22:43:58.914	2025-12-29 22:43:58.914	2025-12-29 22:43:58.915	\N	\N	\N
3	nado4xyzrb0vs1yn5hi72l9w	plugin::users-permissions.auth.changePassword	2025-12-29 22:43:58.915	2025-12-29 22:43:58.915	2025-12-29 22:43:58.915	\N	\N	\N
4	g14zqtz5vs2u5obol7qnb2xv	plugin::users-permissions.auth.callback	2025-12-29 22:43:58.935	2025-12-29 22:43:58.935	2025-12-29 22:43:58.935	\N	\N	\N
5	q2t8gz1erl4hcu07cs8ymbql	plugin::users-permissions.auth.connect	2025-12-29 22:43:58.935	2025-12-29 22:43:58.935	2025-12-29 22:43:58.935	\N	\N	\N
6	k8jptoq3qw0na1npbn8bfog4	plugin::users-permissions.auth.forgotPassword	2025-12-29 22:43:58.935	2025-12-29 22:43:58.935	2025-12-29 22:43:58.936	\N	\N	\N
8	nfunw919ik6bd50b3dq9tzof	plugin::users-permissions.auth.emailConfirmation	2025-12-29 22:43:58.935	2025-12-29 22:43:58.935	2025-12-29 22:43:58.936	\N	\N	\N
7	xuutfz7ulic0bs24pvlw5xo0	plugin::users-permissions.auth.resetPassword	2025-12-29 22:43:58.935	2025-12-29 22:43:58.935	2025-12-29 22:43:58.936	\N	\N	\N
9	a0les6y9c8c23uwz6dxiswel	plugin::users-permissions.auth.register	2025-12-29 22:43:58.935	2025-12-29 22:43:58.935	2025-12-29 22:43:58.936	\N	\N	\N
10	nkjwh6ypd28p4ajdwvlxqzs0	plugin::users-permissions.auth.refresh	2025-12-29 22:43:58.935	2025-12-29 22:43:58.935	2025-12-29 22:43:58.936	\N	\N	\N
11	xqp1hy4ws4b597dgezj2jy47	plugin::users-permissions.auth.sendEmailConfirmation	2025-12-29 22:43:58.935	2025-12-29 22:43:58.935	2025-12-29 22:43:58.936	\N	\N	\N
\.


--
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	1	1
2	2	1	1
3	3	1	1
4	4	2	1
5	6	2	1
6	5	2	1
7	8	2	2
8	9	2	2
9	10	2	2
10	7	2	2
11	11	2	2
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	eqir6tj5gkf8ndoxuh5fdzmw	Authenticated	Default role given to authenticated user.	authenticated	2025-12-29 22:43:58.896	2025-12-29 22:43:58.896	2025-12-29 22:43:58.896	\N	\N	\N
2	uv0qgj0d65ota44rtnmz8642	Public	Default role given to unauthenticated user.	public	2025-12-29 22:43:58.902	2025-12-29 22:43:58.902	2025-12-29 22:43:58.902	\N	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- Name: abouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.abouts_id_seq', 1, false);


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 336, true);


--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 336, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, false);


--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 1, false);


--
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.articles_author_lnk_id_seq', 1, false);


--
-- Name: articles_category_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.articles_category_lnk_id_seq', 1, false);


--
-- Name: articles_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.articles_cmps_id_seq', 1, false);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.articles_id_seq', 1, false);


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.authors_id_seq', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: chat_responses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.chat_responses_id_seq', 1, false);


--
-- Name: components_shared_media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_media_id_seq', 1, false);


--
-- Name: components_shared_quotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_quotes_id_seq', 1, false);


--
-- Name: components_shared_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_rich_texts_id_seq', 1, false);


--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 1, false);


--
-- Name: components_shared_sliders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_sliders_id_seq', 1, false);


--
-- Name: contact_responses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.contact_responses_id_seq', 1, false);


--
-- Name: faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.faqs_id_seq', 1, false);


--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_id_seq', 1, false);


--
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_related_mph_id_seq', 1, false);


--
-- Name: globals_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.globals_cmps_id_seq', 1, false);


--
-- Name: globals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.globals_id_seq', 1, false);


--
-- Name: hero_medias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.hero_medias_id_seq', 1, false);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: images_finitions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.images_finitions_id_seq', 1, false);


--
-- Name: localities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.localities_id_seq', 1, false);


--
-- Name: opportunity_moments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.opportunity_moments_id_seq', 1, false);


--
-- Name: project_contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.project_contacts_id_seq', 1, false);


--
-- Name: project_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.project_features_id_seq', 1, false);


--
-- Name: project_features_project_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.project_features_project_lnk_id_seq', 1, false);


--
-- Name: project_timings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.project_timings_id_seq', 1, false);


--
-- Name: project_timings_project_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.project_timings_project_lnk_id_seq', 1, false);


--
-- Name: project_typologies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.project_typologies_id_seq', 1, false);


--
-- Name: project_typologies_project_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.project_typologies_project_lnk_id_seq', 1, false);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.projects_id_seq', 1, false);


--
-- Name: stories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.stories_id_seq', 1, false);


--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_ai_localization_jobs_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 2, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 52, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 1, true);


--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 6, true);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_sessions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- Name: testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.testimonials_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 11, true);


--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 11, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);


--
-- Name: abouts abouts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: articles_author_lnk articles_author_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_pkey PRIMARY KEY (id);


--
-- Name: articles_author_lnk articles_author_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_uq UNIQUE (article_id, author_id);


--
-- Name: articles_category_lnk articles_category_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_pkey PRIMARY KEY (id);


--
-- Name: articles_category_lnk articles_category_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_uq UNIQUE (article_id, category_id);


--
-- Name: articles_cmps articles_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_cmps
    ADD CONSTRAINT articles_cmps_pkey PRIMARY KEY (id);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: articles_cmps articles_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_cmps
    ADD CONSTRAINT articles_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: chat_responses chat_responses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.chat_responses
    ADD CONSTRAINT chat_responses_pkey PRIMARY KEY (id);


--
-- Name: components_shared_media components_shared_media_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_media
    ADD CONSTRAINT components_shared_media_pkey PRIMARY KEY (id);


--
-- Name: components_shared_quotes components_shared_quotes_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_quotes
    ADD CONSTRAINT components_shared_quotes_pkey PRIMARY KEY (id);


--
-- Name: components_shared_rich_texts components_shared_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_rich_texts
    ADD CONSTRAINT components_shared_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: components_shared_seos components_shared_seos_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);


--
-- Name: components_shared_sliders components_shared_sliders_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_sliders
    ADD CONSTRAINT components_shared_sliders_pkey PRIMARY KEY (id);


--
-- Name: contact_responses contact_responses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_responses
    ADD CONSTRAINT contact_responses_pkey PRIMARY KEY (id);


--
-- Name: faqs faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- Name: globals_cmps globals_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals_cmps
    ADD CONSTRAINT globals_cmps_pkey PRIMARY KEY (id);


--
-- Name: globals globals_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);


--
-- Name: globals_cmps globals_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals_cmps
    ADD CONSTRAINT globals_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: hero_medias hero_medias_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.hero_medias
    ADD CONSTRAINT hero_medias_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: images_finitions images_finitions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.images_finitions
    ADD CONSTRAINT images_finitions_pkey PRIMARY KEY (id);


--
-- Name: localities localities_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.localities
    ADD CONSTRAINT localities_pkey PRIMARY KEY (id);


--
-- Name: opportunity_moments opportunity_moments_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.opportunity_moments
    ADD CONSTRAINT opportunity_moments_pkey PRIMARY KEY (id);


--
-- Name: project_contacts project_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_contacts
    ADD CONSTRAINT project_contacts_pkey PRIMARY KEY (id);


--
-- Name: project_features project_features_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_features
    ADD CONSTRAINT project_features_pkey PRIMARY KEY (id);


--
-- Name: project_features_project_lnk project_features_project_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_features_project_lnk
    ADD CONSTRAINT project_features_project_lnk_pkey PRIMARY KEY (id);


--
-- Name: project_features_project_lnk project_features_project_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_features_project_lnk
    ADD CONSTRAINT project_features_project_lnk_uq UNIQUE (project_feature_id, project_id);


--
-- Name: project_timings project_timings_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_timings
    ADD CONSTRAINT project_timings_pkey PRIMARY KEY (id);


--
-- Name: project_timings_project_lnk project_timings_project_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_timings_project_lnk
    ADD CONSTRAINT project_timings_project_lnk_pkey PRIMARY KEY (id);


--
-- Name: project_timings_project_lnk project_timings_project_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_timings_project_lnk
    ADD CONSTRAINT project_timings_project_lnk_uq UNIQUE (project_timing_id, project_id);


--
-- Name: project_typologies project_typologies_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_typologies
    ADD CONSTRAINT project_typologies_pkey PRIMARY KEY (id);


--
-- Name: project_typologies_project_lnk project_typologies_project_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_typologies_project_lnk
    ADD CONSTRAINT project_typologies_project_lnk_pkey PRIMARY KEY (id);


--
-- Name: project_typologies_project_lnk project_typologies_project_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_typologies_project_lnk
    ADD CONSTRAINT project_typologies_project_lnk_uq UNIQUE (project_typologie_id, project_id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: stories stories_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.stories
    ADD CONSTRAINT stories_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_localization_jobs strapi_ai_localization_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs
    ADD CONSTRAINT strapi_ai_localization_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_sessions strapi_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- Name: testimonials testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.testimonials
    ADD CONSTRAINT testimonials_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: abouts_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX abouts_created_by_id_fk ON public.abouts USING btree (created_by_id);


--
-- Name: abouts_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX abouts_documents_idx ON public.abouts USING btree (document_id, locale, published_at);


--
-- Name: abouts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX abouts_updated_by_id_fk ON public.abouts USING btree (updated_by_id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);


--
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);


--
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: articles_author_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_author_lnk_fk ON public.articles_author_lnk USING btree (article_id);


--
-- Name: articles_author_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_author_lnk_ifk ON public.articles_author_lnk USING btree (author_id);


--
-- Name: articles_author_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_author_lnk_oifk ON public.articles_author_lnk USING btree (article_ord);


--
-- Name: articles_category_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_category_lnk_fk ON public.articles_category_lnk USING btree (article_id);


--
-- Name: articles_category_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_category_lnk_ifk ON public.articles_category_lnk USING btree (category_id);


--
-- Name: articles_category_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_category_lnk_oifk ON public.articles_category_lnk USING btree (article_ord);


--
-- Name: articles_component_type_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_component_type_idx ON public.articles_cmps USING btree (component_type);


--
-- Name: articles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_created_by_id_fk ON public.articles USING btree (created_by_id);


--
-- Name: articles_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_documents_idx ON public.articles USING btree (document_id, locale, published_at);


--
-- Name: articles_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_entity_fk ON public.articles_cmps USING btree (entity_id);


--
-- Name: articles_field_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_field_idx ON public.articles_cmps USING btree (field);


--
-- Name: articles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_updated_by_id_fk ON public.articles USING btree (updated_by_id);


--
-- Name: authors_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX authors_created_by_id_fk ON public.authors USING btree (created_by_id);


--
-- Name: authors_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX authors_documents_idx ON public.authors USING btree (document_id, locale, published_at);


--
-- Name: authors_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX authors_updated_by_id_fk ON public.authors USING btree (updated_by_id);


--
-- Name: categories_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);


--
-- Name: categories_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX categories_documents_idx ON public.categories USING btree (document_id, locale, published_at);


--
-- Name: categories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);


--
-- Name: chat_responses_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX chat_responses_created_by_id_fk ON public.chat_responses USING btree (created_by_id);


--
-- Name: chat_responses_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX chat_responses_documents_idx ON public.chat_responses USING btree (document_id, locale, published_at);


--
-- Name: chat_responses_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX chat_responses_updated_by_id_fk ON public.chat_responses USING btree (updated_by_id);


--
-- Name: contact_responses_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_responses_created_by_id_fk ON public.contact_responses USING btree (created_by_id);


--
-- Name: contact_responses_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_responses_documents_idx ON public.contact_responses USING btree (document_id, locale, published_at);


--
-- Name: contact_responses_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_responses_updated_by_id_fk ON public.contact_responses USING btree (updated_by_id);


--
-- Name: faqs_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX faqs_created_by_id_fk ON public.faqs USING btree (created_by_id);


--
-- Name: faqs_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX faqs_documents_idx ON public.faqs USING btree (document_id, locale, published_at);


--
-- Name: faqs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX faqs_updated_by_id_fk ON public.faqs USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);


--
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);


--
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);


--
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);


--
-- Name: files_related_mph_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);


--
-- Name: files_related_mph_idix; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);


--
-- Name: files_related_mph_oidx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: globals_component_type_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX globals_component_type_idx ON public.globals_cmps USING btree (component_type);


--
-- Name: globals_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX globals_created_by_id_fk ON public.globals USING btree (created_by_id);


--
-- Name: globals_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX globals_documents_idx ON public.globals USING btree (document_id, locale, published_at);


--
-- Name: globals_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX globals_entity_fk ON public.globals_cmps USING btree (entity_id);


--
-- Name: globals_field_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX globals_field_idx ON public.globals_cmps USING btree (field);


--
-- Name: globals_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX globals_updated_by_id_fk ON public.globals USING btree (updated_by_id);


--
-- Name: hero_medias_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX hero_medias_created_by_id_fk ON public.hero_medias USING btree (created_by_id);


--
-- Name: hero_medias_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX hero_medias_documents_idx ON public.hero_medias USING btree (document_id, locale, published_at);


--
-- Name: hero_medias_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX hero_medias_updated_by_id_fk ON public.hero_medias USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: images_finitions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX images_finitions_created_by_id_fk ON public.images_finitions USING btree (created_by_id);


--
-- Name: images_finitions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX images_finitions_documents_idx ON public.images_finitions USING btree (document_id, locale, published_at);


--
-- Name: images_finitions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX images_finitions_updated_by_id_fk ON public.images_finitions USING btree (updated_by_id);


--
-- Name: localities_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX localities_created_by_id_fk ON public.localities USING btree (created_by_id);


--
-- Name: localities_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX localities_documents_idx ON public.localities USING btree (document_id, locale, published_at);


--
-- Name: localities_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX localities_updated_by_id_fk ON public.localities USING btree (updated_by_id);


--
-- Name: opportunity_moments_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX opportunity_moments_created_by_id_fk ON public.opportunity_moments USING btree (created_by_id);


--
-- Name: opportunity_moments_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX opportunity_moments_documents_idx ON public.opportunity_moments USING btree (document_id, locale, published_at);


--
-- Name: opportunity_moments_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX opportunity_moments_updated_by_id_fk ON public.opportunity_moments USING btree (updated_by_id);


--
-- Name: project_contacts_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_contacts_created_by_id_fk ON public.project_contacts USING btree (created_by_id);


--
-- Name: project_contacts_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_contacts_documents_idx ON public.project_contacts USING btree (document_id, locale, published_at);


--
-- Name: project_contacts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_contacts_updated_by_id_fk ON public.project_contacts USING btree (updated_by_id);


--
-- Name: project_features_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_features_created_by_id_fk ON public.project_features USING btree (created_by_id);


--
-- Name: project_features_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_features_documents_idx ON public.project_features USING btree (document_id, locale, published_at);


--
-- Name: project_features_project_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_features_project_lnk_fk ON public.project_features_project_lnk USING btree (project_feature_id);


--
-- Name: project_features_project_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_features_project_lnk_ifk ON public.project_features_project_lnk USING btree (project_id);


--
-- Name: project_features_project_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_features_project_lnk_oifk ON public.project_features_project_lnk USING btree (project_feature_ord);


--
-- Name: project_features_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_features_updated_by_id_fk ON public.project_features USING btree (updated_by_id);


--
-- Name: project_timings_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_timings_created_by_id_fk ON public.project_timings USING btree (created_by_id);


--
-- Name: project_timings_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_timings_documents_idx ON public.project_timings USING btree (document_id, locale, published_at);


--
-- Name: project_timings_project_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_timings_project_lnk_fk ON public.project_timings_project_lnk USING btree (project_timing_id);


--
-- Name: project_timings_project_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_timings_project_lnk_ifk ON public.project_timings_project_lnk USING btree (project_id);


--
-- Name: project_timings_project_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_timings_project_lnk_oifk ON public.project_timings_project_lnk USING btree (project_timing_ord);


--
-- Name: project_timings_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_timings_updated_by_id_fk ON public.project_timings USING btree (updated_by_id);


--
-- Name: project_typologies_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_typologies_created_by_id_fk ON public.project_typologies USING btree (created_by_id);


--
-- Name: project_typologies_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_typologies_documents_idx ON public.project_typologies USING btree (document_id, locale, published_at);


--
-- Name: project_typologies_project_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_typologies_project_lnk_fk ON public.project_typologies_project_lnk USING btree (project_typologie_id);


--
-- Name: project_typologies_project_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_typologies_project_lnk_ifk ON public.project_typologies_project_lnk USING btree (project_id);


--
-- Name: project_typologies_project_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_typologies_project_lnk_oifk ON public.project_typologies_project_lnk USING btree (project_typologie_ord);


--
-- Name: project_typologies_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_typologies_updated_by_id_fk ON public.project_typologies USING btree (updated_by_id);


--
-- Name: projects_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX projects_created_by_id_fk ON public.projects USING btree (created_by_id);


--
-- Name: projects_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX projects_documents_idx ON public.projects USING btree (document_id, locale, published_at);


--
-- Name: projects_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX projects_updated_by_id_fk ON public.projects USING btree (updated_by_id);


--
-- Name: stories_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX stories_created_by_id_fk ON public.stories USING btree (created_by_id);


--
-- Name: stories_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX stories_documents_idx ON public.stories USING btree (document_id, locale, published_at);


--
-- Name: stories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX stories_updated_by_id_fk ON public.stories USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);


--
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_sessions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_sessions_created_by_id_fk ON public.strapi_sessions USING btree (created_by_id);


--
-- Name: strapi_sessions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_sessions_documents_idx ON public.strapi_sessions USING btree (document_id, locale, published_at);


--
-- Name: strapi_sessions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_sessions_updated_by_id_fk ON public.strapi_sessions USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);


--
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);


--
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);


--
-- Name: testimonials_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX testimonials_created_by_id_fk ON public.testimonials USING btree (created_by_id);


--
-- Name: testimonials_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX testimonials_documents_idx ON public.testimonials USING btree (document_id, locale, published_at);


--
-- Name: testimonials_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX testimonials_updated_by_id_fk ON public.testimonials USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);


--
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);


--
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);


--
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);


--
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);


--
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: abouts abouts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: abouts abouts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: articles_author_lnk articles_author_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: articles_author_lnk articles_author_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_ifk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;


--
-- Name: articles_category_lnk articles_category_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: articles_category_lnk articles_category_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_category_lnk
    ADD CONSTRAINT articles_category_lnk_ifk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: articles articles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: articles_cmps articles_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_cmps
    ADD CONSTRAINT articles_entity_fk FOREIGN KEY (entity_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: articles articles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: authors authors_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: authors authors_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: chat_responses chat_responses_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.chat_responses
    ADD CONSTRAINT chat_responses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: chat_responses chat_responses_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.chat_responses
    ADD CONSTRAINT chat_responses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contact_responses contact_responses_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_responses
    ADD CONSTRAINT contact_responses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contact_responses contact_responses_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_responses
    ADD CONSTRAINT contact_responses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: faqs faqs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: faqs faqs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: globals globals_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: globals_cmps globals_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals_cmps
    ADD CONSTRAINT globals_entity_fk FOREIGN KEY (entity_id) REFERENCES public.globals(id) ON DELETE CASCADE;


--
-- Name: globals globals_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: hero_medias hero_medias_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.hero_medias
    ADD CONSTRAINT hero_medias_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: hero_medias hero_medias_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.hero_medias
    ADD CONSTRAINT hero_medias_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: images_finitions images_finitions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.images_finitions
    ADD CONSTRAINT images_finitions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: images_finitions images_finitions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.images_finitions
    ADD CONSTRAINT images_finitions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: localities localities_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.localities
    ADD CONSTRAINT localities_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: localities localities_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.localities
    ADD CONSTRAINT localities_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: opportunity_moments opportunity_moments_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.opportunity_moments
    ADD CONSTRAINT opportunity_moments_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: opportunity_moments opportunity_moments_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.opportunity_moments
    ADD CONSTRAINT opportunity_moments_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: project_contacts project_contacts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_contacts
    ADD CONSTRAINT project_contacts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: project_contacts project_contacts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_contacts
    ADD CONSTRAINT project_contacts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: project_features project_features_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_features
    ADD CONSTRAINT project_features_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: project_features_project_lnk project_features_project_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_features_project_lnk
    ADD CONSTRAINT project_features_project_lnk_fk FOREIGN KEY (project_feature_id) REFERENCES public.project_features(id) ON DELETE CASCADE;


--
-- Name: project_features_project_lnk project_features_project_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_features_project_lnk
    ADD CONSTRAINT project_features_project_lnk_ifk FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: project_features project_features_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_features
    ADD CONSTRAINT project_features_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: project_timings project_timings_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_timings
    ADD CONSTRAINT project_timings_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: project_timings_project_lnk project_timings_project_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_timings_project_lnk
    ADD CONSTRAINT project_timings_project_lnk_fk FOREIGN KEY (project_timing_id) REFERENCES public.project_timings(id) ON DELETE CASCADE;


--
-- Name: project_timings_project_lnk project_timings_project_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_timings_project_lnk
    ADD CONSTRAINT project_timings_project_lnk_ifk FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: project_timings project_timings_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_timings
    ADD CONSTRAINT project_timings_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: project_typologies project_typologies_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_typologies
    ADD CONSTRAINT project_typologies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: project_typologies_project_lnk project_typologies_project_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_typologies_project_lnk
    ADD CONSTRAINT project_typologies_project_lnk_fk FOREIGN KEY (project_typologie_id) REFERENCES public.project_typologies(id) ON DELETE CASCADE;


--
-- Name: project_typologies_project_lnk project_typologies_project_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_typologies_project_lnk
    ADD CONSTRAINT project_typologies_project_lnk_ifk FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: project_typologies project_typologies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_typologies
    ADD CONSTRAINT project_typologies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: projects projects_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: projects projects_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: stories stories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.stories
    ADD CONSTRAINT stories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: stories stories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.stories
    ADD CONSTRAINT stories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: testimonials testimonials_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.testimonials
    ADD CONSTRAINT testimonials_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: testimonials testimonials_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.testimonials
    ADD CONSTRAINT testimonials_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict hDpQaSYel9jNGy34zRHRYOtGyJLewzifkdPbN8UBhkis92w3CCatRLIE8NtaYHx

