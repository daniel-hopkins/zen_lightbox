/**
 * Zen Lightbox
 *
 * @author Daniel Hopkins (daniel [dot] niestudio [at] gmail [dot] com)
 * @copyright Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: upgrade.sql 2011-01-21 aclarke $
 */
 
 SELECT @cgi := `configuration_group_id` FROM `configuration_group` WHERE `configuration_group_title` = 'Zen Lightbox';
 INSERT INTO `configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
 (NULL, 'Always show Prev / Next', 'ZEN_LIGHTBOX_PREV_NEXT', 'false', '<br />If true, the lightbox will always show Previous & Next buttons when using additional images. NOTE: This setting will be overwritten automatically when Close on Image Click is set to TRUE.<br /><br /><b>Default: false</b>', @cgi, 112, NOW(), NOW(), NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');


/*
zencart 1.5 mods
*/
INSERT INTO `admin_pages` (`page_key` ,`language_key` ,`main_page` ,`page_params` ,`menu_key` ,`display_on_menu` ,`sort_order`)VALUES 
('configZenLightbox', 'BOX_CONFIGURATION_ZEN_LIGHTBOX', 'FILENAME_CONFIGURATION', CONCAT('gID=',@cgi), 'configuration', 'Y', @cgi);
