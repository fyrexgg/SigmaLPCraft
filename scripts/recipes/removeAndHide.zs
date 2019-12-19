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

    //Biomes O'Plenty
    <biomesoplenty:blue_dye>,
    <biomesoplenty:brown_dye>,
    <biomesoplenty:green_dye>,
    <biomesoplenty:white_dye>,
    <biomesoplenty:black_dye>,

    //Extended Crafing
    <extendedcrafting:handheld_table>,

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