;******************************************************************************
;            (META Variant) Collabco Install Profile - Make File
;******************************************************************************

; Build META codebase

; @TODO - proper feature versioning, drupal releases or git tags??
;       - use develop and master branches for dev and prod builds, duplicating
;       this file for both. Would be nice to do this from a template with a rake
;       task so we only need to update one version...
;       - finishing moving all specific dependencies to make files in feature repos.

; CORE VERSION
; ------------
; Each install profile should begin by declaring the core version of Drupal that all
; projects should be compatible with.

;core = "7.x"

; DRUSH API
; ---------
; Each make file should declare the Drush API version.

;api = "2"

; META CUSTOM MODULES
; -------------------
; Modules specific to this installation.


; DRUPAL 7
; --------
; Core Drupal 7 CMS

;projects[drupal][version] = "7.23"

; ADMIN
; -----

projects[admin_menu][type] = "module"
projects[admin_menu][subdir] = "contrib"
projects[admin_menu][version] = "3.0-rc4"

; CONTENT
; -------

projects[captcha][type] = "module"
projects[captcha][subdir] = "contrib"
projects[captcha][version] = "1.0"

projects[recaptcha][type] = "module"
projects[recaptcha][subdir] = "contrib"
; @TODO - Test: projects[recaptcha][version] = "1.10"
projects[recaptcha][version] = "1.9"

projects[stringoverrides][type] = "module"
projects[stringoverrides][subdir] = "contrib"
projects[stringoverrides][version] = "1.8"

; COMMUNICATION
; -------------

projects[message][type] = "module"
projects[message][subdir] = "contrib"
projects[message][version] = "1.9"

projects[olark][type] = "module"
projects[olark][subdir] = "contrib"
projects[olark][version] = "1.0-beta1"

; DEVELOPMENT
; -----------

projects[devel][type] = "module"
projects[devel][subdir] = "contrib"
projects[devel][version] = "1.3"

projects[diff][type] = "module"
projects[diff][subdir] = "contrib"
projects[diff][version] = "3.2"

projects[masquerade][type] = "module"
projects[masquerade][subdir] = "contrib"
projects[masquerade][version] = "1.0-rc5"

projects[node_export][type] = "module"
projects[node_export][subdir] = "contrib"
projects[node_export][version] = "3.0"

projects[profiler][type] = "module"
projects[profiler][subdir] = "contrib"
projects[profiler][version] = "2.0-beta1"

projects[profiler_builder][type] = "module"
projects[profiler_builder][subdir] = "contrib"
projects[profiler_builder][version] = "1.0"

projects[strongarm][type] = "module"
projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = "2.0"

projects[coder][type] = "module"
projects[coder][subdir] = "contrib"
projects[coder][version] = "2.0"

projects[coder_tough_love][type] = "module"
projects[coder_tough_love][subdir] = "contrib"
projects[coder_tough_love][version] = "1.0"

projects[drupalforfirebug][type] = "module"
projects[drupalforfirebug][subdir] = "contrib"
projects[drupalforfirebug][version] = "1.4"

; DISPLAY
; -------

projects[context][type] = "module"
projects[context][subdir] = "contrib"
; @TODO - Test: projects[context][version] = "3.0-rc1"
projects[context][version] = "3.0-beta7"

projects[nodequeue][type] = "module"
projects[nodequeue][subdir] = "contrib"
; @TODO - Test: projects[nodequeue][version] = "2.0-beta1"
projects[nodequeue][version] = "2.x-dev"

; EDITING
; -------

; EMAIL
; -----


; FACEBOOK
; --------

; FIELD RELATED
; -------------

projects[email][type] = "module"
projects[email][subdir] = "contrib"
projects[email][version] = "1.2"

projects[telephone][type] = "module"
projects[telephone][subdir] = "contrib"
projects[telephone][version] = "1.x-dev"


projects[addressfield][type] = "module"
projects[addressfield][subdir] = "contrib"
projects[addressfield][version] = "1.0-beta4"

projects[creative_commons][type] = "module"
projects[creative_commons][subdir] = "contrib"
projects[creative_commons][version] = "1.0"

projects[date][type] = "module"
projects[date][subdir] = "contrib"
projects[date][version] = "2.6"

