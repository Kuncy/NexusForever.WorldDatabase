## Loot Data

Creature loot tables for the `loot_table`, `loot_table_entry` and `creature_loot` tables. The schema itself lives in
the main repository; only the content is here, the same split the entity data uses.

### Layout

* `DefaultCreatureLoot.sql` — the fallback loot applied to every creature without a table of its own
  (`creatureId` 0).
* `<Continent>/<Zone>.Loot.sql` — loot for the creatures spawned by the matching entity dump, e.g.
  `Alizar/Galeras.Loot.sql` covers the creatures in `Alizar/Galeras.sql` at the repository root.

A creature is listed in the zone where it is spawned. When the same creature appears in several zones, keep it in the
file for the zone it belongs to thematically and do not duplicate the table.

The `.Loot` suffix is not decoration: the importer (`WorldDatabaseHostedService`) tracks applied files by bare file
name, not by relative path, so a `Loot/Alizar/Galeras.sql` would collide with the entity dump `Alizar/Galeras.sql`.
Keep every file name in this repository unique.

### Reapplying

Each file deletes the loot tables it owns before inserting them again. The foreign keys from `creature_loot` and
`loot_table_entry` cascade, so deleting the `loot_table` row is enough. Run a file as often as you like.

`loot_table_entry.id` is auto-increment and deliberately not written by these dumps; the id is a runtime handle and
is never persisted anywhere else.

### Conventions

* `chance` is out of 1000000, so `441758` means 44.1758%.
* `type` matches `LootItemType`: `0` = StaticItem, `2` = Cash.
* `groupId` `0` means the entry rolls independently. Entries sharing a non-zero `groupId` are mutually exclusive and
  their chances must not add up to more than 1000000; whatever is left over is the chance of the group dropping
  nothing.
* `source` and `sourceVersion` are mandatory in practice: record where a number came from. Use the page or file URL
  and the data set it describes (`launch`, `Drop 6 - Reloaded`, `community-emulator approximation`, …).
* Record `observedDrops` and `observedAttempts` whenever the source publishes a sample size. The server logs a
  warning when the stored `chance` disagrees with what those two numbers imply, which is how a bad transcription
  gets caught. Leave both `NULL` for estimates rather than inventing a sample.
* Item ids must exist in `Item2.tbl` for the build being served (16042). The server refuses to start on an unknown
  item id, so validate before committing.

### Zone importer

Reviewed source manifests live in `Loot/Sources`. Unlike the generated SQL, these JSON files are not executed by the
world database migration service. They document every creature id found in a zone dump, including explicit reasons
for NPCs and objects that must not receive loot.

Generate and validate a manifest with the importer from the main NexusForever repository:

```powershell
dotnet run --project Tools/NexusForever.LootImporter -- generate `
  --manifest ..\NexusForever.WorldDatabase\Loot\Sources\CrimsonIsle.json `
  --table-path ..\server-data\tbl
```

Generation fails if zone coverage is incomplete, a source chance disagrees with its observations, an item or
creature id is absent from build 16042, or a probability group exceeds 100%. `Loot/Olyssia/CrimsonIsle.Loot.sql` is
the generated output for the Dominion starting zone.
