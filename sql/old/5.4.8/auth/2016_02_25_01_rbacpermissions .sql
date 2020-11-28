DELETE FROM `rbac_permissions` WHERE `id` IN (803, 804);
INSERT INTO `rbac_permissions` (`id`, `name`) VALUES
(803, 'Command: .reload bmauctions'),
(804, 'Command: .reload blackmarket_template');

DELETE FROM `rbac_linked_permissions` WHERE `id` = 196 AND `linkedId` IN (803, 804);
INSERT INTO `rbac_linked_permissions` (`id`, `linkedId`) VALUES
(196, 803),
(196, 804);
