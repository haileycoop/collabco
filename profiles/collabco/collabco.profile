<?php

/**
 * Implements hook_install_tasks()
 */
function collabco_install_tasks(&$install_state) {
  $tasks = array();

  // Add our custom CSS file for the installation process
  drupal_add_css(drupal_get_path('profile', 'collabco') . '/collabco.css');

  // Add the Collabco app selection to the installation process
  // require_once(drupal_get_path('module', 'apps') . '/apps.profile.inc');
  // $tasks = $tasks + apps_profile_install_tasks($install_state, array('machine name' => 'collabco', 'default apps' => array()));

  // Add the Collabco theme selection to the installation process
  // require_once(drupal_get_path('module', 'cc_theme') . '/cc_theme.profile.inc');
  // $tasks = $tasks + collabco_theme_profile_theme_selection_install_task($install_state);

  $tasks['collabco_features_revert_all'] = array(
    'type' => 'normal',
  );

  return $tasks;
}
// @TODO update hook_features_revert targeting features modules - Web Oct 2
function collabco_features_revert_all() {
  drupal_set_time_limit(0);
  // features_revert(array('oa_core' => array('field_base'), 'oa_sections' => array('field_base', 'field_instance')));
  features_revert();
}

/**
 * Implements hook_install_tasks_alter()
 */
function collabco_install_tasks_alter(&$tasks, $install_state) {
  // require_once(drupal_get_path('module', 'oa_core') . '/oa_core.profile.inc');
  // $tasks['install_load_profile']['function'] = 'oa_core_install_load_profile';
}

/**
 * Implements hook_form_FORM_ID_alter()
 */
function collabco_form_install_configure_form_alter(&$form, $form_state) {
}

/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
if (!function_exists("system_form_install_configure_form_alter")) {
  function system_form_install_configure_form_alter(&$form, $form_state) {
    $form['site_information']['site_name']['#default_value'] = 'collabco';
  }
}

/**
 * Implements hook_form_alter().
 *
 * Select the current install profile by default.
 */
if (!function_exists("system_form_install_select_profile_form_alter")) {
  function system_form_install_select_profile_form_alter(&$form, $form_state) {
    foreach ($form['profile'] as $key => $element) {
      $form['profile'][$key]['#value'] = 'collabco';
    }
  }
}

/**
 * Implements hook_form_FORM_ID_alter()
 */
function collabco_form_apps_profile_apps_select_form_alter(&$form, $form_state) {
  // panopoly_form_apps_profile_apps_select_form_alter($form, $form_state);
  ############## INCLUDE FROM PANOPOLY #####################
    // For some things there are no need
  // $form['apps_message']['#access'] = FALSE;
  // $form['apps_fieldset']['apps']['#title'] = NULL;

  // Improve style of apps selection form
  // if (isset($form['apps_fieldset'])) {
  //   $manifest = apps_manifest(apps_servers('panopoly'));
  //   foreach ($manifest['apps'] as $name => $app) {
  //     if ($name != '#theme') {
  //       $form['apps_fieldset']['apps']['#options'][$name] = '<strong>' . $app['name'] . '</strong><p><div class="admin-options"><div class="form-item">' . theme('image', array('path' => $app['logo']['path'], 'height' => '32', 'width' => '32')) . '</div>' . $app['description'] . '</div></p>';
  //     }
  //   }
  // }

  // Remove the demo content selection option since this is handled through the Panopoly demo module.
  // $form['default_content_fieldset']['#access'] = FALSE;
  // ########### END PANOPOLY ################
}

/**
 * Implements hook_form_FORM_ID_alter()
 */
function collabco_form_panopoly_theme_selection_form_alter(&$form, &$form_state, $form_id) {
  // change the default theme in the selection form
  // unset($form['theme_wrapper']['theme']['#options']['radix']);
  // unset($form['theme_wrapper']['theme']['#options']['radix_starter']);
  // $form['theme_wrapper']['theme']['#default_value'] = 'oa_radix';
}

