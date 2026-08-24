-- --------------------------------------
-- Ruins of Kel Voreth - minimal playable dungeon population
-- World 1336, normal difficulty (level 25)
--
-- This is a hand-authored reconstruction based on safe WorldLocation2 points.
-- It restores hostile packs and the three normal-mode boss creatures. Encounter
-- scripting, doors, objectives, loot chests and boss-specific mechanics are not
-- part of this first population pass.
-- --------------------------------------
SET @WORLD = 1336;

-- Re-running this file replaces only the reconstructed Kel Voreth population.
DELETE FROM `entity` WHERE `world` = @WORLD;

-- Matching uses the world id as mapId. Team 0 is the shared dungeon entrance.
INSERT INTO `map_entrance` (`mapId`, `team`, `worldLocationId`)
VALUES (@WORLD, 0, 18557)
ON DUPLICATE KEY UPDATE `worldLocationId` = VALUES(`worldLocationId`);

SET @GUID = (SELECT IFNULL(MAX(`id`), 0) FROM `entity`);

-- --------------------------------------
-- The Blood Pit
-- --------------------------------------
INSERT INTO `entity`
    (`Id`, `Type`, `Creature`, `World`, `Area`, `X`, `Y`, `Z`, `RX`, `RY`, `RZ`, `DisplayInfo`, `OutfitInfo`, `Faction1`, `Faction2`)
VALUES
    -- First guard pack
    (@GUID+1,  0, 32727, @WORLD, 1662, 124.1, -880.9, 150.2,  2.90, 0, 0, 24732, 0, 691, 691),
    (@GUID+2,  0, 32606, @WORLD, 1662, 128.1, -880.9, 152.2,  3.10, 0, 0, 23275, 0, 691, 691),
    (@GUID+3,  0, 32614, @WORLD, 1662, 132.1, -880.9, 150.2, -2.90, 0, 0, 23348, 0, 691, 691),

    -- Upper pit packs
    (@GUID+4,  0, 51453, @WORLD, 1662, 191.4, -899.4, 225.7,  1.40, 0, 0, 23274, 0, 691, 691),
    (@GUID+5,  0, 32727, @WORLD, 1662, 195.4, -899.4, 229.7,  1.60, 0, 0, 24732, 0, 691, 691),
    (@GUID+6,  0, 32547, @WORLD, 1662, 199.4, -899.4, 225.7,  1.80, 0, 0, 23274, 0, 691, 691),
    (@GUID+7,  0, 32618, @WORLD, 1662, 249.4, -896.8, 279.8,  2.80, 0, 0, 23348, 0, 691, 691),
    (@GUID+8,  0, 32606, @WORLD, 1662, 253.4, -896.8, 283.8,  3.10, 0, 0, 23275, 0, 691, 691),
    (@GUID+9,  0, 32555, @WORLD, 1662, 257.4, -896.8, 279.8, -2.80, 0, 0, 23276, 0, 691, 691),
    (@GUID+10, 0, 32727, @WORLD, 1662, 331.7, -834.4, 361.1,  1.30, 0, 0, 24732, 0, 691, 691),
    (@GUID+11, 0, 51432, @WORLD, 1662, 335.7, -834.4, 365.1,  1.60, 0, 0, 23348, 0, 691, 691),
    (@GUID+12, 0, 32555, @WORLD, 1662, 339.7, -834.4, 361.1,  1.90, 0, 0, 23276, 0, 691, 691),

    -- Grond the Corpsemaker
    (@GUID+13, 0, 32534, @WORLD, 1662, 112.0, -873.8,  58.2,  0.00, 0, 0, 27715, 0, 691, 691),

-- --------------------------------------
-- Digsite: Scar
-- --------------------------------------
    (@GUID+14, 0, 32614, @WORLD, 1660, 471.0, -833.0, 383.5,  1.20, 0, 0, 23348, 0, 691, 691),
    (@GUID+15, 0, 32727, @WORLD, 1660, 475.0, -833.0, 387.5,  1.50, 0, 0, 24732, 0, 691, 691),
    (@GUID+16, 0, 51453, @WORLD, 1660, 479.0, -833.0, 383.5,  1.80, 0, 0, 23274, 0, 691, 691),
    (@GUID+17, 0, 32606, @WORLD, 1660, 803.4, -860.8, 426.0,  1.20, 0, 0, 23275, 0, 691, 691),
    (@GUID+18, 0, 32727, @WORLD, 1660, 807.4, -860.8, 430.0,  1.50, 0, 0, 24732, 0, 691, 691),
    (@GUID+19, 0, 32555, @WORLD, 1660, 811.4, -860.8, 426.0,  1.80, 0, 0, 23276, 0, 691, 691),
    (@GUID+20, 0, 32727, @WORLD, 1660, 714.5, -858.7, 719.6,  2.70, 0, 0, 24732, 0, 691, 691),
    (@GUID+21, 0, 32547, @WORLD, 1660, 718.5, -858.7, 723.6,  3.10, 0, 0, 23274, 0, 691, 691),
    (@GUID+22, 0, 32618, @WORLD, 1660, 722.5, -858.7, 719.6, -2.70, 0, 0, 23348, 0, 691, 691),
    (@GUID+23, 0, 51453, @WORLD, 1660, 608.3, -862.5, 684.5,  2.70, 0, 0, 23274, 0, 691, 691),
    (@GUID+24, 0, 32606, @WORLD, 1660, 612.3, -862.5, 688.5,  3.10, 0, 0, 23275, 0, 691, 691),
    (@GUID+25, 0, 32555, @WORLD, 1660, 616.3, -862.5, 684.5, -2.70, 0, 0, 23276, 0, 691, 691),
    (@GUID+26, 0, 32727, @WORLD, 1660, 479.7, -872.7, 930.4,  1.20, 0, 0, 24732, 0, 691, 691),
    (@GUID+27, 0, 51432, @WORLD, 1660, 483.7, -872.7, 934.4,  1.50, 0, 0, 23348, 0, 691, 691),
    (@GUID+28, 0, 32555, @WORLD, 1660, 487.7, -872.7, 930.4,  1.80, 0, 0, 23276, 0, 691, 691),

    -- Slavemaster Drokk
    (@GUID+29, 0, 32536, @WORLD, 4789, 595.0, -882.2, 955.5,  0.00, 0, 0, 27104, 0, 691, 691),