projects[entityreference][type] = "module"
projects[entityreference][subdir] = "contrib"
projects[entityreference][version] = "1.0"

projects[field_collection][type] = "module"
projects[field_collection][subdir] = "contrib"
projects[field_collection][version] = "1.0-beta5"

projects[field_collection_fieldset][type] = "module"
projects[field_collection_fieldset][subdir] = "contrib"
projects[field_collection_fieldset][version] = "2.3"

projects[link][type] = "module"
projects[link][subdir] = "contrib"
projects[link][version] = "1.1"

projects[realname][type] = "module"
projects[realname][subdir] = "contrib"
projects[realname][version] = "1.1"

projects[uuid_features][type] = "module"
projects[uuid_features][subdir] = "contrib"
projects[uuid_features][version] = "1.0-alpha3"

; FEATURES
; --------

projects[features][type] = "module"
projects[features][subdir] = "contrib"
projects[features][version] = "2.0"

projects[features_extra][type] = "module"
projects[features_extra][subdir] = "contrib"
projects[features_extra][version] = "1.0-beta1"


; FORM
; ----

; GROUPS
; ------

projects[og][type] = "module"
projects[og][subdir] = "contrib"
projects[og][version] = "2.3"

projects[context_og][type] = "module"
projects[context_og][subdir] = "contrib"
projects[context_og][version] = "2.1"

; IMAGE HANDLING
; --------------

; JAVASCRIPT
; ----------

projects[jquery_update][type] = "module"
projects[jquery_update][subdir] = "contrib"
; @TODO - Test: projects[jquery_update][version] = "2.3"
projects[jquery_update][version] = "2.x-dev"

; LOCATION
; --------

; MAIL RELATED
; ------------

projects[mail_edit][type] = "module"
projects[mail_edit][subdir] = "contrib"
projects[mail_edit][version] = "1.0"

;projects[mailmime][type] = "module"
;projects[mailmime][subdir] = "contrib"
;projects[mailmime][version] = "2.18"

projects[mailsystem][type] = "module"
projects[mailsystem][subdir] = "contrib"
projects[mailsystem][version] = "2.34"

projects[mandrill][type] = "module"
projects[mandrill][subdir] = "contrib"
projects[mandrill][version] = "1.4"

projects[mimemail][type] = "module"
projects[mimemail][subdir] = "contrib"
projects[mimemail][version] = "1.0-alpha2"

; MENU RELATED
; ------------

; NGINX SERVER
; -------------

projects[filefield_nginx_progress][type] = "module"
projects[filefield_nginx_progress][subdir] = "contrib"
projects[filefield_nginx_progress][version] = "2.3"

; REGISTRATION SUPPORT
; --------------------

projects[legal][type] = "module"
projects[legal][subdir] = "contrib"
projects[legal][version] = "1.4"

projects[logintoboggan][type] = "module"
projects[logintoboggan][subdir] = "contrib"
projects[logintoboggan][version] = "1.3"

projects[realname_registration][type] = "module"
projects[realname_registration][subdir] = "contrib"
projects[realname_registration][version] = "2.0-rc2"

projects[reg_with_pic][type] = "module"
projects[reg_with_pic][subdir] = "contrib"
projects[reg_with_pic][version] = "1.0"

projects[register_preapproved][type] = "module"
projects[register_preapproved][subdir] = "contrib"
projects[register_preapproved][version] = "1.0-beta2"

; RULES
; -----

projects[rules][type] = "module"
projects[rules][subdir] = "contrib"
projects[rules][version] = "2.5"

; SEARCH
; ------

;projects[apachesolr][type] = "module"
;projects[apachesolr][subdir] = "contrib"
;projects[apachesolr][version] = "1.4"

;projects[apachesolr_autocomplete][type] = "module"
;projects[apachesolr_autocomplete][subdir] = "contrib"
;projects[apachesolr_autocomplete][version] = "1.3"

; SECURITY RELATED
; ----------------

;projects[security_review][type] = "module"
;projects[security_review][subdir] = "contrib"
;projects[security_review][version] = "1.1"

; SEO & ANALYTICS RELATED
; -----------------------

projects[google_analytics][type] = "module"
projects[google_analytics][subdir] = "contrib"
projects[google_analytics][version] = "1.3"

; TABS
; ----

