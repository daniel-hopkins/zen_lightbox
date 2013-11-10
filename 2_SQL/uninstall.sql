/**
 * Zen Lightbox
 *
 * @author Alex Clarke (aclarke@ansellandclarke.co.uk)
 * @copyright Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: uninstall.sql 2008-12-17 aclarke $
 */

DELETE FROM `configuration` WHERE `configuration_key` LIKE 'ZEN_LIGHTBOX_%';
DELETE FROM `configuration_group` WHERE `configuration_group_title` = 'Zen Lightbox';
DELETE FROM `admin_pages` WHERE `language_key` = 'BOX_CONFIGURATION_ZEN_LIGHTBOX';