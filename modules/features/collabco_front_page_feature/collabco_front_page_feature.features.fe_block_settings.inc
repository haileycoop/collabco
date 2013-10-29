<?php
/**
 * @file
 * collabco_front_page_feature.features.fe_block_settings.inc
 */

/**
 * Implements hook_default_fe_block_settings().
 */
function collabco_front_page_feature_default_fe_block_settings() {
  $export = array();

  $export['version'] = '2.0';

  $export['block-front_image'] = array(
    'cache' => -1,
    'css_class' => 'nobordershadow paddingreset',
    'custom' => 0,
    'machine_name' => 'front_image',
    'module' => 'block',
    'node_types' => array(),
    'pages' => '<front>',
    'roles' => array(
      'anonymous user' => 1,
      'authenticated user' => 2,
    ),
    'themes' => array(
      'custom_theme' => array(
        'region' => 'content_top',
        'status' => 1,
        'theme' => 'custom_theme',
        'weight' => -28,
      ),
      'seven' => array(
        'region' => '',
        'status' => 0,
        'theme' => 'seven',
        'weight' => 0,
      ),
    ),
    'title' => '',
    'visibility' => 1,
  );

  $export['views-site_changes_message-block'] = array(
    'cache' => -1,
    'css_class' => 'sidetheme',
    'custom' => 0,
    'delta' => 'site_changes_message-block',
    'module' => 'views',
    'node_types' => array(),
    'pages' => 'group/*
group
services',
    'roles' => array(
      'authenticated user' => 2,
    ),
    'themes' => array(
      'custom_theme' => array(
        'region' => 'sidebar_second',
        'status' => 1,
        'theme' => 'custom_theme',
        'weight' => -28,
      ),
      'seven' => array(
        'region' => '',
        'status' => 0,
        'theme' => 'seven',
        'weight' => 0,
      ),
    ),
    'title' => 'New Features!',
    'visibility' => 0,
  );

  return $export;
}