projects[quicktabs][type] = "module"
projects[quicktabs][subdir] = "contrib"
projects[quicktabs][vquicktabsersion] = "3.6"

; THEME RELATED
; -------------

projects[block_class][type] = "module"
projects[block_class][subdir] = "contrib"
; @TODO - Test: projects[block_class][version] = "2.1"
projects[block_class][version] = "2.0"

;projects[collabco_theme][type] = "module"
;projects[collabco_theme][download][type] = "git"
;projects[collabco_theme][download][url] = "git@github.com:Collabforge/collabco_theme.git"
;projects[collabco_theme][type] = "theme"

projects[open_framework][type] = "module"
projects[open_framework][download][type] = "git"
projects[open_framework][download][url] = "https://github.com/SU-SWS/open_framework.git"
projects[open_framework][download][tag] = "7.x-2.06"
projects[open_framework][type] = "theme"


; THEME SUPPORT
; -------------

projects[user_stats][type] = "module"
projects[user_stats][subdir] = "contrib"
projects[user_stats][version] = "1.x-dev"

; URL RELATED
; -----------

projects[pathauto][type] = "module"
projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = "1.2"

projects[pathologic][type] = "module"
projects[pathologic][subdir] = "contrib"
projects[pathologic][version] = "2.11"

; USER RELATED
; ------------

projects[profile2][type] = "module"
projects[profile2][subdir] = "contrib"
projects[profile2][version] = "1.3"

; UTILITIES
; ---------

projects[ctools][type] = "module"
projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.3"

projects[entity][type] = "module"
projects[entity][subdir] = "contrib"
; @TODO - Test: projects[entity][version] = "1.2"
projects[entity][version] = "1.1"

projects[entityconnect][type] = "module"
projects[entityconnect][subdir] = "contrib"
projects[entityconnect][version] = "1.0-rc1"

projects[feeds][type] = "module"
projects[feeds][subdir] = "contrib"
; @TODO - Test: projects[feeds][version] = "2.0-alpha8"
projects[feeds][version] = "2.x-dev"

projects[job_scheduler][type] = "module"
projects[job_scheduler][subdir] = "contrib"
projects[job_scheduler][version] = "2.0-alpha3"

projects[libraries][type] = "module"
projects[libraries][subdir] = "contrib"
projects[libraries][version] = "2.1"

projects[migrate][type] = "module"
projects[migrate][subdir] = "contrib"
projects[migrate][version] = "2.5"

projects[migrate_d2d][type] = "module"
projects[migrate_d2d][subdir] = "contrib"
projects[migrate_d2d][version] = "2.0"

projects[token][type] = "module"
projects[token][subdir] = "contrib"
projects[token][version] = "1.5"

projects[uuid][type] = "module"
projects[uuid][subdir] = "contrib"
projects[uuid][version] = "1.0-alpha5"

; VIDEO
; -----

; VIEWS
; -----

projects[better_exposed_filters][type] = "module"
projects[better_exposed_filters][subdir] = "contrib"
projects[better_exposed_filters][version] = "3.0-beta3"

projects[views][type] = "module"
projects[views][subdir] = "contrib"
projects[views][version] = "3.7"

projects[views_autocomplete_filters][type] = "module"
projects[views_autocomplete_filters][subdir] = "contrib"
projects[views_autocomplete_filters][version] = "1.0"

projects[views_bulk_operations][type] = "module"
projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][version] = "3.1"

projects[views_data_export][type] = "module"
projects[views_data_export][subdir] = "contrib"
projects[views_data_export][version] = "3.0-beta6"

projects[views_send][type] = "module"
projects[views_send][subdir] = "contrib"
projects[views_send][version] = "1.0-rc3"

projects[views_slideshow][type] = "module"
projects[views_slideshow][subdir] = "contrib"
; @TODO - Test: projects[views_slideshow][version] = "3.0"
projects[views_slideshow][version] = "3.x-dev"

; WYSIWYG EDITOR
; --------------

projects[better_formats][type] = "module"
projects[better_formats][subdir] = "contrib"
projects[better_formats][version] = "1.0-beta1"

projects[ckeditor][type] = "module"
projects[ckeditor][subdir] = "contrib"
projects[ckeditor][version] = "1.13"
