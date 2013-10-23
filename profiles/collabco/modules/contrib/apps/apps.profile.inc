<?php
/**
 * This file handles all the functions for downloading, transferring and 
 * installing apps during the install process.
 */

/**
 * Add install tasks to profile install tasks.
 * 
 * See apps.api.php for use.
 *
 */
function apps_profile_install_tasks($install_state, $apps_server) {
  // Need to include the apps.module file because on installs the profile
  // collects all install tasks before any modules are enabled
  module_load_include('module', 'apps');

  // Only use apps forms during interactive installs.
  $tasks = array();
  $apps_server_name = $apps_server['machine name'];

  $task_screen = 'apps_profile_apps_select_form_' . $apps_server_name;
  $_SESSION['apps_servers'][$task_screen] = $apps_server;
  $tasks = array(
    // Setup an initial task to verify capability to run apps.
    'apps_install_verify' => array(
      'display_name' => t('Verify Apps support'),
      'type' => 'form',
      'function' => 'apps_install_verify',
    ),
    $task_screen => array(
      'display_name' => apps_profile_get_server_name($apps_server),
      'type' => 'form',
      'function' => 'apps_profile_apps_select_form',
    ),
    'apps_profile_download_app_modules_' . $apps_server_name => array(
      'display' => FALSE,
      'type' => 'batch',
      // If this is not an interactive install, we can download apps only if we have write access.
      'run' => (!empty($_SESSION['apps_downloads']) && ($install_state['interactive'] || apps_installer_has_write_access())) ? INSTALL_TASK_RUN_IF_NOT_COMPLETED : INSTALL_TASK_SKIP,
      'function' => 'apps_profile_download_app_modules',
    ),
    // Only need this if using filetransfer authorization.
    'apps_profile_authorize_transfer_' . $apps_server_name => array(
      'display' => FALSE,
      'type' => 'form',
      'run' => (!empty($_SESSION['apps_downloads']) && $install_state['interactive'] && !apps_installer_has_write_access()) ? INSTALL_TASK_RUN_IF_NOT_COMPLETED : INSTALL_TASK_SKIP,
      'function' => 'apps_profile_authorize_transfer',
    ),
    'apps_profile_install_app_modules_' . $apps_server_name => array(
      'display' => FALSE,
      'type' => 'batch',
      'run' => (!empty($_SESSION['apps_downloads']) && ($install_state['interactive'] || apps_installer_has_write_access())) ? INSTALL_TASK_RUN_IF_NOT_COMPLETED : INSTALL_TASK_SKIP,
      'function' => 'apps_profile_install_app_modules',
    ),
    'apps_profile_enable_app_modules_' . $apps_server_name => array(
      'display' => FALSE,
      'type' => 'batch',
      'run' => (isset($_SESSION['apps'])) ? INSTALL_TASK_RUN_IF_NOT_COMPLETED : INSTALL_TASK_SKIP,
      'function' => 'apps_profile_enable_app_modules',
    ),
  );
  return $tasks;
}
