-- --------------------------------------
-- Crimson Isle Loot Dump
-- --------------------------------------
-- Generated from CrimsonIsle.sql and 9 source table(s).
-- Every spawned creature id is explicitly assigned or documented as intentionally lootless in the source manifest.
-- Reapplying is safe: deleting the owned loot tables cascades to assignments and entries.
-- --------------------------------------
DELETE FROM `loot_table` WHERE `id` IN (870001, 870010, 870011, 870012, 870020, 870021, 870022, 870040, 870041);

-- --------------------------------------
-- Crimson Isle wildlife - small approximation (870001)
-- --------------------------------------
SET @SOURCE = 'https://github.com/Bezgelor/bezgelor/blob/52ea15500a5fcba71a5ad1b566f8ad0e9e0b0083/apps/bezgelor_data/priv/data/loot_tables.json';
SET @SOURCE_VERSION = 'approximation; grouped tuning 2026-08-24';

INSERT INTO `loot_table` (`id`, `description`) VALUES
    (870001, 'Crimson Isle wildlife - small approximation');

INSERT INTO `creature_loot` (`creatureId`, `lootTableId`) VALUES
    (24058, 870001); -- Bloodstone Oxian

INSERT INTO `loot_table_entry`
    (`lootTableId`, `type`, `itemId`, `minAmount`, `maxAmount`, `chance`, `groupId`, `source`, `sourceVersion`, `observedDrops`, `observedAttempts`) VALUES
    (870001, 0, 7540, 1, 1, 130000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870001, 0, 7312, 1, 1, 130000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870001, 0, 7750, 1, 1, 130000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870001, 0, 178, 1, 1, 40000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870001, 0, 613, 1, 1, 40000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870001, 0, 7651, 1, 1, 65000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870001, 0, 7579, 1, 1, 65000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL);

-- --------------------------------------
-- Crimson Isle humanoid - common approximation (870010)
-- --------------------------------------
SET @SOURCE = 'https://github.com/Bezgelor/bezgelor/blob/52ea15500a5fcba71a5ad1b566f8ad0e9e0b0083/apps/bezgelor_data/priv/data/loot_tables.json';
SET @SOURCE_VERSION = 'approximation; grouped tuning 2026-08-24';

INSERT INTO `loot_table` (`id`, `description`) VALUES
    (870010, 'Crimson Isle humanoid - common approximation');

INSERT INTO `creature_loot` (`creatureId`, `lootTableId`) VALUES
    (26304, 870010), -- Rockhorde Savager
    (33340, 870010); -- Crimson Bonepicker

INSERT INTO `loot_table_entry`
    (`lootTableId`, `type`, `itemId`, `minAmount`, `maxAmount`, `chance`, `groupId`, `source`, `sourceVersion`, `observedDrops`, `observedAttempts`) VALUES
    (870010, 0, 8203, 1, 1, 160000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870010, 0, 8070, 1, 1, 160000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870010, 0, 47710, 1, 1, 160000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870010, 0, 4868, 1, 1, 60000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870010, 0, 584, 1, 1, 60000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL);

-- --------------------------------------
-- Crimson Isle humanoid - soldier approximation (870011)
-- --------------------------------------
SET @SOURCE = 'https://github.com/Bezgelor/bezgelor/blob/52ea15500a5fcba71a5ad1b566f8ad0e9e0b0083/apps/bezgelor_data/priv/data/loot_tables.json';
SET @SOURCE_VERSION = 'approximation; grouped tuning 2026-08-24';

INSERT INTO `loot_table` (`id`, `description`) VALUES
    (870011, 'Crimson Isle humanoid - soldier approximation');

INSERT INTO `creature_loot` (`creatureId`, `lootTableId`) VALUES
    (24140, 870011), -- Scarhide Raider
    (24141, 870011), -- Scarhide Beastmaster
    (24216, 870011); -- Scarhide Farstriker

INSERT INTO `loot_table_entry`
    (`lootTableId`, `type`, `itemId`, `minAmount`, `maxAmount`, `chance`, `groupId`, `source`, `sourceVersion`, `observedDrops`, `observedAttempts`) VALUES
    (870011, 0, 29572, 1, 1, 130000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870011, 0, 38640, 1, 1, 130000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870011, 0, 7603, 1, 1, 130000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870011, 0, 8213, 1, 1, 130000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870011, 0, 584, 1, 1, 65000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870011, 0, 4868, 1, 1, 65000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL);

