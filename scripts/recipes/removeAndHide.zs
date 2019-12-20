/*
    Recipe remove and hide script

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import crafttweaker.item.IIngredient;
import mods.jei.JEI;

static ingredientsArray as IIngredient[] = [
    //Aroma Biosphere
    <aroma1997sdimension:portalframesphere>,
    //Aroma dimension changer
    <aroma1997sdimension:dimensionchanger:1>, //Biosphere
    <aroma1997sdimension:dimensionchanger>, //Mining world

    //Actually Additions
    <actuallyadditions:item_misc:17>,
    <actuallyadditions:item_crafter_on_a_stick>,

    //Applied Energistics
    <appliedenergistics2:sky_compass>,
    <appliedenergistics2:certus_quartz_axe>,
    <appliedenergistics2:certus_quartz_hoe>,
    <appliedenergistics2:certus_quartz_spade>,
    <appliedenergistics2:certus_quartz_pickaxe>,
    <appliedenergistics2:certus_quartz_sword>,
    <appliedenergistics2:nether_quartz_axe>,
    <appliedenergistics2:nether_quartz_hoe>,
    <appliedenergistics2:nether_quartz_spade>,
    <appliedenergistics2:nether_quartz_pickaxe>,
    <appliedenergistics2:nether_quartz_sword>,

    //Biomes O'Plenty
    <biomesoplenty:blue_dye>,
    <biomesoplenty:brown_dye>,
    <biomesoplenty:green_dye>,
    <biomesoplenty:white_dye>,
    <biomesoplenty:black_dye>,

    //Cyclic
    <cyclicmagic:emerald_helmet>,
    <cyclicmagic:emerald_chestplate>,
    <cyclicmagic:emerald_leggings>,
    <cyclicmagic:emerald_boots>,
    <cyclicmagic:emerald_sword>,
    <cyclicmagic:emerald_pickaxe>,
    <cyclicmagic:emerald_axe>,
    <cyclicmagic:emerald_spade>,
    <cyclicmagic:emerald_hoe>,
    <cyclicmagic:purple_boots>,
    <cyclicmagic:purple_leggings>,
    <cyclicmagic:purple_chestplate>,
    <cyclicmagic:purple_helmet>,
    <cyclicmagic:crystal_pickaxe>,
    <cyclicmagic:crystal_axe>,
    <cyclicmagic:crystal_spade>,
    <cyclicmagic:crystal_hoe>,
    <cyclicmagic:crystal_sword>,
    <cyclicmagic:sword_weakness>,
    <cyclicmagic:sword_slowness>,
    <cyclicmagic:sword_ender>,
    <cyclicmagic:netherbrick_pickaxe>,
    <cyclicmagic:netherbrick_axe>,
    <cyclicmagic:netherbrick_spade>,
    <cyclicmagic:netherbrick_hoe>,
    <cyclicmagic:sandstone_pickaxe>,
    <cyclicmagic:sandstone_axe>,
    <cyclicmagic:sandstone_spade>,
    <cyclicmagic:sandstone_hoe>,
    <cyclicmagic:sandstone_sword>,

    //Extended Crafing
    <extendedcrafting:handheld_table>,

    //Plants
    <plants2:crystal_pickaxe>,
    <plants2:crystal_axe>,
    <plants2:crystal_shovel>,
    <plants2:crystal_hoe>,
    <plants2:crystal_sword>,
    <plants2:dark_crystal_pickaxe>,
    <plants2:dark_crystal_axe>,
    <plants2:dark_crystal_shovel>,
    <plants2:dark_crystal_hoe>,
    <plants2:dark_crystal_sword>,
    <plants2:generic:9>,
    
    //VotlzEngine Fluids module
    <vefluids:vebucket:1>,
    <vefluids:vebucket:2>,
    <vefluids:vebucket:3>,
    <vefluids:vebucket:4>,
    <vefluids:vebucket:5>,
    <vefluids:vebucket:6>,
    <vefluids:vebucket:30000>
];

function init() {
    for ingredient in ingredientsArray {
        JEI.removeAndHide(ingredient);
    }
}