/*
    This script handles the lootables for chests and other loot in the world.

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import mods.ltt.LootTable;

function init() {
    //Remove Minecraft Items from LootTables
    LootTable.removeGlobalItem("minecraft:iron_ingot");
    LootTable.removeGlobalItem("minecraft:gold_ingot");
    LootTable.removeGlobalItem("minecraft:diamond");
    LootTable.removeGlobalItem("minecraft:emerald");
    LootTable.removeGlobalItem("minecraft:blaze_powder");
    LootTable.removeGlobalItem("minecraft:bucket");
    LootTable.removeGlobalItem("minecraft:water_bucket");
    LootTable.removeGlobalItem("minecraft:iron_nugget");

    //Remove all Botania items from LootTables
    LootTable.removeModTable("botania");

    //Remove all EnderIO items from LootTables
    LootTable.removeModTable("enderio");

    //Remove Black Quartz from LootTables
    LootTable.removeGlobalItem("actuallyadditions:item_misc:5");
}