-- --------------------------------------
-- Crimson Isle humanoid - elite approximation (870012)
-- --------------------------------------
SET @SOURCE = 'https://github.com/Bezgelor/bezgelor/blob/52ea15500a5fcba71a5ad1b566f8ad0e9e0b0083/apps/bezgelor_data/priv/data/loot_tables.json';
SET @SOURCE_VERSION = 'approximation; grouped tuning 2026-08-24';

INSERT INTO `loot_table` (`id`, `description`) VALUES
    (870012, 'Crimson Isle humanoid - elite approximation');

INSERT INTO `creature_loot` (`creatureId`, `lootTableId`) VALUES
    (24244, 870012), -- Dreg Abomination
    (24425, 870012); -- Scarhide Chief

INSERT INTO `loot_table_entry`
    (`lootTableId`, `type`, `itemId`, `minAmount`, `maxAmount`, `chance`, `groupId`, `source`, `sourceVersion`, `observedDrops`, `observedAttempts`) VALUES
    (870012, 0, 47713, 1, 1, 140000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870012, 0, 47712, 1, 1, 140000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870012, 0, 8206, 1, 1, 140000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870012, 0, 47683, 1, 1, 140000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870012, 0, 7680, 1, 1, 140000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870012, 0, 584, 1, 1, 100000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870012, 0, 4868, 1, 1, 100000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870012, 0, 85166, 1, 1, 50000, 0, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870012, 0, 85174, 1, 1, 50000, 0, @SOURCE, @SOURCE_VERSION, NULL, NULL);

-- --------------------------------------
-- Crimson Isle mechanical - basic approximation (870020)
-- --------------------------------------
SET @SOURCE = 'https://github.com/Bezgelor/bezgelor/blob/52ea15500a5fcba71a5ad1b566f8ad0e9e0b0083/apps/bezgelor_data/priv/data/loot_tables.json';
SET @SOURCE_VERSION = 'approximation; grouped tuning 2026-08-24';

INSERT INTO `loot_table` (`id`, `description`) VALUES
    (870020, 'Crimson Isle mechanical - basic approximation');

INSERT INTO `creature_loot` (`creatureId`, `lootTableId`) VALUES
    (24046, 870020), -- Megatech Scientist
    (24077, 870020), -- Megatech Scientist
    (24156, 870020), -- Megatech Scientist
    (25676, 870020); -- Megatech Hound

INSERT INTO `loot_table_entry`
    (`lootTableId`, `type`, `itemId`, `minAmount`, `maxAmount`, `chance`, `groupId`, `source`, `sourceVersion`, `observedDrops`, `observedAttempts`) VALUES
    (870020, 0, 7879, 1, 1, 160000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870020, 0, 8116, 1, 1, 160000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870020, 0, 7946, 1, 1, 160000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870020, 0, 1175, 1, 1, 60000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870020, 0, 182, 1, 1, 60000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL);

-- --------------------------------------
-- Crimson Isle mechanical - advanced approximation (870021)
-- --------------------------------------
SET @SOURCE = 'https://github.com/Bezgelor/bezgelor/blob/52ea15500a5fcba71a5ad1b566f8ad0e9e0b0083/apps/bezgelor_data/priv/data/loot_tables.json';
SET @SOURCE_VERSION = 'approximation; grouped tuning 2026-08-24';

INSERT INTO `loot_table` (`id`, `description`) VALUES
    (870021, 'Crimson Isle mechanical - advanced approximation');

INSERT INTO `creature_loot` (`creatureId`, `lootTableId`) VALUES
    (24029, 870021), -- Megatech Trooper
    (24030, 870021), -- Megatech Gunner
    (24078, 870021), -- Megatech Trooper
    (24099, 870021), -- Megatech Battlebot
    (25677, 870021), -- Megatech Houndmaster
    (25936, 870021); -- Megatech Battlebot

INSERT INTO `loot_table_entry`
    (`lootTableId`, `type`, `itemId`, `minAmount`, `maxAmount`, `chance`, `groupId`, `source`, `sourceVersion`, `observedDrops`, `observedAttempts`) VALUES
    (870021, 0, 38675, 1, 1, 120000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870021, 0, 16012, 1, 1, 120000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870021, 0, 7952, 1, 1, 120000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870021, 0, 8163, 1, 1, 120000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870021, 0, 182, 1, 1, 55000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870021, 0, 183, 1, 1, 55000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870021, 0, 1175, 1, 1, 55000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL);

