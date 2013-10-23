<?php
/**
 * @file
 * collabco_groups_feature.features.og_features_permission.inc
 */

/**
 * Implements hook_og_features_default_permissions().
 */
function collabco_groups_feature_og_features_default_permissions() {
  $permissions = array();

  // Exported og permission: 'node:closed_group:add user'
  $permissions['node:closed_group:add user'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:closed_group:administer group'
  $permissions['node:closed_group:administer group'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:closed_group:approve and deny subscription'
  $permissions['node:closed_group:approve and deny subscription'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:closed_group:create basic_page content'
  $permissions['node:closed_group:create basic_page content'] = array(
    'roles' => array(),
  );

  // Exported og permission: 'node:closed_group:delete any basic_page content'
  $permissions['node:closed_group:delete any basic_page content'] = array(
    'roles' => array(),
  );

  // Exported og permission: 'node:closed_group:delete own basic_page content'
  $permissions['node:closed_group:delete own basic_page content'] = array(
    'roles' => array(),
  );

  // Exported og permission: 'node:closed_group:manage members'
  $permissions['node:closed_group:manage members'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:closed_group:manage permissions'
  $permissions['node:closed_group:manage permissions'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:closed_group:manage roles'
  $permissions['node:closed_group:manage roles'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:closed_group:subscribe'
  $permissions['node:closed_group:subscribe'] = array(
    'roles' => array(
      'non-member' => 'non-member',
    ),
  );

  // Exported og permission: 'node:closed_group:subscribe without approval'
  $permissions['node:closed_group:subscribe without approval'] = array(
    'roles' => array(),
  );

  // Exported og permission: 'node:closed_group:unsubscribe'
  $permissions['node:closed_group:unsubscribe'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
      'member' => 'member',
    ),
  );

  // Exported og permission: 'node:closed_group:update any basic_page content'
  $permissions['node:closed_group:update any basic_page content'] = array(
    'roles' => array(),
  );

  // Exported og permission: 'node:closed_group:update group'
  $permissions['node:closed_group:update group'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:closed_group:update own basic_page content'
  $permissions['node:closed_group:update own basic_page content'] = array(
    'roles' => array(),
  );

  // Exported og permission: 'node:group:add user'
  $permissions['node:group:add user'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:group:administer group'
  $permissions['node:group:administer group'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:group:approve and deny subscription'
  $permissions['node:group:approve and deny subscription'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:group:create basic_page content'
  $permissions['node:group:create basic_page content'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:group:delete any basic_page content'
  $permissions['node:group:delete any basic_page content'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:group:delete own basic_page content'
  $permissions['node:group:delete own basic_page content'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:group:manage members'
  $permissions['node:group:manage members'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:group:manage permissions'
  $permissions['node:group:manage permissions'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:group:manage roles'
  $permissions['node:group:manage roles'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:group:subscribe'
  $permissions['node:group:subscribe'] = array(
    'roles' => array(),
  );

  // Exported og permission: 'node:group:subscribe without approval'
  $permissions['node:group:subscribe without approval'] = array(
    'roles' => array(),
  );

  // Exported og permission: 'node:group:unsubscribe'
  $permissions['node:group:unsubscribe'] = array(
    'roles' => array(
      'member' => 'member',
    ),
  );

  // Exported og permission: 'node:group:update any basic_page content'
  $permissions['node:group:update any basic_page content'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:group:update group'
  $permissions['node:group:update group'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  // Exported og permission: 'node:group:update own basic_page content'
  $permissions['node:group:update own basic_page content'] = array(
    'roles' => array(
      'administrator member' => 'administrator member',
    ),
  );

  return $permissions;
}
