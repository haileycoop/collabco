<?php
/**
 * @file
 * collabco_front_page_feature.features.fe_block_boxes.inc
 */

/**
 * Implements hook_default_fe_block_boxes().
 */
function collabco_front_page_feature_default_fe_block_boxes() {
  $export = array();

  $fe_block_boxes = new stdClass();
  $fe_block_boxes->info = 'Front Image';
  $fe_block_boxes->format = 'php_code';
  $fe_block_boxes->machine_name = 'front_image';
  $fe_block_boxes->body = '<img src="http://example.com/header.jpg" />';

  $export['front_image'] = $fe_block_boxes;

  return $export;
}
