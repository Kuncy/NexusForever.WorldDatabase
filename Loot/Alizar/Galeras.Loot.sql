-- --------------------------------------
-- Galeras Loot Dump
-- --------------------------------------
-- Loot tables for creatures spawned by Alizar/Galeras.sql.
-- Deleting a loot table cascades into `creature_loot` and `loot_table_entry`, so this file can be reapplied.
-- Chances are stored out of 1000000, so 441758 is 44.1758%.
-- --------------------------------------
DELETE FROM `loot_table` WHERE `id` IN (19349);

-- --------------------------------------
-- Whistlewind Skulker (19349)
-- --------------------------------------
-- Observed drops over 5666 recorded kills. type 0 = StaticItem.
SET @SOURCE = 'https://www.jabbithole.com/npcs/whistlewind-skulker-16';
SET @SOURCE_VERSION = 'launch';

INSERT INTO `loot_table` (`id`, `description`) VALUES
    (19349, 'Whistlewind Skulker observed drops');

INSERT INTO `creature_loot` (`creatureId`, `lootTableId`) VALUES
    (19349, 19349);

INSERT INTO `loot_table_entry`
    (`lootTableId`, `type`, `itemId`, `minAmount`, `maxAmount`, `chance`, `groupId`, `source`, `sourceVersion`, `observedDrops`, `observedAttempts`) VALUES
    (19349, 0,  7523, 1, 1, 441758, 0, @SOURCE, @SOURCE_VERSION, 2503, 5666),
    (19349, 0, 14279, 1, 1, 125309, 0, @SOURCE, @SOURCE_VERSION,  710, 5666),
    (19349, 0, 14235, 1, 1,  68126, 0, @SOURCE, @SOURCE_VERSION,  386, 5666),
    (19349, 0, 14236, 1, 1,  59125, 0, @SOURCE, @SOURCE_VERSION,  335, 5666),
    (19349, 0, 42996, 1, 1,  24356, 0, @SOURCE, @SOURCE_VERSION,  138, 5666),
    (19349, 0, 42995, 1, 1,  18002, 0, @SOURCE, @SOURCE_VERSION,  102, 5666),
    (19349, 0, 14247, 1, 1,   3883, 0, @SOURCE, @SOURCE_VERSION,   22, 5666),
    (19349, 0, 14246, 1, 1,   3706, 0, @SOURCE, @SOURCE_VERSION,   21, 5666);
