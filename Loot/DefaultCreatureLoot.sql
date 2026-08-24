-- --------------------------------------
-- Default Creature Loot
-- --------------------------------------
-- Applies to every creature that has no loot table of its own (creatureId 0 is the fallback).
-- Deleting the loot table cascades into `creature_loot` and `loot_table_entry`, so this file can be reapplied.
-- --------------------------------------
DELETE FROM `loot_table` WHERE `id` = 1;

INSERT INTO `loot_table` (`id`, `description`) VALUES
    (1, 'Default creature currency');

INSERT INTO `creature_loot` (`creatureId`, `lootTableId`) VALUES
    (0, 1);

-- type 2 = Cash, itemId 1 = Credits.
-- Approximation rather than an observed value: retail credit drops scale with creature level, which this
-- schema cannot express yet. Revisit once loot tables can be selected per level band.
INSERT INTO `loot_table_entry`
    (`lootTableId`, `type`, `itemId`, `minAmount`, `maxAmount`, `chance`, `groupId`, `source`, `sourceVersion`, `observedDrops`, `observedAttempts`) VALUES
    (1, 2, 1, 5, 15, 1000000, 0, 'https://github.com/Bezgelor/bezgelor/blob/52ea15500a5fcba71a5ad1b566f8ad0e9e0b0083/apps/bezgelor_data/priv/data/loot_tables.json', 'community-emulator approximation', NULL, NULL);
