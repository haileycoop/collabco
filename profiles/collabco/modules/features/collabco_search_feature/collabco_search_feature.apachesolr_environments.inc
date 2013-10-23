<?php
/**
 * @file
 * collabco_search_feature.apachesolr_environments.inc
 */

/**
 * Implements hook_apachesolr_environments().
 */
function collabco_search_feature_apachesolr_environments() {
  $export = array();

  $environment = new stdClass();
  $environment->api_version = 1;
  $environment->env_id = 'solr';
  $environment->name = 'solr4';
  $environment->url = 'http://localhost:8080/solr4';
  $environment->service_class = '';
  $environment->conf = array(
    'apachesolr_index_last' => array(
      'comment' => array(
        'last_changed' => 0,
        'last_entity_id' => 0,
      ),
      'field_collection_item' => array(
        'last_changed' => 0,
        'last_entity_id' => 0,
      ),
      'mandrill_template_map' => array(
        'last_changed' => 0,
        'last_entity_id' => 0,
      ),
      'message_type_category' => array(
        'last_changed' => 0,
        'last_entity_id' => 0,
      ),
      'message_type' => array(
        'last_changed' => 0,
        'last_entity_id' => 0,
      ),
      'message' => array(
        'last_changed' => 0,
        'last_entity_id' => 0,
      ),
      'node' => array(
        'last_changed' => '1378956059',
        'last_entity_id' => '137',
      ),
      'og_membership_type' => array(
        'last_changed' => 0,
        'last_entity_id' => 0,
      ),
      'og_membership' => array(
        'last_changed' => 0,
        'last_entity_id' => 0,
      ),
      'profile2' => array(
        'last_changed' => 0,
        'last_entity_id' => 0,
      ),
      'profile2_type' => array(
        'last_changed' => 0,
        'last_entity_id' => 0,
      ),
      'file' => array(
        'last_changed' => 0,
        'last_entity_id' => 0,
      ),
      'taxonomy_term' => array(
        'last_changed' => 0,
        'last_entity_id' => 0,
      ),
      'taxonomy_vocabulary' => array(
        'last_changed' => 0,
        'last_entity_id' => 0,
      ),
      'user' => array(
        'last_changed' => 0,
        'last_entity_id' => 0,
      ),
    ),
    'apachesolr_index_updated' => 1378956517,
    'apachesolr_last_optimize' => 1378887929,
  );
  $environment->index_bundles = array(
    'node' => array(
      0 => 'basic_page',
      1 => 'closed_group',
      2 => 'conversation',
      3 => 'event',
      4 => 'group',
      5 => 'organisation',
      6 => 'service',
    ),
  );
  $export['solr'] = $environment;

  return $export;
}