-- --------------------------------------
-- The Exanite Forges / The Exanite Forge
-- --------------------------------------
    (@GUID+30, 0, 32614, @WORLD, 1661, 397.9, -814.0, 609.1,  1.20, 0, 0, 23348, 0, 691, 691),
    (@GUID+31, 0, 32727, @WORLD, 1661, 401.9, -814.0, 613.1,  1.50, 0, 0, 24732, 0, 691, 691),
    (@GUID+32, 0, 51453, @WORLD, 1661, 405.9, -814.0, 609.1,  1.80, 0, 0, 23274, 0, 691, 691),
    (@GUID+33, 0, 32606, @WORLD, 1661, 333.0, -775.1, 712.2,  1.20, 0, 0, 23275, 0, 691, 691),
    (@GUID+34, 0, 32547, @WORLD, 1661, 337.0, -775.1, 716.2,  1.50, 0, 0, 23274, 0, 691, 691),
    (@GUID+35, 0, 32618, @WORLD, 1661, 341.0, -775.1, 712.2,  1.80, 0, 0, 23348, 0, 691, 691),
    (@GUID+36, 0, 32727, @WORLD, 1661, 188.5, -799.5, 776.2,  1.20, 0, 0, 24732, 0, 691, 691),
    (@GUID+37, 0, 51432, @WORLD, 1661, 192.5, -799.5, 780.2,  1.50, 0, 0, 23348, 0, 691, 691),
    (@GUID+38, 0, 32555, @WORLD, 1661, 196.5, -799.5, 776.2,  1.80, 0, 0, 23276, 0, 691, 691),
    (@GUID+39, 0, 32727, @WORLD, 4790, 108.4, -757.3, 872.2,  1.20, 0, 0, 24732, 0, 691, 691),
    (@GUID+40, 0, 32606, @WORLD, 4790, 112.4, -757.3, 876.2,  1.50, 0, 0, 23275, 0, 691, 691),
    (@GUID+41, 0, 32555, @WORLD, 4790, 116.4, -757.3, 872.2,  1.80, 0, 0, 23276, 0, 691, 691),
    (@GUID+42, 0, 32618, @WORLD, 4790, -19.8, -743.8, 892.3,  0.50, 0, 0, 23348, 0, 691, 691),
    (@GUID+43, 0, 32547, @WORLD, 4790,  -4.5, -741.5, 912.5,  0.20, 0, 0, 23274, 0, 691, 691),
    (@GUID+44, 0, 32555, @WORLD, 4790, -36.8, -738.9, 916.3, -0.50, 0, 0, 23276, 0, 691, 691),

    -- Forgemaster Trogun
    (@GUID+45, 0, 32531, @WORLD, 4790, -10.8, -737.1, 1006.9,  0.00, 0, 0, 29203, 0, 691, 691),

    -- Exit portal back to the physical Kel Voreth entrance in Auroria
    (@GUID+46, 14, 33528, @WORLD, 1662, 52.5, -854.3, 84.6, -0.78, 0, 0, 22237, 0, 219, 219);

-- The world server recalculates maximum health from level, archetype, tier and
-- difficulty. These initial unit stats mirror the minimum required by zone dumps.
INSERT INTO `entity_stats` (`Id`, `Stat`, `Value`)
SELECT e.`id`, s.`stat`, s.`value`
FROM `entity` e
CROSS JOIN (
    SELECT 0 AS `stat`, 1 AS `value`
    UNION ALL SELECT 10, 25
    UNION ALL SELECT 15, 0
    UNION ALL SELECT 20, 0
    UNION ALL SELECT 21, 0
    UNION ALL SELECT 22, 0
) s
WHERE e.`id` BETWEEN @GUID+1 AND @GUID+45;