-- --------------------------------------
-- Crimson Isle mechanical - elite approximation (870022)
-- --------------------------------------
SET @SOURCE = 'https://github.com/Bezgelor/bezgelor/blob/52ea15500a5fcba71a5ad1b566f8ad0e9e0b0083/apps/bezgelor_data/priv/data/loot_tables.json';
SET @SOURCE_VERSION = 'approximation; grouped tuning 2026-08-24';

INSERT INTO `loot_table` (`id`, `description`) VALUES
    (870022, 'Crimson Isle mechanical - elite approximation');

INSERT INTO `creature_loot` (`creatureId`, `lootTableId`) VALUES
    (31792, 870022); -- Megatech Warbot

INSERT INTO `loot_table_entry`
    (`lootTableId`, `type`, `itemId`, `minAmount`, `maxAmount`, `chance`, `groupId`, `source`, `sourceVersion`, `observedDrops`, `observedAttempts`) VALUES
    (870022, 0, 7764, 1, 1, 110000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870022, 0, 7952, 1, 1, 110000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870022, 0, 47666, 1, 1, 110000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870022, 0, 8117, 1, 1, 110000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870022, 0, 38675, 1, 1, 110000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870022, 0, 1175, 1, 1, 100000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870022, 0, 182, 1, 1, 100000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870022, 0, 181, 1, 1, 100000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870022, 0, 183, 1, 1, 100000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870022, 0, 42677, 1, 1, 50000, 0, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870022, 0, 84849, 1, 1, 50000, 0, @SOURCE, @SOURCE_VERSION, NULL, NULL);

-- --------------------------------------
-- Crimson Isle insect - small approximation (870040)
-- --------------------------------------
SET @SOURCE = 'https://github.com/Bezgelor/bezgelor/blob/52ea15500a5fcba71a5ad1b566f8ad0e9e0b0083/apps/bezgelor_data/priv/data/loot_tables.json';
SET @SOURCE_VERSION = 'approximation; grouped tuning 2026-08-24';

INSERT INTO `loot_table` (`id`, `description`) VALUES
    (870040, 'Crimson Isle insect - small approximation');

INSERT INTO `creature_loot` (`creatureId`, `lootTableId`) VALUES
    (24051, 870040), -- Venombite Hatchling
    (25029, 870040); -- Scrab Corpse Feeder

INSERT INTO `loot_table_entry`
    (`lootTableId`, `type`, `itemId`, `minAmount`, `maxAmount`, `chance`, `groupId`, `source`, `sourceVersion`, `observedDrops`, `observedAttempts`) VALUES
    (870040, 0, 7853, 1, 1, 150000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870040, 0, 8177, 1, 1, 150000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870040, 0, 7802, 1, 1, 150000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870040, 0, 303, 1, 1, 100000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL);

-- --------------------------------------
-- Crimson Isle insect - large approximation (870041)
-- --------------------------------------
SET @SOURCE = 'https://github.com/Bezgelor/bezgelor/blob/52ea15500a5fcba71a5ad1b566f8ad0e9e0b0083/apps/bezgelor_data/priv/data/loot_tables.json';
SET @SOURCE_VERSION = 'approximation; grouped tuning 2026-08-24';

INSERT INTO `loot_table` (`id`, `description`) VALUES
    (870041, 'Crimson Isle insect - large approximation');

INSERT INTO `creature_loot` (`creatureId`, `lootTableId`) VALUES
    (24054, 870041), -- Scrab Striker
    (24056, 870041), -- Scarhide Scrab
    (24057, 870041), -- Venombite Spider
    (24059, 870041), -- Venombite Spider Queen
    (24364, 870041); -- Scrab Impaler

INSERT INTO `loot_table_entry`
    (`lootTableId`, `type`, `itemId`, `minAmount`, `maxAmount`, `chance`, `groupId`, `source`, `sourceVersion`, `observedDrops`, `observedAttempts`) VALUES
    (870041, 0, 8351, 1, 1, 120000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870041, 0, 8343, 1, 1, 120000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870041, 0, 8177, 1, 1, 120000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870041, 0, 8364, 1, 1, 120000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870041, 0, 305, 1, 1, 60000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL),
    (870041, 0, 303, 1, 1, 60000, 1, @SOURCE, @SOURCE_VERSION, NULL, NULL);

-- Intentionally lootless/non-combat zone entities are documented in the JSON source manifest.
