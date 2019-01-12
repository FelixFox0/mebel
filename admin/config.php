<?php
$server_document_root = $_SERVER['DOCUMENT_ROOT'];
$http_host = $_SERVER['HTTP_X_ORIGINAL_HOST'] ? $_SERVER['HTTP_X_ORIGINAL_HOST'] : $_SERVER['HTTP_HOST'];

// HTTP
define('HTTP_SERVER', 'http://'.$http_host.'/admin/');
define('HTTP_CATALOG', 'http://'.$http_host.'/');

// HTTPS
define('HTTPS_SERVER', 'http://'.$http_host.'/admin/');
define('HTTPS_CATALOG', 'http://'.$http_host.'/');

// DIR
define('DIR_APPLICATION', $server_document_root.'/admin/');
define('DIR_SYSTEM', $server_document_root.'/system/');
define('DIR_IMAGE', $server_document_root.'/image/');
define('DIR_LANGUAGE', $server_document_root.'/admin/language/');
define('DIR_TEMPLATE', $server_document_root.'/admin/view/template/');
define('DIR_CONFIG', $server_document_root.'/system/config/');
define('DIR_CACHE', $server_document_root.'/system/storage/cache/');
define('DIR_DOWNLOAD', $server_document_root.'/system/storage/download/');
define('DIR_LOGS', $server_document_root.'/system/storage/logs/');
define('DIR_MODIFICATION', $server_document_root.'/system/storage/modification/');
define('DIR_UPLOAD', $server_document_root.'/system/storage/upload/');
define('DIR_CATALOG', $server_document_root.'/catalog/');

// DB
define('DB_DRIVER', 'mysqli');

define('DB_HOSTNAME', 'dn333442.mysql.tools');
define('DB_USERNAME', 'dn333442_mebel');
define('DB_PASSWORD', '1hV8p;!eE6');

//define('DB_HOSTNAME', '94.130.104.114');
//define('DB_USERNAME', 'mebel');
//define('DB_PASSWORD', 'HTURy2aSnpNs!$');

define('DB_DATABASE', 'dn333442_mebel');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');
