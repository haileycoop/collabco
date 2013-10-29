<?php
/**
 * @file
 * collabco_groups_feature.context.inc
 */

/**
 * Implements hook_context_default_contexts().
 */
function collabco_groups_feature_context_default_contexts() {
  $export = array();

  $context = new stdClass();
  $context->disabled = FALSE; /* Edit this to true to make a default context disabled initially */
  $context->api_version = 3;
  $context->name = 'group';
  $context->description = 'Context for content in a closed group or the group page itself.';
  $context->tag = '';
  $context->conditions = array(
    'context_og_condition_group_type' => array(
      'values' => array(
        'closed_group' => 'closed_group',
      ),
      'options' => array(
        'node_form' => 1,
      ),
    ),
  );
  $context->reactions = array(
    'block' => array(
      'blocks' => array(
        'views-group_users-block' => array(
          'module' => 'views',
          'delta' => 'group_users-block',
          'region' => 'sidebar_second',
          'weight' => '-10',
        ),
      ),
    ),
  );
  $context->condition_mode = 0;

  // Translatables
  // Included for use with string extractors like potx.
  t('Context for content in a closed group or the group page itself.');
  $export['group'] = $context;

  return $export;
}
